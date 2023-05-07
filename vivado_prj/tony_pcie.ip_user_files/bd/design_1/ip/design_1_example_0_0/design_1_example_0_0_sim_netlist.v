// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sat Mar  4 21:01:47 2023
// Host        : MOSS running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tony/fpga/DEMO/k734_pcie_simple/K727_PCIE_XDMA.gen/sources_1/bd/design_1/ip/design_1_example_0_0/design_1_example_0_0_sim_netlist.v
// Design      : design_1_example_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_example_0_0,example,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "example,Vivado 2022.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_example_0_0
   (s_axi_BUS_A_AWADDR,
    s_axi_BUS_A_AWVALID,
    s_axi_BUS_A_AWREADY,
    s_axi_BUS_A_WDATA,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_WVALID,
    s_axi_BUS_A_WREADY,
    s_axi_BUS_A_BRESP,
    s_axi_BUS_A_BVALID,
    s_axi_BUS_A_BREADY,
    s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_ARVALID,
    s_axi_BUS_A_ARREADY,
    s_axi_BUS_A_RDATA,
    s_axi_BUS_A_RRESP,
    s_axi_BUS_A_RVALID,
    s_axi_BUS_A_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWADDR" *) input [6:0]s_axi_BUS_A_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWVALID" *) input s_axi_BUS_A_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWREADY" *) output s_axi_BUS_A_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WDATA" *) input [31:0]s_axi_BUS_A_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WSTRB" *) input [3:0]s_axi_BUS_A_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WVALID" *) input s_axi_BUS_A_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WREADY" *) output s_axi_BUS_A_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BRESP" *) output [1:0]s_axi_BUS_A_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BVALID" *) output s_axi_BUS_A_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BREADY" *) input s_axi_BUS_A_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARADDR" *) input [6:0]s_axi_BUS_A_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARVALID" *) input s_axi_BUS_A_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARREADY" *) output s_axi_BUS_A_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RDATA" *) output [31:0]s_axi_BUS_A_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RRESP" *) output [1:0]s_axi_BUS_A_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RVALID" *) output s_axi_BUS_A_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_BUS_A, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 125000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_BUS_A_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_BUS_A, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [6:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARREADY;
  wire s_axi_BUS_A_ARVALID;
  wire [6:0]s_axi_BUS_A_AWADDR;
  wire s_axi_BUS_A_AWREADY;
  wire s_axi_BUS_A_AWVALID;
  wire s_axi_BUS_A_BREADY;
  wire s_axi_BUS_A_BVALID;
  wire [9:0]\^s_axi_BUS_A_RDATA ;
  wire s_axi_BUS_A_RREADY;
  wire s_axi_BUS_A_RVALID;
  wire [31:0]s_axi_BUS_A_WDATA;
  wire s_axi_BUS_A_WREADY;
  wire [3:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;
  wire [1:0]NLW_inst_s_axi_BUS_A_BRESP_UNCONNECTED;
  wire [31:8]NLW_inst_s_axi_BUS_A_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_BUS_A_RRESP_UNCONNECTED;

  assign s_axi_BUS_A_BRESP[1] = \<const0> ;
  assign s_axi_BUS_A_BRESP[0] = \<const0> ;
  assign s_axi_BUS_A_RDATA[31] = \<const0> ;
  assign s_axi_BUS_A_RDATA[30] = \<const0> ;
  assign s_axi_BUS_A_RDATA[29] = \<const0> ;
  assign s_axi_BUS_A_RDATA[28] = \<const0> ;
  assign s_axi_BUS_A_RDATA[27] = \<const0> ;
  assign s_axi_BUS_A_RDATA[26] = \<const0> ;
  assign s_axi_BUS_A_RDATA[25] = \<const0> ;
  assign s_axi_BUS_A_RDATA[24] = \<const0> ;
  assign s_axi_BUS_A_RDATA[23] = \<const0> ;
  assign s_axi_BUS_A_RDATA[22] = \<const0> ;
  assign s_axi_BUS_A_RDATA[21] = \<const0> ;
  assign s_axi_BUS_A_RDATA[20] = \<const0> ;
  assign s_axi_BUS_A_RDATA[19] = \<const0> ;
  assign s_axi_BUS_A_RDATA[18] = \<const0> ;
  assign s_axi_BUS_A_RDATA[17] = \<const0> ;
  assign s_axi_BUS_A_RDATA[16] = \<const0> ;
  assign s_axi_BUS_A_RDATA[15] = \<const0> ;
  assign s_axi_BUS_A_RDATA[14] = \<const0> ;
  assign s_axi_BUS_A_RDATA[13] = \<const0> ;
  assign s_axi_BUS_A_RDATA[12] = \<const0> ;
  assign s_axi_BUS_A_RDATA[11] = \<const0> ;
  assign s_axi_BUS_A_RDATA[10] = \<const0> ;
  assign s_axi_BUS_A_RDATA[9] = \^s_axi_BUS_A_RDATA [9];
  assign s_axi_BUS_A_RDATA[8] = \<const0> ;
  assign s_axi_BUS_A_RDATA[7:0] = \^s_axi_BUS_A_RDATA [7:0];
  assign s_axi_BUS_A_RRESP[1] = \<const0> ;
  assign s_axi_BUS_A_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_BUS_A_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_BUS_A_DATA_WIDTH = "32" *) 
  (* C_S_AXI_BUS_A_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  design_1_example_0_0_example inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_BUS_A_ARADDR(s_axi_BUS_A_ARADDR),
        .s_axi_BUS_A_ARREADY(s_axi_BUS_A_ARREADY),
        .s_axi_BUS_A_ARVALID(s_axi_BUS_A_ARVALID),
        .s_axi_BUS_A_AWADDR(s_axi_BUS_A_AWADDR),
        .s_axi_BUS_A_AWREADY(s_axi_BUS_A_AWREADY),
        .s_axi_BUS_A_AWVALID(s_axi_BUS_A_AWVALID),
        .s_axi_BUS_A_BREADY(s_axi_BUS_A_BREADY),
        .s_axi_BUS_A_BRESP(NLW_inst_s_axi_BUS_A_BRESP_UNCONNECTED[1:0]),
        .s_axi_BUS_A_BVALID(s_axi_BUS_A_BVALID),
        .s_axi_BUS_A_RDATA({NLW_inst_s_axi_BUS_A_RDATA_UNCONNECTED[31:10],\^s_axi_BUS_A_RDATA }),
        .s_axi_BUS_A_RREADY(s_axi_BUS_A_RREADY),
        .s_axi_BUS_A_RRESP(NLW_inst_s_axi_BUS_A_RRESP_UNCONNECTED[1:0]),
        .s_axi_BUS_A_RVALID(s_axi_BUS_A_RVALID),
        .s_axi_BUS_A_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_BUS_A_WDATA[7:0]}),
        .s_axi_BUS_A_WREADY(s_axi_BUS_A_WREADY),
        .s_axi_BUS_A_WSTRB({1'b0,1'b0,1'b0,s_axi_BUS_A_WSTRB[0]}),
        .s_axi_BUS_A_WVALID(s_axi_BUS_A_WVALID));
endmodule

(* C_S_AXI_BUS_A_ADDR_WIDTH = "7" *) (* C_S_AXI_BUS_A_DATA_WIDTH = "32" *) (* C_S_AXI_BUS_A_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "example" *) 
(* hls_module = "yes" *) 
module design_1_example_0_0_example
   (s_axi_BUS_A_AWVALID,
    s_axi_BUS_A_AWREADY,
    s_axi_BUS_A_AWADDR,
    s_axi_BUS_A_WVALID,
    s_axi_BUS_A_WREADY,
    s_axi_BUS_A_WDATA,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_ARVALID,
    s_axi_BUS_A_ARREADY,
    s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_RVALID,
    s_axi_BUS_A_RREADY,
    s_axi_BUS_A_RDATA,
    s_axi_BUS_A_RRESP,
    s_axi_BUS_A_BVALID,
    s_axi_BUS_A_BREADY,
    s_axi_BUS_A_BRESP,
    ap_clk,
    ap_rst_n,
    interrupt);
  input s_axi_BUS_A_AWVALID;
  output s_axi_BUS_A_AWREADY;
  input [6:0]s_axi_BUS_A_AWADDR;
  input s_axi_BUS_A_WVALID;
  output s_axi_BUS_A_WREADY;
  input [31:0]s_axi_BUS_A_WDATA;
  input [3:0]s_axi_BUS_A_WSTRB;
  input s_axi_BUS_A_ARVALID;
  output s_axi_BUS_A_ARREADY;
  input [6:0]s_axi_BUS_A_ARADDR;
  output s_axi_BUS_A_RVALID;
  input s_axi_BUS_A_RREADY;
  output [31:0]s_axi_BUS_A_RDATA;
  output [1:0]s_axi_BUS_A_RRESP;
  output s_axi_BUS_A_BVALID;
  input s_axi_BUS_A_BREADY;
  output [1:0]s_axi_BUS_A_BRESP;
  input ap_clk;
  input ap_rst_n;
  output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [6:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARREADY;
  wire s_axi_BUS_A_ARVALID;
  wire [6:0]s_axi_BUS_A_AWADDR;
  wire s_axi_BUS_A_AWREADY;
  wire s_axi_BUS_A_AWVALID;
  wire s_axi_BUS_A_BREADY;
  wire s_axi_BUS_A_BVALID;
  wire [9:0]\^s_axi_BUS_A_RDATA ;
  wire s_axi_BUS_A_RREADY;
  wire s_axi_BUS_A_RVALID;
  wire [31:0]s_axi_BUS_A_WDATA;
  wire s_axi_BUS_A_WREADY;
  wire [3:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;

  assign s_axi_BUS_A_BRESP[1] = \<const0> ;
  assign s_axi_BUS_A_BRESP[0] = \<const0> ;
  assign s_axi_BUS_A_RDATA[31] = \<const0> ;
  assign s_axi_BUS_A_RDATA[30] = \<const0> ;
  assign s_axi_BUS_A_RDATA[29] = \<const0> ;
  assign s_axi_BUS_A_RDATA[28] = \<const0> ;
  assign s_axi_BUS_A_RDATA[27] = \<const0> ;
  assign s_axi_BUS_A_RDATA[26] = \<const0> ;
  assign s_axi_BUS_A_RDATA[25] = \<const0> ;
  assign s_axi_BUS_A_RDATA[24] = \<const0> ;
  assign s_axi_BUS_A_RDATA[23] = \<const0> ;
  assign s_axi_BUS_A_RDATA[22] = \<const0> ;
  assign s_axi_BUS_A_RDATA[21] = \<const0> ;
  assign s_axi_BUS_A_RDATA[20] = \<const0> ;
  assign s_axi_BUS_A_RDATA[19] = \<const0> ;
  assign s_axi_BUS_A_RDATA[18] = \<const0> ;
  assign s_axi_BUS_A_RDATA[17] = \<const0> ;
  assign s_axi_BUS_A_RDATA[16] = \<const0> ;
  assign s_axi_BUS_A_RDATA[15] = \<const0> ;
  assign s_axi_BUS_A_RDATA[14] = \<const0> ;
  assign s_axi_BUS_A_RDATA[13] = \<const0> ;
  assign s_axi_BUS_A_RDATA[12] = \<const0> ;
  assign s_axi_BUS_A_RDATA[11] = \<const0> ;
  assign s_axi_BUS_A_RDATA[10] = \<const0> ;
  assign s_axi_BUS_A_RDATA[9] = \^s_axi_BUS_A_RDATA [9];
  assign s_axi_BUS_A_RDATA[8] = \<const0> ;
  assign s_axi_BUS_A_RDATA[7:0] = \^s_axi_BUS_A_RDATA [7:0];
  assign s_axi_BUS_A_RRESP[1] = \<const0> ;
  assign s_axi_BUS_A_RRESP[0] = \<const0> ;
  design_1_example_0_0_example_BUS_A_s_axi BUS_A_s_axi_U
       (.\FSM_onehot_rstate_reg[1]_0 (s_axi_BUS_A_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_BUS_A_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_BUS_A_WREADY),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_BUS_A_ARADDR(s_axi_BUS_A_ARADDR),
        .s_axi_BUS_A_ARVALID(s_axi_BUS_A_ARVALID),
        .s_axi_BUS_A_AWADDR(s_axi_BUS_A_AWADDR),
        .s_axi_BUS_A_AWVALID(s_axi_BUS_A_AWVALID),
        .s_axi_BUS_A_BREADY(s_axi_BUS_A_BREADY),
        .s_axi_BUS_A_BVALID(s_axi_BUS_A_BVALID),
        .s_axi_BUS_A_RDATA({\^s_axi_BUS_A_RDATA [9],\^s_axi_BUS_A_RDATA [7:0]}),
        .s_axi_BUS_A_RREADY(s_axi_BUS_A_RREADY),
        .s_axi_BUS_A_RVALID(s_axi_BUS_A_RVALID),
        .s_axi_BUS_A_WDATA(s_axi_BUS_A_WDATA[7:0]),
        .s_axi_BUS_A_WSTRB(s_axi_BUS_A_WSTRB[0]),
        .s_axi_BUS_A_WVALID(s_axi_BUS_A_WVALID));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "example_BUS_A_s_axi" *) 
module design_1_example_0_0_example_BUS_A_s_axi
   (interrupt,
    s_axi_BUS_A_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_BUS_A_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_BUS_A_RDATA,
    ap_clk,
    ap_rst_n,
    s_axi_BUS_A_WDATA,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_AWADDR,
    s_axi_BUS_A_ARVALID,
    s_axi_BUS_A_RREADY,
    s_axi_BUS_A_WVALID,
    s_axi_BUS_A_BREADY,
    s_axi_BUS_A_AWVALID);
  output interrupt;
  output s_axi_BUS_A_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_BUS_A_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output [8:0]s_axi_BUS_A_RDATA;
  input ap_clk;
  input ap_rst_n;
  input [7:0]s_axi_BUS_A_WDATA;
  input [0:0]s_axi_BUS_A_WSTRB;
  input [6:0]s_axi_BUS_A_ARADDR;
  input [6:0]s_axi_BUS_A_AWADDR;
  input s_axi_BUS_A_ARVALID;
  input s_axi_BUS_A_RREADY;
  input s_axi_BUS_A_WVALID;
  input s_axi_BUS_A_BREADY;
  input s_axi_BUS_A_AWVALID;

  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [7:0]a;
  wire ap_clk;
  wire ap_done;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ar_hs;
  wire auto_restart_status_reg_n_0;
  wire [7:0]b;
  wire [7:0]c_i;
  wire [7:0]c_o;
  wire [7:0]int_a0;
  wire \int_a[7]_i_1_n_0 ;
  wire \int_a[7]_i_3_n_0 ;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_ready_i_2_n_0;
  wire int_ap_start1;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart_i_1_n_0;
  wire [7:0]int_b0;
  wire \int_b[7]_i_1_n_0 ;
  wire [7:0]int_c_i0;
  wire \int_c_i[7]_i_1_n_0 ;
  wire \int_c_i[7]_i_3_n_0 ;
  wire [7:0]int_c_o;
  wire \int_c_o[3]_i_2_n_0 ;
  wire \int_c_o[3]_i_3_n_0 ;
  wire \int_c_o[3]_i_4_n_0 ;
  wire \int_c_o[3]_i_5_n_0 ;
  wire \int_c_o[3]_i_6_n_0 ;
  wire \int_c_o[3]_i_7_n_0 ;
  wire \int_c_o[3]_i_8_n_0 ;
  wire \int_c_o[7]_i_2_n_0 ;
  wire \int_c_o[7]_i_3_n_0 ;
  wire \int_c_o[7]_i_4_n_0 ;
  wire \int_c_o[7]_i_5_n_0 ;
  wire \int_c_o[7]_i_6_n_0 ;
  wire \int_c_o[7]_i_7_n_0 ;
  wire \int_c_o[7]_i_8_n_0 ;
  wire int_c_o_ap_vld;
  wire int_c_o_ap_vld_i_1_n_0;
  wire int_c_o_ap_vld_i_2_n_0;
  wire \int_c_o_reg[3]_i_1_n_0 ;
  wire \int_c_o_reg[3]_i_1_n_1 ;
  wire \int_c_o_reg[3]_i_1_n_2 ;
  wire \int_c_o_reg[3]_i_1_n_3 ;
  wire \int_c_o_reg[7]_i_1_n_1 ;
  wire \int_c_o_reg[7]_i_1_n_2 ;
  wire \int_c_o_reg[7]_i_1_n_3 ;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_reg_n_0;
  wire int_ier;
  wire int_ier_i_1_n_0;
  wire int_interrupt0;
  wire int_interrupt1;
  wire int_isr6_out;
  wire int_isr_i_1_n_0;
  wire int_isr_i_2_n_0;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire [7:7]int_ver;
  wire int_ver_ap_vld;
  wire int_ver_ap_vld_i_1_n_0;
  wire interrupt;
  wire [7:2]p_7_in;
  wire [9:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[0]_i_6_n_0 ;
  wire \rdata[0]_i_7_n_0 ;
  wire \rdata[1]_i_1_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[2]_i_1_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[4]_i_1_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[4]_i_3_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[7]_i_4_n_0 ;
  wire \rdata[7]_i_5_n_0 ;
  wire \rdata[7]_i_6_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire [6:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARVALID;
  wire [6:0]s_axi_BUS_A_AWADDR;
  wire s_axi_BUS_A_AWVALID;
  wire s_axi_BUS_A_BREADY;
  wire s_axi_BUS_A_BVALID;
  wire [8:0]s_axi_BUS_A_RDATA;
  wire s_axi_BUS_A_RREADY;
  wire s_axi_BUS_A_RVALID;
  wire [7:0]s_axi_BUS_A_WDATA;
  wire [0:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire [3:3]\NLW_int_c_o_reg[7]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_BUS_A_RREADY),
        .I1(s_axi_BUS_A_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_BUS_A_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(s_axi_BUS_A_RREADY),
        .I3(s_axi_BUS_A_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBA30BA3F)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_BUS_A_BREADY),
        .I1(s_axi_BUS_A_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_BUS_A_BVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_AWVALID),
        .I2(s_axi_BUS_A_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_BUS_A_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_BUS_A_BREADY),
        .I3(s_axi_BUS_A_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_BUS_A_BVALID),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_7_in[7]),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[0]_i_1 
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(a[0]),
        .O(int_a0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[1]_i_1 
       (.I0(s_axi_BUS_A_WDATA[1]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(a[1]),
        .O(int_a0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[2]_i_1 
       (.I0(s_axi_BUS_A_WDATA[2]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(a[2]),
        .O(int_a0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[3]_i_1 
       (.I0(s_axi_BUS_A_WDATA[3]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(a[3]),
        .O(int_a0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[4]_i_1 
       (.I0(s_axi_BUS_A_WDATA[4]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(a[4]),
        .O(int_a0[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[5]_i_1 
       (.I0(s_axi_BUS_A_WDATA[5]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(a[5]),
        .O(int_a0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[6]_i_1 
       (.I0(s_axi_BUS_A_WDATA[6]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(a[6]),
        .O(int_a0[6]));
  LUT4 #(
    .INIT(16'h0010)) 
    \int_a[7]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_a[7]_i_3_n_0 ),
        .O(\int_a[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[7]_i_2 
       (.I0(s_axi_BUS_A_WDATA[7]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(a[7]),
        .O(int_a0[7]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \int_a[7]_i_3 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .I5(s_axi_BUS_A_WVALID),
        .O(\int_a[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[0] 
       (.C(ap_clk),
        .CE(\int_a[7]_i_1_n_0 ),
        .D(int_a0[0]),
        .Q(a[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[1] 
       (.C(ap_clk),
        .CE(\int_a[7]_i_1_n_0 ),
        .D(int_a0[1]),
        .Q(a[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[2] 
       (.C(ap_clk),
        .CE(\int_a[7]_i_1_n_0 ),
        .D(int_a0[2]),
        .Q(a[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[3] 
       (.C(ap_clk),
        .CE(\int_a[7]_i_1_n_0 ),
        .D(int_a0[3]),
        .Q(a[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[4] 
       (.C(ap_clk),
        .CE(\int_a[7]_i_1_n_0 ),
        .D(int_a0[4]),
        .Q(a[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[5] 
       (.C(ap_clk),
        .CE(\int_a[7]_i_1_n_0 ),
        .D(int_a0[5]),
        .Q(a[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[6] 
       (.C(ap_clk),
        .CE(\int_a[7]_i_1_n_0 ),
        .D(int_a0[6]),
        .Q(a[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[7] 
       (.C(ap_clk),
        .CE(\int_a[7]_i_1_n_0 ),
        .D(int_a0[7]),
        .Q(a[7]),
        .R(ap_rst_n_inv));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(p_7_in[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hEFFFEFEF00FF0000)) 
    int_ap_ready_i_1
       (.I0(s_axi_BUS_A_ARADDR[6]),
        .I1(s_axi_BUS_A_ARADDR[2]),
        .I2(int_ap_ready_i_2_n_0),
        .I3(p_7_in[7]),
        .I4(ap_done),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    int_ap_ready_i_2
       (.I0(s_axi_BUS_A_ARADDR[0]),
        .I1(s_axi_BUS_A_ARADDR[1]),
        .I2(ar_hs),
        .I3(s_axi_BUS_A_ARADDR[3]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(s_axi_BUS_A_ARADDR[4]),
        .O(int_ap_ready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    int_ap_start_i_1
       (.I0(p_7_in[7]),
        .I1(ap_done),
        .I2(int_ap_start1),
        .I3(s_axi_BUS_A_WDATA[0]),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    int_ap_start_i_2
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\int_a[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(s_axi_BUS_A_WSTRB),
        .I4(\waddr_reg_n_0_[2] ),
        .O(int_ap_start1));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_done),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    int_auto_restart_i_1
       (.I0(s_axi_BUS_A_WDATA[7]),
        .I1(int_ap_start1),
        .I2(p_7_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_7_in[7]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[0]_i_1 
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(b[0]),
        .O(int_b0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[1]_i_1 
       (.I0(s_axi_BUS_A_WDATA[1]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(b[1]),
        .O(int_b0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[2]_i_1 
       (.I0(s_axi_BUS_A_WDATA[2]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(b[2]),
        .O(int_b0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[3]_i_1 
       (.I0(s_axi_BUS_A_WDATA[3]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(b[3]),
        .O(int_b0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[4]_i_1 
       (.I0(s_axi_BUS_A_WDATA[4]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(b[4]),
        .O(int_b0[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[5]_i_1 
       (.I0(s_axi_BUS_A_WDATA[5]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(b[5]),
        .O(int_b0[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[6]_i_1 
       (.I0(s_axi_BUS_A_WDATA[6]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(b[6]),
        .O(int_b0[6]));
  LUT4 #(
    .INIT(16'h0040)) 
    \int_b[7]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_a[7]_i_3_n_0 ),
        .O(\int_b[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[7]_i_2 
       (.I0(s_axi_BUS_A_WDATA[7]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(b[7]),
        .O(int_b0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[0] 
       (.C(ap_clk),
        .CE(\int_b[7]_i_1_n_0 ),
        .D(int_b0[0]),
        .Q(b[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[1] 
       (.C(ap_clk),
        .CE(\int_b[7]_i_1_n_0 ),
        .D(int_b0[1]),
        .Q(b[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[2] 
       (.C(ap_clk),
        .CE(\int_b[7]_i_1_n_0 ),
        .D(int_b0[2]),
        .Q(b[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[3] 
       (.C(ap_clk),
        .CE(\int_b[7]_i_1_n_0 ),
        .D(int_b0[3]),
        .Q(b[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[4] 
       (.C(ap_clk),
        .CE(\int_b[7]_i_1_n_0 ),
        .D(int_b0[4]),
        .Q(b[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[5] 
       (.C(ap_clk),
        .CE(\int_b[7]_i_1_n_0 ),
        .D(int_b0[5]),
        .Q(b[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[6] 
       (.C(ap_clk),
        .CE(\int_b[7]_i_1_n_0 ),
        .D(int_b0[6]),
        .Q(b[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[7] 
       (.C(ap_clk),
        .CE(\int_b[7]_i_1_n_0 ),
        .D(int_b0[7]),
        .Q(b[7]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[0]_i_1 
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(c_i[0]),
        .O(int_c_i0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[1]_i_1 
       (.I0(s_axi_BUS_A_WDATA[1]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(c_i[1]),
        .O(int_c_i0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[2]_i_1 
       (.I0(s_axi_BUS_A_WDATA[2]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(c_i[2]),
        .O(int_c_i0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[3]_i_1 
       (.I0(s_axi_BUS_A_WDATA[3]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(c_i[3]),
        .O(int_c_i0[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[4]_i_1 
       (.I0(s_axi_BUS_A_WDATA[4]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(c_i[4]),
        .O(int_c_i0[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[5]_i_1 
       (.I0(s_axi_BUS_A_WDATA[5]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(c_i[5]),
        .O(int_c_i0[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[6]_i_1 
       (.I0(s_axi_BUS_A_WDATA[6]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(c_i[6]),
        .O(int_c_i0[6]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_c_i[7]_i_1 
       (.I0(\int_c_i[7]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\waddr_reg_n_0_[2] ),
        .O(\int_c_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[7]_i_2 
       (.I0(s_axi_BUS_A_WDATA[7]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(c_i[7]),
        .O(int_c_i0[7]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \int_c_i[7]_i_3 
       (.I0(s_axi_BUS_A_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\waddr_reg_n_0_[6] ),
        .O(\int_c_i[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[0] 
       (.C(ap_clk),
        .CE(\int_c_i[7]_i_1_n_0 ),
        .D(int_c_i0[0]),
        .Q(c_i[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[1] 
       (.C(ap_clk),
        .CE(\int_c_i[7]_i_1_n_0 ),
        .D(int_c_i0[1]),
        .Q(c_i[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[2] 
       (.C(ap_clk),
        .CE(\int_c_i[7]_i_1_n_0 ),
        .D(int_c_i0[2]),
        .Q(c_i[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[3] 
       (.C(ap_clk),
        .CE(\int_c_i[7]_i_1_n_0 ),
        .D(int_c_i0[3]),
        .Q(c_i[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[4] 
       (.C(ap_clk),
        .CE(\int_c_i[7]_i_1_n_0 ),
        .D(int_c_i0[4]),
        .Q(c_i[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[5] 
       (.C(ap_clk),
        .CE(\int_c_i[7]_i_1_n_0 ),
        .D(int_c_i0[5]),
        .Q(c_i[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[6] 
       (.C(ap_clk),
        .CE(\int_c_i[7]_i_1_n_0 ),
        .D(int_c_i0[6]),
        .Q(c_i[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[7] 
       (.C(ap_clk),
        .CE(\int_c_i[7]_i_1_n_0 ),
        .D(int_c_i0[7]),
        .Q(c_i[7]),
        .R(ap_rst_n_inv));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_c_o[3]_i_2 
       (.I0(c_i[2]),
        .I1(a[2]),
        .I2(b[2]),
        .O(\int_c_o[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_c_o[3]_i_3 
       (.I0(c_i[1]),
        .I1(a[1]),
        .I2(b[1]),
        .O(\int_c_o[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_c_o[3]_i_4 
       (.I0(a[0]),
        .I1(c_i[0]),
        .I2(b[0]),
        .O(\int_c_o[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_c_o[3]_i_5 
       (.I0(c_i[3]),
        .I1(a[3]),
        .I2(b[3]),
        .I3(\int_c_o[3]_i_2_n_0 ),
        .O(\int_c_o[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_c_o[3]_i_6 
       (.I0(c_i[2]),
        .I1(a[2]),
        .I2(b[2]),
        .I3(\int_c_o[3]_i_3_n_0 ),
        .O(\int_c_o[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_c_o[3]_i_7 
       (.I0(c_i[1]),
        .I1(a[1]),
        .I2(b[1]),
        .I3(\int_c_o[3]_i_4_n_0 ),
        .O(\int_c_o[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \int_c_o[3]_i_8 
       (.I0(a[0]),
        .I1(c_i[0]),
        .I2(b[0]),
        .O(\int_c_o[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_c_o[7]_i_2 
       (.I0(c_i[5]),
        .I1(a[5]),
        .I2(b[5]),
        .O(\int_c_o[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_c_o[7]_i_3 
       (.I0(c_i[4]),
        .I1(a[4]),
        .I2(b[4]),
        .O(\int_c_o[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_c_o[7]_i_4 
       (.I0(c_i[3]),
        .I1(a[3]),
        .I2(b[3]),
        .O(\int_c_o[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \int_c_o[7]_i_5 
       (.I0(c_i[6]),
        .I1(a[6]),
        .I2(b[6]),
        .I3(c_i[7]),
        .I4(b[7]),
        .I5(a[7]),
        .O(\int_c_o[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \int_c_o[7]_i_6 
       (.I0(\int_c_o[7]_i_2_n_0 ),
        .I1(c_i[6]),
        .I2(a[6]),
        .I3(b[6]),
        .O(\int_c_o[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_c_o[7]_i_7 
       (.I0(c_i[5]),
        .I1(a[5]),
        .I2(b[5]),
        .I3(\int_c_o[7]_i_3_n_0 ),
        .O(\int_c_o[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_c_o[7]_i_8 
       (.I0(c_i[4]),
        .I1(a[4]),
        .I2(b[4]),
        .I3(\int_c_o[7]_i_4_n_0 ),
        .O(\int_c_o[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFAAAAAAAA)) 
    int_c_o_ap_vld_i_1
       (.I0(ap_done),
        .I1(int_c_o_ap_vld_i_2_n_0),
        .I2(ar_hs),
        .I3(s_axi_BUS_A_ARADDR[1]),
        .I4(s_axi_BUS_A_ARADDR[0]),
        .I5(int_c_o_ap_vld),
        .O(int_c_o_ap_vld_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    int_c_o_ap_vld_i_2
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(s_axi_BUS_A_ARADDR[2]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[6]),
        .O(int_c_o_ap_vld_i_2_n_0));
  FDRE int_c_o_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_c_o_ap_vld_i_1_n_0),
        .Q(int_c_o_ap_vld),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[0] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(c_o[0]),
        .Q(int_c_o[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[1] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(c_o[1]),
        .Q(int_c_o[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[2] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(c_o[2]),
        .Q(int_c_o[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[3] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(c_o[3]),
        .Q(int_c_o[3]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_c_o_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\int_c_o_reg[3]_i_1_n_0 ,\int_c_o_reg[3]_i_1_n_1 ,\int_c_o_reg[3]_i_1_n_2 ,\int_c_o_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_c_o[3]_i_2_n_0 ,\int_c_o[3]_i_3_n_0 ,\int_c_o[3]_i_4_n_0 ,1'b0}),
        .O(c_o[3:0]),
        .S({\int_c_o[3]_i_5_n_0 ,\int_c_o[3]_i_6_n_0 ,\int_c_o[3]_i_7_n_0 ,\int_c_o[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[4] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(c_o[4]),
        .Q(int_c_o[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[5] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(c_o[5]),
        .Q(int_c_o[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[6] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(c_o[6]),
        .Q(int_c_o[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[7] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(c_o[7]),
        .Q(int_c_o[7]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_c_o_reg[7]_i_1 
       (.CI(\int_c_o_reg[3]_i_1_n_0 ),
        .CO({\NLW_int_c_o_reg[7]_i_1_CO_UNCONNECTED [3],\int_c_o_reg[7]_i_1_n_1 ,\int_c_o_reg[7]_i_1_n_2 ,\int_c_o_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\int_c_o[7]_i_2_n_0 ,\int_c_o[7]_i_3_n_0 ,\int_c_o[7]_i_4_n_0 }),
        .O(c_o[7:4]),
        .S({\int_c_o[7]_i_5_n_0 ,\int_c_o[7]_i_6_n_0 ,\int_c_o[7]_i_7_n_0 ,\int_c_o[7]_i_8_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    int_gie_i_1
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(int_gie_i_2_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(s_axi_BUS_A_WSTRB),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\int_a[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[5] ),
        .O(int_gie_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    int_ier_i_1
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(s_axi_BUS_A_WSTRB),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_isr_i_2_n_0),
        .I4(int_ier),
        .O(int_ier_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ier_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ier_i_1_n_0),
        .Q(int_ier),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h8)) 
    int_interrupt_i_1
       (.I0(int_interrupt1),
        .I1(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFF2000)) 
    int_isr_i_1
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(int_isr_i_2_n_0),
        .I2(s_axi_BUS_A_WSTRB),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(int_isr6_out),
        .I5(int_interrupt1),
        .O(int_isr_i_1_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    int_isr_i_2
       (.I0(\int_a[7]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[3] ),
        .O(int_isr_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    int_isr_i_3
       (.I0(ap_done),
        .I1(int_ier),
        .O(int_isr6_out));
  FDRE #(
    .INIT(1'b0)) 
    int_isr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_isr_i_1_n_0),
        .Q(int_interrupt1),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7F5D3F0C)) 
    int_task_ap_done_i_1
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(auto_restart_status_reg_n_0),
        .I2(p_7_in[2]),
        .I3(ap_done),
        .I4(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_task_ap_done_i_2
       (.I0(\rdata[0]_i_5_n_0 ),
        .I1(ar_hs),
        .I2(s_axi_BUS_A_ARADDR[1]),
        .I3(s_axi_BUS_A_ARADDR[0]),
        .I4(s_axi_BUS_A_ARADDR[2]),
        .I5(s_axi_BUS_A_ARADDR[6]),
        .O(int_task_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    int_ver_ap_vld_i_1
       (.I0(ap_done),
        .I1(s_axi_BUS_A_ARADDR[6]),
        .I2(s_axi_BUS_A_ARADDR[2]),
        .I3(int_ap_ready_i_2_n_0),
        .I4(int_ver_ap_vld),
        .O(int_ver_ap_vld_i_1_n_0));
  FDRE int_ver_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ver_ap_vld_i_1_n_0),
        .Q(int_ver_ap_vld),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ver_reg[7] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(1'b1),
        .Q(int_ver),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h1011101010111011)) 
    \rdata[0]_i_1 
       (.I0(s_axi_BUS_A_ARADDR[1]),
        .I1(s_axi_BUS_A_ARADDR[0]),
        .I2(\rdata[0]_i_2_n_0 ),
        .I3(s_axi_BUS_A_ARADDR[6]),
        .I4(\rdata[0]_i_3_n_0 ),
        .I5(\rdata[0]_i_4_n_0 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'h8800000F88000000)) 
    \rdata[0]_i_2 
       (.I0(int_ver_ap_vld),
        .I1(\rdata[0]_i_5_n_0 ),
        .I2(s_axi_BUS_A_ARADDR[4]),
        .I3(s_axi_BUS_A_ARADDR[2]),
        .I4(s_axi_BUS_A_ARADDR[6]),
        .I5(\rdata[0]_i_6_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \rdata[0]_i_3 
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(int_c_o_ap_vld),
        .I3(s_axi_BUS_A_ARADDR[2]),
        .I4(s_axi_BUS_A_ARADDR[4]),
        .I5(\rdata[0]_i_7_n_0 ),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF1DFFFFFFFF)) 
    \rdata[0]_i_4 
       (.I0(int_gie_reg_n_0),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(int_interrupt1),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(s_axi_BUS_A_ARADDR[2]),
        .O(\rdata[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rdata[0]_i_5 
       (.I0(s_axi_BUS_A_ARADDR[4]),
        .I1(s_axi_BUS_A_ARADDR[5]),
        .I2(s_axi_BUS_A_ARADDR[3]),
        .O(\rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_6 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(s_axi_BUS_A_ARADDR[5]),
        .I3(int_ier),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(ap_done),
        .O(\rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000E20000000000)) 
    \rdata[0]_i_7 
       (.I0(c_i[0]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(int_c_o[0]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(s_axi_BUS_A_ARADDR[2]),
        .I5(s_axi_BUS_A_ARADDR[4]),
        .O(\rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000200AAAAAAAA)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(s_axi_BUS_A_ARADDR[6]),
        .I2(s_axi_BUS_A_ARADDR[2]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(\rdata[1]_i_3_n_0 ),
        .I5(\rdata[3]_i_3_n_0 ),
        .O(\rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FA00EEFFEE00)) 
    \rdata[1]_i_2 
       (.I0(s_axi_BUS_A_ARADDR[4]),
        .I1(a[1]),
        .I2(b[1]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(int_task_ap_done),
        .I5(s_axi_BUS_A_ARADDR[3]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \rdata[1]_i_3 
       (.I0(s_axi_BUS_A_ARADDR[1]),
        .I1(s_axi_BUS_A_ARADDR[0]),
        .I2(c_i[1]),
        .I3(s_axi_BUS_A_ARADDR[3]),
        .I4(int_c_o[1]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000200AAAAAAAA)) 
    \rdata[2]_i_1 
       (.I0(\rdata[2]_i_2_n_0 ),
        .I1(s_axi_BUS_A_ARADDR[6]),
        .I2(s_axi_BUS_A_ARADDR[2]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(\rdata[2]_i_3_n_0 ),
        .I5(\rdata[3]_i_3_n_0 ),
        .O(\rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00CCF0)) 
    \rdata[2]_i_2 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(p_7_in[2]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(s_axi_BUS_A_ARADDR[4]),
        .O(\rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \rdata[2]_i_3 
       (.I0(s_axi_BUS_A_ARADDR[1]),
        .I1(s_axi_BUS_A_ARADDR[0]),
        .I2(c_i[2]),
        .I3(s_axi_BUS_A_ARADDR[3]),
        .I4(int_c_o[2]),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88800080AAAAAAAA)) 
    \rdata[3]_i_1 
       (.I0(\rdata[3]_i_2_n_0 ),
        .I1(\rdata[4]_i_3_n_0 ),
        .I2(c_i[3]),
        .I3(s_axi_BUS_A_ARADDR[3]),
        .I4(int_c_o[3]),
        .I5(\rdata[3]_i_3_n_0 ),
        .O(rdata[3]));
  LUT6 #(
    .INIT(64'hFA00FA00FCFFFC00)) 
    \rdata[3]_i_2 
       (.I0(b[3]),
        .I1(a[3]),
        .I2(s_axi_BUS_A_ARADDR[4]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(int_ap_ready),
        .I5(s_axi_BUS_A_ARADDR[3]),
        .O(\rdata[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata[3]_i_3 
       (.I0(s_axi_BUS_A_ARADDR[4]),
        .I1(s_axi_BUS_A_ARADDR[0]),
        .I2(s_axi_BUS_A_ARADDR[1]),
        .I3(s_axi_BUS_A_ARADDR[6]),
        .I4(s_axi_BUS_A_ARADDR[2]),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEF4F000000000000)) 
    \rdata[4]_i_1 
       (.I0(s_axi_BUS_A_ARADDR[3]),
        .I1(c_i[4]),
        .I2(s_axi_BUS_A_ARADDR[4]),
        .I3(int_c_o[4]),
        .I4(\rdata[4]_i_2_n_0 ),
        .I5(\rdata[4]_i_3_n_0 ),
        .O(\rdata[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFECE)) 
    \rdata[4]_i_2 
       (.I0(a[4]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(s_axi_BUS_A_ARADDR[3]),
        .I3(b[4]),
        .O(\rdata[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[4]_i_3 
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARADDR[0]),
        .I2(s_axi_BUS_A_ARADDR[1]),
        .I3(s_axi_BUS_A_ARADDR[6]),
        .I4(s_axi_BUS_A_ARADDR[2]),
        .O(\rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \rdata[5]_i_1 
       (.I0(s_axi_BUS_A_ARADDR[2]),
        .I1(s_axi_BUS_A_ARADDR[6]),
        .I2(s_axi_BUS_A_ARADDR[1]),
        .I3(s_axi_BUS_A_ARADDR[0]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(\rdata[5]_i_2_n_0 ),
        .O(rdata[5]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \rdata[5]_i_2 
       (.I0(int_c_o[5]),
        .I1(c_i[5]),
        .I2(s_axi_BUS_A_ARADDR[4]),
        .I3(b[5]),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(a[5]),
        .O(\rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \rdata[6]_i_1 
       (.I0(s_axi_BUS_A_ARADDR[2]),
        .I1(s_axi_BUS_A_ARADDR[6]),
        .I2(s_axi_BUS_A_ARADDR[1]),
        .I3(s_axi_BUS_A_ARADDR[0]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(\rdata[6]_i_2_n_0 ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \rdata[6]_i_2 
       (.I0(int_c_o[6]),
        .I1(c_i[6]),
        .I2(s_axi_BUS_A_ARADDR[4]),
        .I3(b[6]),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(a[6]),
        .O(\rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata[7]_i_1 
       (.I0(\rdata[7]_i_3_n_0 ),
        .I1(s_axi_BUS_A_ARADDR[1]),
        .I2(s_axi_BUS_A_ARADDR[0]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(ar_hs),
        .O(\rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A00000000)) 
    \rdata[7]_i_2 
       (.I0(\rdata[7]_i_4_n_0 ),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(s_axi_BUS_A_ARADDR[6]),
        .I3(s_axi_BUS_A_ARADDR[2]),
        .I4(s_axi_BUS_A_ARADDR[4]),
        .I5(\rdata[7]_i_6_n_0 ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \rdata[7]_i_3 
       (.I0(s_axi_BUS_A_ARADDR[4]),
        .I1(s_axi_BUS_A_ARADDR[2]),
        .I2(int_ver),
        .I3(s_axi_BUS_A_ARADDR[6]),
        .O(\rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FA00EEFFEE00)) 
    \rdata[7]_i_4 
       (.I0(s_axi_BUS_A_ARADDR[4]),
        .I1(a[7]),
        .I2(b[7]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(p_7_in[7]),
        .I5(s_axi_BUS_A_ARADDR[3]),
        .O(\rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \rdata[7]_i_5 
       (.I0(c_i[7]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(int_c_o[7]),
        .I3(s_axi_BUS_A_ARADDR[6]),
        .I4(s_axi_BUS_A_ARADDR[2]),
        .I5(s_axi_BUS_A_ARADDR[5]),
        .O(\rdata[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[7]_i_6 
       (.I0(s_axi_BUS_A_ARADDR[0]),
        .I1(s_axi_BUS_A_ARADDR[1]),
        .O(\rdata[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[9]_i_1 
       (.I0(s_axi_BUS_A_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \rdata[9]_i_2 
       (.I0(s_axi_BUS_A_ARADDR[3]),
        .I1(s_axi_BUS_A_ARADDR[5]),
        .I2(s_axi_BUS_A_ARADDR[4]),
        .I3(interrupt),
        .I4(\rdata[9]_i_3_n_0 ),
        .O(rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[9]_i_3 
       (.I0(s_axi_BUS_A_ARADDR[2]),
        .I1(s_axi_BUS_A_ARADDR[6]),
        .I2(s_axi_BUS_A_ARADDR[1]),
        .I3(s_axi_BUS_A_ARADDR[0]),
        .O(\rdata[9]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_BUS_A_RDATA[0]),
        .R(1'b0));
  FDSE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[1]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[1]),
        .S(\rdata[7]_i_1_n_0 ));
  FDSE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[2]),
        .S(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_BUS_A_RDATA[3]),
        .R(1'b0));
  FDSE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[4]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[4]),
        .S(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_BUS_A_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_BUS_A_RDATA[6]),
        .R(1'b0));
  FDSE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[7]_i_2_n_0 ),
        .Q(s_axi_BUS_A_RDATA[7]),
        .S(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_BUS_A_RDATA[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[6]_i_1 
       (.I0(s_axi_BUS_A_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
