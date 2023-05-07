//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Sat May  6 19:39:50 2023
//Host        : MOSS running 64-bit Ubuntu 22.04.1 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=8,da_board_cnt=21,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR3_0_addr,
    DDR3_0_ba,
    DDR3_0_cas_n,
    DDR3_0_ck_n,
    DDR3_0_ck_p,
    DDR3_0_cke,
    DDR3_0_cs_n,
    DDR3_0_dm,
    DDR3_0_dq,
    DDR3_0_dqs_n,
    DDR3_0_dqs_p,
    DDR3_0_odt,
    DDR3_0_ras_n,
    DDR3_0_reset_n,
    DDR3_0_we_n,
    PCIE_REF_CLK_clk_n,
    PCIE_REF_CLK_clk_p,
    clk50m,
    gpio_io_o_0,
    init_calib_complete_0,
    pcie_7x_mgt_rtl_0_rxn,
    pcie_7x_mgt_rtl_0_rxp,
    pcie_7x_mgt_rtl_0_txn,
    pcie_7x_mgt_rtl_0_txp,
    reset_rtl_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [14:0]DDR3_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 BA" *) output [2:0]DDR3_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CAS_N" *) output DDR3_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CK_N" *) output [0:0]DDR3_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CK_P" *) output [0:0]DDR3_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CKE" *) output [0:0]DDR3_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CS_N" *) output [0:0]DDR3_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DM" *) output [3:0]DDR3_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DQ" *) inout [31:0]DDR3_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DQS_N" *) inout [3:0]DDR3_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DQS_P" *) inout [3:0]DDR3_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 ODT" *) output [0:0]DDR3_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 RAS_N" *) output DDR3_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 RESET_N" *) output DDR3_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 WE_N" *) output DDR3_0_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIE_REF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE_REF_CLK, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]PCIE_REF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIE_REF_CLK CLK_P" *) input [0:0]PCIE_REF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK50M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK50M, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk50m;
  output [0:0]gpio_io_o_0;
  output init_calib_complete_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl_0 rxn" *) input [3:0]pcie_7x_mgt_rtl_0_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl_0 rxp" *) input [3:0]pcie_7x_mgt_rtl_0_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl_0 txn" *) output [3:0]pcie_7x_mgt_rtl_0_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl_0 txp" *) output [3:0]pcie_7x_mgt_rtl_0_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_rtl_0;

  wire [0:0]PCIE_REF_CLK_1_CLK_N;
  wire [0:0]PCIE_REF_CLK_1_CLK_P;
  wire [0:0]axi_gpio_0_gpio_io_o;
  wire [29:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [29:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [255:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [255:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [31:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [8:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [8:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [6:0]axi_smc_M02_AXI_ARADDR;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [6:0]axi_smc_M02_AXI_AWADDR;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire [5:0]axi_smc_M03_AXI_ARADDR;
  wire axi_smc_M03_AXI_ARREADY;
  wire axi_smc_M03_AXI_ARVALID;
  wire [5:0]axi_smc_M03_AXI_AWADDR;
  wire axi_smc_M03_AXI_AWREADY;
  wire axi_smc_M03_AXI_AWVALID;
  wire axi_smc_M03_AXI_BREADY;
  wire [1:0]axi_smc_M03_AXI_BRESP;
  wire axi_smc_M03_AXI_BVALID;
  wire [31:0]axi_smc_M03_AXI_RDATA;
  wire axi_smc_M03_AXI_RREADY;
  wire [1:0]axi_smc_M03_AXI_RRESP;
  wire axi_smc_M03_AXI_RVALID;
  wire [31:0]axi_smc_M03_AXI_WDATA;
  wire axi_smc_M03_AXI_WREADY;
  wire [3:0]axi_smc_M03_AXI_WSTRB;
  wire axi_smc_M03_AXI_WVALID;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_1_clk_out1;
  wire clk_wiz_clk_out1;
  wire [63:0]leb128_compression_0_m_axi_gmem_ARADDR;
  wire [1:0]leb128_compression_0_m_axi_gmem_ARBURST;
  wire [3:0]leb128_compression_0_m_axi_gmem_ARCACHE;
  wire [0:0]leb128_compression_0_m_axi_gmem_ARID;
  wire [7:0]leb128_compression_0_m_axi_gmem_ARLEN;
  wire [1:0]leb128_compression_0_m_axi_gmem_ARLOCK;
  wire [2:0]leb128_compression_0_m_axi_gmem_ARPROT;
  wire [3:0]leb128_compression_0_m_axi_gmem_ARQOS;
  wire leb128_compression_0_m_axi_gmem_ARREADY;
  wire [2:0]leb128_compression_0_m_axi_gmem_ARSIZE;
  wire leb128_compression_0_m_axi_gmem_ARVALID;
  wire [63:0]leb128_compression_0_m_axi_gmem_AWADDR;
  wire [1:0]leb128_compression_0_m_axi_gmem_AWBURST;
  wire [3:0]leb128_compression_0_m_axi_gmem_AWCACHE;
  wire [0:0]leb128_compression_0_m_axi_gmem_AWID;
  wire [7:0]leb128_compression_0_m_axi_gmem_AWLEN;
  wire [1:0]leb128_compression_0_m_axi_gmem_AWLOCK;
  wire [2:0]leb128_compression_0_m_axi_gmem_AWPROT;
  wire [3:0]leb128_compression_0_m_axi_gmem_AWQOS;
  wire leb128_compression_0_m_axi_gmem_AWREADY;
  wire [2:0]leb128_compression_0_m_axi_gmem_AWSIZE;
  wire leb128_compression_0_m_axi_gmem_AWVALID;
  wire [0:0]leb128_compression_0_m_axi_gmem_BID;
  wire leb128_compression_0_m_axi_gmem_BREADY;
  wire [1:0]leb128_compression_0_m_axi_gmem_BRESP;
  wire leb128_compression_0_m_axi_gmem_BVALID;
  wire [31:0]leb128_compression_0_m_axi_gmem_RDATA;
  wire [0:0]leb128_compression_0_m_axi_gmem_RID;
  wire leb128_compression_0_m_axi_gmem_RLAST;
  wire leb128_compression_0_m_axi_gmem_RREADY;
  wire [1:0]leb128_compression_0_m_axi_gmem_RRESP;
  wire leb128_compression_0_m_axi_gmem_RVALID;
  wire [31:0]leb128_compression_0_m_axi_gmem_WDATA;
  wire leb128_compression_0_m_axi_gmem_WLAST;
  wire leb128_compression_0_m_axi_gmem_WREADY;
  wire [3:0]leb128_compression_0_m_axi_gmem_WSTRB;
  wire leb128_compression_0_m_axi_gmem_WVALID;
  wire [14:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [0:0]mig_7series_0_DDR3_CS_N;
  wire [3:0]mig_7series_0_DDR3_DM;
  wire [31:0]mig_7series_0_DDR3_DQ;
  wire [3:0]mig_7series_0_DDR3_DQS_N;
  wire [3:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire reset_rtl_0_1;
  wire [0:0]rst_mig_7series_0_100M_peripheral_aresetn;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [63:0]xdma_0_M_AXI_ARADDR;
  wire [1:0]xdma_0_M_AXI_ARBURST;
  wire [3:0]xdma_0_M_AXI_ARCACHE;
  wire [3:0]xdma_0_M_AXI_ARID;
  wire [7:0]xdma_0_M_AXI_ARLEN;
  wire xdma_0_M_AXI_ARLOCK;
  wire [2:0]xdma_0_M_AXI_ARPROT;
  wire xdma_0_M_AXI_ARREADY;
  wire [2:0]xdma_0_M_AXI_ARSIZE;
  wire xdma_0_M_AXI_ARVALID;
  wire [63:0]xdma_0_M_AXI_AWADDR;
  wire [1:0]xdma_0_M_AXI_AWBURST;
  wire [3:0]xdma_0_M_AXI_AWCACHE;
  wire [3:0]xdma_0_M_AXI_AWID;
  wire [7:0]xdma_0_M_AXI_AWLEN;
  wire xdma_0_M_AXI_AWLOCK;
  wire [2:0]xdma_0_M_AXI_AWPROT;
  wire xdma_0_M_AXI_AWREADY;
  wire [2:0]xdma_0_M_AXI_AWSIZE;
  wire xdma_0_M_AXI_AWVALID;
  wire [3:0]xdma_0_M_AXI_BID;
  wire xdma_0_M_AXI_BREADY;
  wire [1:0]xdma_0_M_AXI_BRESP;
  wire xdma_0_M_AXI_BVALID;
  wire [127:0]xdma_0_M_AXI_RDATA;
  wire [3:0]xdma_0_M_AXI_RID;
  wire xdma_0_M_AXI_RLAST;
  wire xdma_0_M_AXI_RREADY;
  wire [1:0]xdma_0_M_AXI_RRESP;
  wire xdma_0_M_AXI_RVALID;
  wire [127:0]xdma_0_M_AXI_WDATA;
  wire xdma_0_M_AXI_WLAST;
  wire xdma_0_M_AXI_WREADY;
  wire [15:0]xdma_0_M_AXI_WSTRB;
  wire xdma_0_M_AXI_WVALID;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;
  wire [3:0]xdma_0_pcie_mgt_rxn;
  wire [3:0]xdma_0_pcie_mgt_rxp;
  wire [3:0]xdma_0_pcie_mgt_txn;
  wire [3:0]xdma_0_pcie_mgt_txp;

  assign DDR3_0_addr[14:0] = mig_7series_0_DDR3_ADDR;
  assign DDR3_0_ba[2:0] = mig_7series_0_DDR3_BA;
  assign DDR3_0_cas_n = mig_7series_0_DDR3_CAS_N;
  assign DDR3_0_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign DDR3_0_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign DDR3_0_cke[0] = mig_7series_0_DDR3_CKE;
  assign DDR3_0_cs_n[0] = mig_7series_0_DDR3_CS_N;
  assign DDR3_0_dm[3:0] = mig_7series_0_DDR3_DM;
  assign DDR3_0_odt[0] = mig_7series_0_DDR3_ODT;
  assign DDR3_0_ras_n = mig_7series_0_DDR3_RAS_N;
  assign DDR3_0_reset_n = mig_7series_0_DDR3_RESET_N;
  assign DDR3_0_we_n = mig_7series_0_DDR3_WE_N;
  assign PCIE_REF_CLK_1_CLK_N = PCIE_REF_CLK_clk_n[0];
  assign PCIE_REF_CLK_1_CLK_P = PCIE_REF_CLK_clk_p[0];
  assign clk_in1_0_1 = clk50m;
  assign gpio_io_o_0[0] = axi_gpio_0_gpio_io_o;
  assign init_calib_complete_0 = mig_7series_0_init_calib_complete;
  assign pcie_7x_mgt_rtl_0_txn[3:0] = xdma_0_pcie_mgt_txn;
  assign pcie_7x_mgt_rtl_0_txp[3:0] = xdma_0_pcie_mgt_txp;
  assign reset_rtl_0_1 = reset_rtl_0;
  assign xdma_0_pcie_mgt_rxn = pcie_7x_mgt_rtl_0_rxn[3:0];
  assign xdma_0_pcie_mgt_rxp = pcie_7x_mgt_rtl_0_rxp[3:0];
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_aresetn(xdma_0_axi_aresetn),
        .s_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M01_AXI_WVALID));
  design_1_axi_smc_3 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .M03_AXI_araddr(axi_smc_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_smc_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_smc_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_smc_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_smc_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_smc_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_smc_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_smc_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_smc_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_smc_M03_AXI_RDATA),
        .M03_AXI_rready(axi_smc_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_smc_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_smc_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_smc_M03_AXI_WDATA),
        .M03_AXI_wready(axi_smc_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_smc_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_smc_M03_AXI_WVALID),
        .S00_AXI_araddr(xdma_0_M_AXI_ARADDR),
        .S00_AXI_arburst(xdma_0_M_AXI_ARBURST),
        .S00_AXI_arcache(xdma_0_M_AXI_ARCACHE),
        .S00_AXI_arid(xdma_0_M_AXI_ARID),
        .S00_AXI_arlen(xdma_0_M_AXI_ARLEN),
        .S00_AXI_arlock(xdma_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(xdma_0_M_AXI_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(xdma_0_M_AXI_ARREADY),
        .S00_AXI_arsize(xdma_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(xdma_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(xdma_0_M_AXI_AWADDR),
        .S00_AXI_awburst(xdma_0_M_AXI_AWBURST),
        .S00_AXI_awcache(xdma_0_M_AXI_AWCACHE),
        .S00_AXI_awid(xdma_0_M_AXI_AWID),
        .S00_AXI_awlen(xdma_0_M_AXI_AWLEN),
        .S00_AXI_awlock(xdma_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(xdma_0_M_AXI_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(xdma_0_M_AXI_AWREADY),
        .S00_AXI_awsize(xdma_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(xdma_0_M_AXI_AWVALID),
        .S00_AXI_bid(xdma_0_M_AXI_BID),
        .S00_AXI_bready(xdma_0_M_AXI_BREADY),
        .S00_AXI_bresp(xdma_0_M_AXI_BRESP),
        .S00_AXI_bvalid(xdma_0_M_AXI_BVALID),
        .S00_AXI_rdata(xdma_0_M_AXI_RDATA),
        .S00_AXI_rid(xdma_0_M_AXI_RID),
        .S00_AXI_rlast(xdma_0_M_AXI_RLAST),
        .S00_AXI_rready(xdma_0_M_AXI_RREADY),
        .S00_AXI_rresp(xdma_0_M_AXI_RRESP),
        .S00_AXI_rvalid(xdma_0_M_AXI_RVALID),
        .S00_AXI_wdata(xdma_0_M_AXI_WDATA),
        .S00_AXI_wlast(xdma_0_M_AXI_WLAST),
        .S00_AXI_wready(xdma_0_M_AXI_WREADY),
        .S00_AXI_wstrb(xdma_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(xdma_0_M_AXI_WVALID),
        .S01_AXI_araddr(leb128_compression_0_m_axi_gmem_ARADDR),
        .S01_AXI_arburst(leb128_compression_0_m_axi_gmem_ARBURST),
        .S01_AXI_arcache(leb128_compression_0_m_axi_gmem_ARCACHE),
        .S01_AXI_arid(leb128_compression_0_m_axi_gmem_ARID),
        .S01_AXI_arlen(leb128_compression_0_m_axi_gmem_ARLEN),
        .S01_AXI_arlock(leb128_compression_0_m_axi_gmem_ARLOCK[0]),
        .S01_AXI_arprot(leb128_compression_0_m_axi_gmem_ARPROT),
        .S01_AXI_arqos(leb128_compression_0_m_axi_gmem_ARQOS),
        .S01_AXI_arready(leb128_compression_0_m_axi_gmem_ARREADY),
        .S01_AXI_arsize(leb128_compression_0_m_axi_gmem_ARSIZE),
        .S01_AXI_arvalid(leb128_compression_0_m_axi_gmem_ARVALID),
        .S01_AXI_awaddr(leb128_compression_0_m_axi_gmem_AWADDR),
        .S01_AXI_awburst(leb128_compression_0_m_axi_gmem_AWBURST),
        .S01_AXI_awcache(leb128_compression_0_m_axi_gmem_AWCACHE),
        .S01_AXI_awid(leb128_compression_0_m_axi_gmem_AWID),
        .S01_AXI_awlen(leb128_compression_0_m_axi_gmem_AWLEN),
        .S01_AXI_awlock(leb128_compression_0_m_axi_gmem_AWLOCK[0]),
        .S01_AXI_awprot(leb128_compression_0_m_axi_gmem_AWPROT),
        .S01_AXI_awqos(leb128_compression_0_m_axi_gmem_AWQOS),
        .S01_AXI_awready(leb128_compression_0_m_axi_gmem_AWREADY),
        .S01_AXI_awsize(leb128_compression_0_m_axi_gmem_AWSIZE),
        .S01_AXI_awvalid(leb128_compression_0_m_axi_gmem_AWVALID),
        .S01_AXI_bid(leb128_compression_0_m_axi_gmem_BID),
        .S01_AXI_bready(leb128_compression_0_m_axi_gmem_BREADY),
        .S01_AXI_bresp(leb128_compression_0_m_axi_gmem_BRESP),
        .S01_AXI_bvalid(leb128_compression_0_m_axi_gmem_BVALID),
        .S01_AXI_rdata(leb128_compression_0_m_axi_gmem_RDATA),
        .S01_AXI_rid(leb128_compression_0_m_axi_gmem_RID),
        .S01_AXI_rlast(leb128_compression_0_m_axi_gmem_RLAST),
        .S01_AXI_rready(leb128_compression_0_m_axi_gmem_RREADY),
        .S01_AXI_rresp(leb128_compression_0_m_axi_gmem_RRESP),
        .S01_AXI_rvalid(leb128_compression_0_m_axi_gmem_RVALID),
        .S01_AXI_wdata(leb128_compression_0_m_axi_gmem_WDATA),
        .S01_AXI_wlast(leb128_compression_0_m_axi_gmem_WLAST),
        .S01_AXI_wready(leb128_compression_0_m_axi_gmem_WREADY),
        .S01_AXI_wstrb(leb128_compression_0_m_axi_gmem_WSTRB),
        .S01_AXI_wvalid(leb128_compression_0_m_axi_gmem_WVALID),
        .aclk(clk_wiz_clk_out1),
        .aclk1(mig_7series_0_ui_clk),
        .aclk2(xdma_0_axi_aclk),
        .aclk3(clk_wiz_1_clk_out1),
        .aresetn(rst_mig_7series_0_100M_peripheral_aresetn));
  design_1_clk_wiz_2 clk_wiz
       (.clk_in1(mig_7series_0_ui_clk),
        .clk_out1(clk_wiz_clk_out1),
        .reset(mig_7series_0_ui_clk_sync_rst));
  design_1_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_clk_wiz_1_1 clk_wiz_1
       (.clk_in1(mig_7series_0_ui_clk),
        .clk_out1(clk_wiz_1_clk_out1),
        .reset(mig_7series_0_ui_clk_sync_rst));
  design_1_example_0_0 example_0
       (.ap_clk(clk_wiz_1_clk_out1),
        .ap_rst_n(xdma_0_axi_aresetn),
        .s_axi_BUS_A_ARADDR(axi_smc_M02_AXI_ARADDR),
        .s_axi_BUS_A_ARREADY(axi_smc_M02_AXI_ARREADY),
        .s_axi_BUS_A_ARVALID(axi_smc_M02_AXI_ARVALID),
        .s_axi_BUS_A_AWADDR(axi_smc_M02_AXI_AWADDR),
        .s_axi_BUS_A_AWREADY(axi_smc_M02_AXI_AWREADY),
        .s_axi_BUS_A_AWVALID(axi_smc_M02_AXI_AWVALID),
        .s_axi_BUS_A_BREADY(axi_smc_M02_AXI_BREADY),
        .s_axi_BUS_A_BRESP(axi_smc_M02_AXI_BRESP),
        .s_axi_BUS_A_BVALID(axi_smc_M02_AXI_BVALID),
        .s_axi_BUS_A_RDATA(axi_smc_M02_AXI_RDATA),
        .s_axi_BUS_A_RREADY(axi_smc_M02_AXI_RREADY),
        .s_axi_BUS_A_RRESP(axi_smc_M02_AXI_RRESP),
        .s_axi_BUS_A_RVALID(axi_smc_M02_AXI_RVALID),
        .s_axi_BUS_A_WDATA(axi_smc_M02_AXI_WDATA),
        .s_axi_BUS_A_WREADY(axi_smc_M02_AXI_WREADY),
        .s_axi_BUS_A_WSTRB(axi_smc_M02_AXI_WSTRB),
        .s_axi_BUS_A_WVALID(axi_smc_M02_AXI_WVALID));
  design_1_leb128_compression_0_0 leb128_compression_0
       (.ap_clk(clk_wiz_1_clk_out1),
        .ap_rst_n(xdma_0_axi_aresetn),
        .m_axi_gmem_ARADDR(leb128_compression_0_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(leb128_compression_0_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(leb128_compression_0_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARID(leb128_compression_0_m_axi_gmem_ARID),
        .m_axi_gmem_ARLEN(leb128_compression_0_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(leb128_compression_0_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(leb128_compression_0_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(leb128_compression_0_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(leb128_compression_0_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARSIZE(leb128_compression_0_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(leb128_compression_0_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(leb128_compression_0_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(leb128_compression_0_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(leb128_compression_0_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWID(leb128_compression_0_m_axi_gmem_AWID),
        .m_axi_gmem_AWLEN(leb128_compression_0_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(leb128_compression_0_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(leb128_compression_0_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(leb128_compression_0_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(leb128_compression_0_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWSIZE(leb128_compression_0_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(leb128_compression_0_m_axi_gmem_AWVALID),
        .m_axi_gmem_BID(leb128_compression_0_m_axi_gmem_BID),
        .m_axi_gmem_BREADY(leb128_compression_0_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(leb128_compression_0_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(leb128_compression_0_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(leb128_compression_0_m_axi_gmem_RDATA),
        .m_axi_gmem_RID(leb128_compression_0_m_axi_gmem_RID),
        .m_axi_gmem_RLAST(leb128_compression_0_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(leb128_compression_0_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(leb128_compression_0_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(leb128_compression_0_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(leb128_compression_0_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(leb128_compression_0_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(leb128_compression_0_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(leb128_compression_0_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(leb128_compression_0_m_axi_gmem_WVALID),
        .s_axi_CTRL_BUS_ARADDR(axi_smc_M03_AXI_ARADDR),
        .s_axi_CTRL_BUS_ARREADY(axi_smc_M03_AXI_ARREADY),
        .s_axi_CTRL_BUS_ARVALID(axi_smc_M03_AXI_ARVALID),
        .s_axi_CTRL_BUS_AWADDR(axi_smc_M03_AXI_AWADDR),
        .s_axi_CTRL_BUS_AWREADY(axi_smc_M03_AXI_AWREADY),
        .s_axi_CTRL_BUS_AWVALID(axi_smc_M03_AXI_AWVALID),
        .s_axi_CTRL_BUS_BREADY(axi_smc_M03_AXI_BREADY),
        .s_axi_CTRL_BUS_BRESP(axi_smc_M03_AXI_BRESP),
        .s_axi_CTRL_BUS_BVALID(axi_smc_M03_AXI_BVALID),
        .s_axi_CTRL_BUS_RDATA(axi_smc_M03_AXI_RDATA),
        .s_axi_CTRL_BUS_RREADY(axi_smc_M03_AXI_RREADY),
        .s_axi_CTRL_BUS_RRESP(axi_smc_M03_AXI_RRESP),
        .s_axi_CTRL_BUS_RVALID(axi_smc_M03_AXI_RVALID),
        .s_axi_CTRL_BUS_WDATA(axi_smc_M03_AXI_WDATA),
        .s_axi_CTRL_BUS_WREADY(axi_smc_M03_AXI_WREADY),
        .s_axi_CTRL_BUS_WSTRB(axi_smc_M03_AXI_WSTRB),
        .s_axi_CTRL_BUS_WVALID(axi_smc_M03_AXI_WVALID));
  design_1_mig_7series_0_2 mig_7series_0
       (.aresetn(rst_mig_7series_0_100M_peripheral_aresetn),
        .clk_ref_i(clk_wiz_0_clk_out1),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_cs_n(mig_7series_0_DDR3_CS_N),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(DDR3_0_dq[31:0]),
        .ddr3_dqs_n(DDR3_0_dqs_n[3:0]),
        .ddr3_dqs_p(DDR3_0_dqs_p[3:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arqos(axi_smc_M00_AXI_ARQOS),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awqos(axi_smc_M00_AXI_AWQOS),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID),
        .sys_clk_i(clk_wiz_0_clk_out1),
        .sys_rst(xdma_0_axi_aresetn),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  design_1_rst_mig_7series_0_100M_3 rst_mig_7series_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_mig_7series_0_100M_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_clk));
  design_1_util_ds_buf_0_1 util_ds_buf_0
       (.IBUF_DS_N(PCIE_REF_CLK_1_CLK_N),
        .IBUF_DS_P(PCIE_REF_CLK_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  design_1_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .cfg_mgmt_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cfg_mgmt_byte_enable({1'b0,1'b0,1'b0,1'b0}),
        .cfg_mgmt_read(1'b0),
        .cfg_mgmt_type1_cfg_reg_access(1'b0),
        .cfg_mgmt_write(1'b0),
        .cfg_mgmt_write_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_araddr(xdma_0_M_AXI_ARADDR),
        .m_axi_arburst(xdma_0_M_AXI_ARBURST),
        .m_axi_arcache(xdma_0_M_AXI_ARCACHE),
        .m_axi_arid(xdma_0_M_AXI_ARID),
        .m_axi_arlen(xdma_0_M_AXI_ARLEN),
        .m_axi_arlock(xdma_0_M_AXI_ARLOCK),
        .m_axi_arprot(xdma_0_M_AXI_ARPROT),
        .m_axi_arready(xdma_0_M_AXI_ARREADY),
        .m_axi_arsize(xdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(xdma_0_M_AXI_ARVALID),
        .m_axi_awaddr(xdma_0_M_AXI_AWADDR),
        .m_axi_awburst(xdma_0_M_AXI_AWBURST),
        .m_axi_awcache(xdma_0_M_AXI_AWCACHE),
        .m_axi_awid(xdma_0_M_AXI_AWID),
        .m_axi_awlen(xdma_0_M_AXI_AWLEN),
        .m_axi_awlock(xdma_0_M_AXI_AWLOCK),
        .m_axi_awprot(xdma_0_M_AXI_AWPROT),
        .m_axi_awready(xdma_0_M_AXI_AWREADY),
        .m_axi_awsize(xdma_0_M_AXI_AWSIZE),
        .m_axi_awvalid(xdma_0_M_AXI_AWVALID),
        .m_axi_bid(xdma_0_M_AXI_BID),
        .m_axi_bready(xdma_0_M_AXI_BREADY),
        .m_axi_bresp(xdma_0_M_AXI_BRESP),
        .m_axi_bvalid(xdma_0_M_AXI_BVALID),
        .m_axi_rdata(xdma_0_M_AXI_RDATA),
        .m_axi_rid(xdma_0_M_AXI_RID),
        .m_axi_rlast(xdma_0_M_AXI_RLAST),
        .m_axi_rready(xdma_0_M_AXI_RREADY),
        .m_axi_rresp(xdma_0_M_AXI_RRESP),
        .m_axi_rvalid(xdma_0_M_AXI_RVALID),
        .m_axi_wdata(xdma_0_M_AXI_WDATA),
        .m_axi_wlast(xdma_0_M_AXI_WLAST),
        .m_axi_wready(xdma_0_M_AXI_WREADY),
        .m_axi_wstrb(xdma_0_M_AXI_WSTRB),
        .m_axi_wvalid(xdma_0_M_AXI_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .sys_clk(util_ds_buf_0_IBUF_OUT),
        .sys_rst_n(reset_rtl_0_1),
        .usr_irq_req(1'b0));
endmodule
