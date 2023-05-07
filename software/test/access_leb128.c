

#include <fcntl.h>
#include <getopt.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/ioctl.h>

#include "../xdma/cdev_sgdma.h"

#include "dma_utils.c"
#include <stdint.h>
#define DEVICE_NAME_DEFAULT "/dev/xdma0_c2h_0"
#define SIZE_DEFAULT (32)
#define COUNT_DEFAULT (1)

static struct option const long_opts[] = {
	{"device", required_argument, NULL, 'd'},
	{"address", required_argument, NULL, 'a'},
	{"aperture", required_argument, NULL, 'k'},
	{"size", required_argument, NULL, 's'},
	{"offset", required_argument, NULL, 'o'},
	{"count", required_argument, NULL, 'c'},
	{"file", required_argument, NULL, 'f'},
	{"eop_flush", no_argument, NULL, 'e'},
	{"help", no_argument, NULL, 'h'},
	{"verbose", no_argument, NULL, 'v'},
	{0, 0, 0, 0}
};

#if defined(__GNUC__) && (__GNUC__ >= 4)
#define ADB_memcpy(dst, src, size) __builtin_memcpy(dst, src, size)
#else
#define ADB_memcpy(dst, src, size) memcpy(dst, src, size)
#endif
int readDevice(char *devname, uint64_t addr, uint64_t aperture,
			uint64_t size, uint64_t offset, uint64_t count,uint8_t *outBuf)
{
	ssize_t rc = 0;
	size_t out_offset = 0;
	size_t bytes_done = 0;
	uint64_t i;
	char *buffer = NULL;
	char *allocated = NULL;
	struct timespec ts_start, ts_end;
	//int out_fd = -1;
	int fpga_fd;
	long total_time = 0;
	float result;
	float avg_time = 0;
	int underflow = 0;
    int eop_flush = 0;
	/*
	 * use O_TRUNC to indicate to the driver to flush the data up based on
	 * EOP (end-of-packet), streaming mode only
	 */
	if (eop_flush)
		fpga_fd = open(devname, O_RDWR | O_TRUNC);
	else
		fpga_fd = open(devname, O_RDWR);

	if (fpga_fd < 0) {
                fprintf(stderr, "unable to open device %s, %d.\n",
                        devname, fpga_fd);
		perror("open device");
                return 0;
        }

	/* create file to write data to */

	posix_memalign((void **)&allocated, 4096 /*alignment */ , size + 4096);
	if (!allocated) {
		fprintf(stderr, "OOM %lu.\n", size + 4096);
		rc = -ENOMEM;
		goto out;
	}

	buffer = allocated + offset;
	if (verbose)
	fprintf(stdout, "host buffer 0x%lx, %p.\n", size + 4096, buffer);
    
	for (i = 0; i < count; i++) {
		rc = clock_gettime(CLOCK_MONOTONIC, &ts_start);
		if (aperture) {
			struct xdma_aperture_ioctl io;

			io.buffer = (unsigned long)buffer;
			io.len = size;
			io.ep_addr = addr;
			io.aperture = aperture;
			io.done = 0UL;

			rc = ioctl(fpga_fd, IOCTL_XDMA_APERTURE_R, &io);
			if (rc < 0 || io.error) {
				fprintf(stderr,
					"#%d: aperture R failed %d,%d.\n",
					i, rc, io.error);
				goto out;
			}

			bytes_done = io.done;
		} else {
			rc = read_to_buffer(devname, fpga_fd, buffer, size, addr);
			if (rc < 0)
				goto out;
			bytes_done = rc;

		}
		clock_gettime(CLOCK_MONOTONIC, &ts_end);

		if (bytes_done < size) {
			fprintf(stderr, "#%d: underflow %ld/%ld.\n",
				i, bytes_done, size);
			underflow = 1;
		}

		/* subtract the start time from the end time */
		timespec_sub(&ts_end, &ts_start);
		total_time += ts_end.tv_nsec;
		/* a bit less accurate but side-effects are accounted for */
		if (verbose)
		fprintf(stdout,
			"#%lu: CLOCK_MONOTONIC %ld.%09ld sec. read %ld/%ld bytes\n",
			i, ts_end.tv_sec, ts_end.tv_nsec, bytes_done, size);

		if (outBuf) {
			/*rc = write_from_buffer(ofname, out_fd, buffer,
					 bytes_done, out_offset);*/
            ADB_memcpy(&outBuf[out_offset],buffer,bytes_done);
           // printf("read the following:");
			out_offset += bytes_done;
           // printf("%x,",ru[0]);
		}
	}

	if (!underflow) {
		avg_time = (float)total_time/(float)count;
		result = ((float)size)*1000/avg_time;
		if (verbose)
			printf("** Avg time device %s, total time %ld nsec, avg_time = %f, size = %lu, BW = %f \n",
				devname, total_time, avg_time, size, result);
		printf("%s ** Average BW = %lu, %f\n", devname, size, result);
		rc = 0;
	} else if (eop_flush) {
		/* allow underflow with -e option */
		rc = 0;
	} else 
		rc = -5;

out:
	close(fpga_fd);
    free(allocated);
	return rc;
}
int writeDevice(char *devname, uint64_t addr, uint64_t aperture,
		    uint64_t size, uint64_t offset, uint64_t count,
		    uint8_t *inBuf)
{
	uint64_t i;
	ssize_t rc;
	size_t bytes_done = 0;
	size_t out_offset = 0;
	char *buffer = NULL;
	char *allocated = NULL;
	struct timespec ts_start, ts_end;
	int fpga_fd = open(devname, O_RDWR);
	long total_time = 0;
	float result;
	float avg_time = 0;
	int underflow = 0;

	if (fpga_fd < 0) {
		fprintf(stderr, "unable to open device %s, %d.\n",
			devname, fpga_fd);
		perror("open device");
		return -22;
	}

	

	posix_memalign((void **)&allocated, 4096 /*alignment */ , size + 4096);
	if (!allocated) {
		fprintf(stderr, "OOM %lu.\n", size + 4096);
		rc = -12;
		goto out;
	}
	buffer = allocated + offset;
	/*if (verbose)
		fprintf(stdout, "host buffer 0x%lx = %p\n",
			size + 4096, buffer); */

	if (inBuf) {
		ADB_memcpy(buffer,inBuf,size);
	}

	for (i = 0; i < count; i++) {
		/* write buffer to AXI MM address using SGDMA */
		rc = clock_gettime(CLOCK_MONOTONIC, &ts_start);

		if (aperture) {
			struct xdma_aperture_ioctl io;

			io.buffer = (unsigned long)buffer;
			io.len = size;
			io.ep_addr = addr;
			io.aperture = aperture;
			io.done = 0UL;

			rc = ioctl(fpga_fd, IOCTL_XDMA_APERTURE_W, &io);
			if (rc < 0 || io.error) {
				/*fprintf(stdout,
					"#%d: aperture W ioctl failed %d,%d.\n",
					i, rc, io.error);*/
				goto out;
			}

			bytes_done = io.done;
		} else {
			rc = write_from_buffer(devname, fpga_fd, buffer, size,
				      	 	addr);
			if (rc < 0)
				goto out;

			bytes_done = rc;
		}

		rc = clock_gettime(CLOCK_MONOTONIC, &ts_end);

		if (bytes_done < size) {
			/*printf("#%d: underflow %ld/%ld.\n",
				i, bytes_done, size);*/
			underflow = 1;
		}

		/* subtract the start time from the end time */
		timespec_sub(&ts_end, &ts_start);
		total_time += ts_end.tv_nsec;
		/* a bit less accurate but side-effects are accounted for */
		if (verbose)
		fprintf(stdout,
			"#%lu: CLOCK_MONOTONIC %ld.%09ld sec. write %ld bytes\n",
			i, ts_end.tv_sec, ts_end.tv_nsec, size); 
			
		/*if (outfile_fd >= 0) {
			rc = write_from_buffer(ofname, outfile_fd, buffer,
						 bytes_done, out_offset);
			if (rc < 0 || rc < bytes_done)
				goto out;
			out_offset += bytes_done;
		}*/
	}

	if (!underflow) {
		avg_time = (float)total_time/(float)count;
		result = ((float)size)*1000/avg_time;
		if (verbose)
			printf("** Avg time device %s, total time %ld nsec, avg_time = %f, size = %lu, BW = %f \n",
			devname, total_time, avg_time, size, result);
		printf("%s ** Average BW = %lu, %f\n", devname, size, result);
	}

out:
	close(fpga_fd);
	free(allocated);

	if (rc < 0)
		return rc;
	/* treat underflow as error */
	return underflow ? -EIO : 0;
}


uint32_t testRunLeb128(uint64_t controlBase,uint32_t *in,uint8_t *out,uint32_t wordsLen)
{
	uint64_t devBaseIn=	0x80000000;
	uint64_t devBaseOut=0x81000000;
	uint32_t txCom[2];
	//write input to fpga ddr 
	writeDevice("/dev/xdma0_h2c_0",devBaseIn,0,wordsLen*sizeof(uint32_t),0,1,(uint8_t *)in);
	//write control registers
	uint64_t addrMsb,addrLsb;
	addrLsb=devBaseIn&0xffffffff;
	addrMsb=(devBaseIn>>32)&0xffffffff;
	txCom[0]=(uint32_t)addrLsb;
	txCom[1]=(uint32_t)addrMsb;
	//indata addr
	writeDevice("/dev/xdma0_h2c_0",controlBase+0x10,0,sizeof(uint32_t)*2,0,1,(uint8_t*)txCom);
	addrLsb=devBaseOut&0xffffffff;
	addrMsb=(devBaseOut>>32)&0xffffffff;
	txCom[0]=(uint32_t)addrLsb;
	txCom[1]=(uint32_t)addrMsb;
	//outdata addr
	writeDevice("/dev/xdma0_h2c_0",controlBase+0x1C,0,sizeof(uint32_t)*2,0,1,(uint8_t*)txCom);
	txCom[0]=(uint32_t)wordsLen;
	//wordsIn
    writeDevice("/dev/xdma0_h2c_0",controlBase+0x28,0,sizeof(uint32_t)*1,0,1,(uint8_t*)txCom);
	// send a start
	uint32_t cmdStart=0x7F;
	 writeDevice("/dev/xdma0_h2c_0",controlBase+0x0,0,sizeof(uint32_t),0,1,(uint8_t*)(&cmdStart));
	  readDevice("/dev/xdma0_c2h_0",controlBase+0x0,0,sizeof(uint32_t),0,1,(uint8_t*)(&cmdStart));
    while(cmdStart!=0x04)
    {   printf("%d\r\n",cmdStart);
        readDevice("/dev/xdma0_c2h_0",controlBase+0x0,0,sizeof(uint32_t),0,1,(uint8_t*)(&cmdStart));
    }
    readDevice("/dev/xdma0_c2h_0",controlBase+0x30,0,sizeof(uint32_t)*1,0,1,(uint8_t*)txCom);
	printf("done, %d bytes compressed into %d\r\n",wordsLen*4,txCom[0]);
    readDevice("/dev/xdma0_c2h_0",devBaseOut,0,txCom[0],0,1,(uint8_t *)out);
	return txCom[0];
}	
int main()
{
    
    uint32_t inData[4096];
	uint8_t outData[4096*4];
    uint32_t i;
	uint32_t inputWords=100;

	for(i=0;i<inputWords;i++)
	{
		inData[i]=i+0X7FFF;
	}
	uint32_t decomLen=testRunLeb128(0x00000000,inData,outData,inputWords);
	for(i=0;i<decomLen;i++)
	{
		printf("%d,%d\r\n",i,outData[i]);
	}
    return 0;
}
