
#include <ap_axi_sdata.h>
#include <ap_int.h>

typedef ap_axiu<32,1,1,1> data_t;

void leb128_compression(volatile ap_uint<32>* in_data,  ap_uint<8>* out_data,  ap_uint<32>* wordsIn,  ap_uint<32>* bytesOut) {
#pragma HLS INTERFACE m_axi port=in_data offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=out_data offset=slave bundle=gmem
#pragma HLS interface mode=s_axilite port=in_data bundle=CTRL_BUS
#pragma HLS interface mode=s_axilite port=out_data bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=wordsIn bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=bytesOut bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS


    ap_uint<32> words=*wordsIn;
    ap_uint<32> bytes=0;
    words=*wordsIn;
    // Read input data from AXI4 memory-mapped interface
    for (ap_uint<32> i = 0; i < words; i++) {
#pragma HLS PIPELINE
        ap_uint<32> d = in_data[i];
        ap_uint<8> tv;

        if(d==0)
        {
        	out_data[bytes]=0;
        	 bytes++;
        }
        else{ ap_uint<32> dShift=d>>7;
        	  while(d!=0)
        	       {
        	    	   tv=d&0x7f;
        	    	   if(dShift!=0)
        	    	   {
        	    		   tv=tv|0x80;
        	    	   }
        	    	   out_data[bytes]=tv;
        	    	   bytes++;
        	    	   d=dShift;
        	    	   dShift=d>>7;
        	       }
        }

    }
 *bytesOut=bytes;
}
void leb128_decompression(volatile ap_uint<8>* in_data,  ap_uint<32>* out_data,  ap_uint<32>* wordsOut,  ap_uint<32>* bytesIn) {
#pragma HLS INTERFACE m_axi port=in_data offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=out_data offset=slave bundle=gmem
#pragma HLS interface mode=s_axilite port=in_data bundle=CTRL_BUS
#pragma HLS interface mode=s_axilite port=out_data bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=wordsOut bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=bytesIn bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS


    ap_uint<32> words=0;
    ap_uint<32> bytes=*bytesIn;
    //words=*wordsIn;
    ap_uint<32> tv=0;
    ap_uint<8> idx=0;
    // Read input data from AXI4 memory-mapped interface
    for (ap_uint<32>  i = 0; i <bytes ; i++) {
#pragma HLS PIPELINE
    	 ap_uint<32> di;
        ap_uint<32> d = in_data[i];
        ap_uint<32> dAnd=d&0x7f;
        ap_uint<32> mask=0x80;
        switch(idx){
                	    case 1:
                	       di=(dAnd)<<7;
                	       break;
                	    case 2:
                	       di=(dAnd)<<14;
                	       break;
                	    case 3:
                	    	 di=(dAnd)<<21;
                	    	break;
                	    case 4:
                	    	di=(dAnd)<<28;
                	    	break;
                	    default :
                	       di=dAnd;
                	}
        tv=tv|di;
        if(d&0x80)
        {
        	idx++;
        }
        else
        {
        	 out_data[words]=tv;
        	 words++;
        	 tv=0;
        	 idx=0;
        }
        //printf("in byte %d,word %d, value=%d,di=%d,d=%d\r\n",i,words,tv,di,d);


    }
 *wordsOut=words;
}
