/*
 * Copyright 2021 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdio.h>

#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <vector>
using namespace std;

void leb128_compression(volatile ap_uint<32>* in_data,  ap_uint<8>* out_data,  ap_uint<32>* wordsIn,  ap_uint<32>* bytesOut);
void leb128_decompression(volatile ap_uint<8>* in_data,  ap_uint<32>* out_data,  ap_uint<32>* wordsOut,  ap_uint<32>* bytesIn);
int main() {
    // Define input and output vectors
    std::vector<ap_uint<32>> in_data;
    int allSize=10;
    for (int i = 0; i <= allSize; i++) {
        in_data.push_back(i+0x7f);
    }
    std::vector<ap_uint<8>> out_data(in_data.size() * 5);  // output is expected to be up to 5 times as long as input
    ap_uint<32> wordsIn = in_data.size();
    ap_uint<32> bytesOut = 0;
    ap_uint<32> decomSize = 0;
    std::vector<ap_uint<32>> ru_data(in_data.size() *2);  // output is expected to be up to 5 times as long as input
    // Call the compression function
    leb128_compression(in_data.data(), out_data.data(), &wordsIn, &bytesOut);

    // Print input and output data for verification
    cout << "compressed from "<<wordsIn*4<<" to"<<bytesOut << endl;
    /*for (size_t i = 0; i < in_data.size(); i++) {
        cout << dec << (unsigned int)in_data[i] << " ";
    }*/
    //cout << endl << endl;

    /*cout << "Output data:" << endl;
    for (size_t i = 0; i < bytesOut; i++) {
        cout << hex << (unsigned int)out_data[i] << " ";
    }*/
    leb128_decompression(out_data.data(), ru_data.data(), &decomSize, &bytesOut);
    cout << "de-compressed from "<<bytesOut<<" to"<<decomSize*4 << endl;
    cout << endl << endl;
    cout << "compressed" << endl;
    for (size_t i = 0; i < bytesOut; i++) {
            cout  << (unsigned int)out_data[i] << " ";
        }
    cout << endl << endl;
    cout << "de-compressed" <<(1<<7)<< endl;
    for (size_t i = 0; i < wordsIn; i++) {
               cout  << (unsigned int)ru_data[i] << " ";
           }
    return 0;
}

