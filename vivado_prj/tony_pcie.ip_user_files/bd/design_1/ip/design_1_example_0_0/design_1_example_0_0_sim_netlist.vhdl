-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sat Mar  4 21:01:47 2023
-- Host        : MOSS running 64-bit Ubuntu 22.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/tony/fpga/DEMO/k734_pcie_simple/K727_PCIE_XDMA.gen/sources_1/bd/design_1/ip/design_1_example_0_0/design_1_example_0_0_sim_netlist.vhdl
-- Design      : design_1_example_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_0_0_example_BUS_A_s_axi is
  port (
    interrupt : out STD_LOGIC;
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_BUS_A_RVALID : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_BUS_A_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    s_axi_BUS_A_RREADY : in STD_LOGIC;
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC;
    s_axi_BUS_A_AWVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_0_0_example_BUS_A_s_axi : entity is "example_BUS_A_s_axi";
end design_1_example_0_0_example_BUS_A_s_axi;

architecture STRUCTURE of design_1_example_0_0_example_BUS_A_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal a : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ap_done : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal b : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal int_a0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \int_a[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_a[7]_i_3_n_0\ : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_ready_i_2_n_0 : STD_LOGIC;
  signal int_ap_start1 : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_b0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \int_b[7]_i_1_n_0\ : STD_LOGIC;
  signal int_c_i0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \int_c_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_c_i[7]_i_3_n_0\ : STD_LOGIC;
  signal int_c_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \int_c_o[3]_i_2_n_0\ : STD_LOGIC;
  signal \int_c_o[3]_i_3_n_0\ : STD_LOGIC;
  signal \int_c_o[3]_i_4_n_0\ : STD_LOGIC;
  signal \int_c_o[3]_i_5_n_0\ : STD_LOGIC;
  signal \int_c_o[3]_i_6_n_0\ : STD_LOGIC;
  signal \int_c_o[3]_i_7_n_0\ : STD_LOGIC;
  signal \int_c_o[3]_i_8_n_0\ : STD_LOGIC;
  signal \int_c_o[7]_i_2_n_0\ : STD_LOGIC;
  signal \int_c_o[7]_i_3_n_0\ : STD_LOGIC;
  signal \int_c_o[7]_i_4_n_0\ : STD_LOGIC;
  signal \int_c_o[7]_i_5_n_0\ : STD_LOGIC;
  signal \int_c_o[7]_i_6_n_0\ : STD_LOGIC;
  signal \int_c_o[7]_i_7_n_0\ : STD_LOGIC;
  signal \int_c_o[7]_i_8_n_0\ : STD_LOGIC;
  signal int_c_o_ap_vld : STD_LOGIC;
  signal int_c_o_ap_vld_i_1_n_0 : STD_LOGIC;
  signal int_c_o_ap_vld_i_2_n_0 : STD_LOGIC;
  signal \int_c_o_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_c_o_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \int_c_o_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \int_c_o_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \int_c_o_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \int_c_o_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \int_c_o_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_2_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal int_ier : STD_LOGIC;
  signal int_ier_i_1_n_0 : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_interrupt1 : STD_LOGIC;
  signal int_isr6_out : STD_LOGIC;
  signal int_isr_i_1_n_0 : STD_LOGIC;
  signal int_isr_i_2_n_0 : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_2_n_0 : STD_LOGIC;
  signal int_ver : STD_LOGIC_VECTOR ( 7 to 7 );
  signal int_ver_ap_vld : STD_LOGIC;
  signal int_ver_ap_vld_i_1_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_7_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal rdata : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_bus_a_bvalid\ : STD_LOGIC;
  signal \^s_axi_bus_a_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \NLW_int_c_o_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \int_a[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_a[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_a[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_a[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_a[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_a[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_a[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_a[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_auto_restart_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_b[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_b[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_b[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_b[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_b[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_b[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_b[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_b[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_c_i[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_c_i[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_c_i[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_c_i[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_c_i[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_c_i[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_c_i[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_c_i[7]_i_2\ : label is "soft_lutpair14";
  attribute HLUTNM : string;
  attribute HLUTNM of \int_c_o[3]_i_2\ : label is "lutpair2";
  attribute HLUTNM of \int_c_o[3]_i_3\ : label is "lutpair1";
  attribute HLUTNM of \int_c_o[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \int_c_o[3]_i_5\ : label is "lutpair3";
  attribute HLUTNM of \int_c_o[3]_i_6\ : label is "lutpair2";
  attribute HLUTNM of \int_c_o[3]_i_7\ : label is "lutpair1";
  attribute HLUTNM of \int_c_o[3]_i_8\ : label is "lutpair0";
  attribute HLUTNM of \int_c_o[7]_i_2\ : label is "lutpair5";
  attribute HLUTNM of \int_c_o[7]_i_3\ : label is "lutpair4";
  attribute HLUTNM of \int_c_o[7]_i_4\ : label is "lutpair3";
  attribute HLUTNM of \int_c_o[7]_i_7\ : label is "lutpair5";
  attribute HLUTNM of \int_c_o[7]_i_8\ : label is "lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \int_c_o_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_c_o_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of int_gie_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[0]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[7]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[9]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[9]_i_3\ : label is "soft_lutpair1";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  interrupt <= \^interrupt\;
  s_axi_BUS_A_BVALID <= \^s_axi_bus_a_bvalid\;
  s_axi_BUS_A_RVALID <= \^s_axi_bus_a_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BFB"
    )
        port map (
      I0 => s_axi_BUS_A_RREADY,
      I1 => \^s_axi_bus_a_rvalid\,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_BUS_A_ARVALID,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_BUS_A_ARVALID,
      I2 => s_axi_BUS_A_RREADY,
      I3 => \^s_axi_bus_a_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_bus_a_rvalid\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA30BA3F"
    )
        port map (
      I0 => s_axi_BUS_A_BREADY,
      I1 => s_axi_BUS_A_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \^s_axi_bus_a_bvalid\,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_BUS_A_AWVALID,
      I2 => s_axi_BUS_A_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_BUS_A_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_BUS_A_BREADY,
      I3 => \^s_axi_bus_a_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_bus_a_bvalid\,
      R => ap_rst_n_inv
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => p_7_in(7),
      Q => auto_restart_status_reg_n_0,
      R => ap_rst_n_inv
    );
\int_a[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => a(0),
      O => int_a0(0)
    );
\int_a[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(1),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => a(1),
      O => int_a0(1)
    );
\int_a[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(2),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => a(2),
      O => int_a0(2)
    );
\int_a[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(3),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => a(3),
      O => int_a0(3)
    );
\int_a[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(4),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => a(4),
      O => int_a0(4)
    );
\int_a[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(5),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => a(5),
      O => int_a0(5)
    );
\int_a[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(6),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => a(6),
      O => int_a0(6)
    );
\int_a[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => \int_a[7]_i_3_n_0\,
      O => \int_a[7]_i_1_n_0\
    );
\int_a[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(7),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => a(7),
      O => int_a0(7)
    );
\int_a[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[6]\,
      I2 => \waddr_reg_n_0_[0]\,
      I3 => \waddr_reg_n_0_[1]\,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      I5 => s_axi_BUS_A_WVALID,
      O => \int_a[7]_i_3_n_0\
    );
\int_a_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_a[7]_i_1_n_0\,
      D => int_a0(0),
      Q => a(0),
      R => ap_rst_n_inv
    );
\int_a_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_a[7]_i_1_n_0\,
      D => int_a0(1),
      Q => a(1),
      R => ap_rst_n_inv
    );
\int_a_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_a[7]_i_1_n_0\,
      D => int_a0(2),
      Q => a(2),
      R => ap_rst_n_inv
    );
\int_a_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_a[7]_i_1_n_0\,
      D => int_a0(3),
      Q => a(3),
      R => ap_rst_n_inv
    );
\int_a_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_a[7]_i_1_n_0\,
      D => int_a0(4),
      Q => a(4),
      R => ap_rst_n_inv
    );
\int_a_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_a[7]_i_1_n_0\,
      D => int_a0(5),
      Q => a(5),
      R => ap_rst_n_inv
    );
\int_a_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_a[7]_i_1_n_0\,
      D => int_a0(6),
      Q => a(6),
      R => ap_rst_n_inv
    );
\int_a_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_a[7]_i_1_n_0\,
      D => int_a0(7),
      Q => a(7),
      R => ap_rst_n_inv
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => '1',
      Q => p_7_in(2),
      R => ap_rst_n_inv
    );
int_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFEF00FF0000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(6),
      I1 => s_axi_BUS_A_ARADDR(2),
      I2 => int_ap_ready_i_2_n_0,
      I3 => p_7_in(7),
      I4 => ap_done,
      I5 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(0),
      I1 => s_axi_BUS_A_ARADDR(1),
      I2 => ar_hs,
      I3 => s_axi_BUS_A_ARADDR(3),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => s_axi_BUS_A_ARADDR(4),
      O => int_ap_ready_i_2_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => ap_rst_n_inv
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_7_in(7),
      I1 => ap_done,
      I2 => int_ap_start1,
      I3 => s_axi_BUS_A_WDATA(0),
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \int_a[7]_i_3_n_0\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => s_axi_BUS_A_WSTRB(0),
      I4 => \waddr_reg_n_0_[2]\,
      O => int_ap_start1
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => ap_done,
      R => ap_rst_n_inv
    );
int_auto_restart_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(7),
      I1 => int_ap_start1,
      I2 => p_7_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_7_in(7),
      R => ap_rst_n_inv
    );
\int_b[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => b(0),
      O => int_b0(0)
    );
\int_b[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(1),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => b(1),
      O => int_b0(1)
    );
\int_b[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(2),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => b(2),
      O => int_b0(2)
    );
\int_b[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(3),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => b(3),
      O => int_b0(3)
    );
\int_b[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(4),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => b(4),
      O => int_b0(4)
    );
\int_b[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(5),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => b(5),
      O => int_b0(5)
    );
\int_b[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(6),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => b(6),
      O => int_b0(6)
    );
\int_b[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => \int_a[7]_i_3_n_0\,
      O => \int_b[7]_i_1_n_0\
    );
\int_b[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(7),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => b(7),
      O => int_b0(7)
    );
\int_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_b[7]_i_1_n_0\,
      D => int_b0(0),
      Q => b(0),
      R => ap_rst_n_inv
    );
\int_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_b[7]_i_1_n_0\,
      D => int_b0(1),
      Q => b(1),
      R => ap_rst_n_inv
    );
\int_b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_b[7]_i_1_n_0\,
      D => int_b0(2),
      Q => b(2),
      R => ap_rst_n_inv
    );
\int_b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_b[7]_i_1_n_0\,
      D => int_b0(3),
      Q => b(3),
      R => ap_rst_n_inv
    );
\int_b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_b[7]_i_1_n_0\,
      D => int_b0(4),
      Q => b(4),
      R => ap_rst_n_inv
    );
\int_b_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_b[7]_i_1_n_0\,
      D => int_b0(5),
      Q => b(5),
      R => ap_rst_n_inv
    );
\int_b_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_b[7]_i_1_n_0\,
      D => int_b0(6),
      Q => b(6),
      R => ap_rst_n_inv
    );
\int_b_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_b[7]_i_1_n_0\,
      D => int_b0(7),
      Q => b(7),
      R => ap_rst_n_inv
    );
\int_c_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => c_i(0),
      O => int_c_i0(0)
    );
\int_c_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(1),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => c_i(1),
      O => int_c_i0(1)
    );
\int_c_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(2),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => c_i(2),
      O => int_c_i0(2)
    );
\int_c_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(3),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => c_i(3),
      O => int_c_i0(3)
    );
\int_c_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(4),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => c_i(4),
      O => int_c_i0(4)
    );
\int_c_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(5),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => c_i(5),
      O => int_c_i0(5)
    );
\int_c_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(6),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => c_i(6),
      O => int_c_i0(6)
    );
\int_c_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \int_c_i[7]_i_3_n_0\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \waddr_reg_n_0_[2]\,
      O => \int_c_i[7]_i_1_n_0\
    );
\int_c_i[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(7),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => c_i(7),
      O => int_c_i0(7)
    );
\int_c_i[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => s_axi_BUS_A_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => \waddr_reg_n_0_[1]\,
      I3 => \waddr_reg_n_0_[0]\,
      I4 => \waddr_reg_n_0_[6]\,
      O => \int_c_i[7]_i_3_n_0\
    );
\int_c_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c_i[7]_i_1_n_0\,
      D => int_c_i0(0),
      Q => c_i(0),
      R => ap_rst_n_inv
    );
\int_c_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c_i[7]_i_1_n_0\,
      D => int_c_i0(1),
      Q => c_i(1),
      R => ap_rst_n_inv
    );
\int_c_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c_i[7]_i_1_n_0\,
      D => int_c_i0(2),
      Q => c_i(2),
      R => ap_rst_n_inv
    );
\int_c_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c_i[7]_i_1_n_0\,
      D => int_c_i0(3),
      Q => c_i(3),
      R => ap_rst_n_inv
    );
\int_c_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c_i[7]_i_1_n_0\,
      D => int_c_i0(4),
      Q => c_i(4),
      R => ap_rst_n_inv
    );
\int_c_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c_i[7]_i_1_n_0\,
      D => int_c_i0(5),
      Q => c_i(5),
      R => ap_rst_n_inv
    );
\int_c_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c_i[7]_i_1_n_0\,
      D => int_c_i0(6),
      Q => c_i(6),
      R => ap_rst_n_inv
    );
\int_c_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c_i[7]_i_1_n_0\,
      D => int_c_i0(7),
      Q => c_i(7),
      R => ap_rst_n_inv
    );
\int_c_o[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c_i(2),
      I1 => a(2),
      I2 => b(2),
      O => \int_c_o[3]_i_2_n_0\
    );
\int_c_o[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c_i(1),
      I1 => a(1),
      I2 => b(1),
      O => \int_c_o[3]_i_3_n_0\
    );
\int_c_o[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a(0),
      I1 => c_i(0),
      I2 => b(0),
      O => \int_c_o[3]_i_4_n_0\
    );
\int_c_o[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c_i(3),
      I1 => a(3),
      I2 => b(3),
      I3 => \int_c_o[3]_i_2_n_0\,
      O => \int_c_o[3]_i_5_n_0\
    );
\int_c_o[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c_i(2),
      I1 => a(2),
      I2 => b(2),
      I3 => \int_c_o[3]_i_3_n_0\,
      O => \int_c_o[3]_i_6_n_0\
    );
\int_c_o[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c_i(1),
      I1 => a(1),
      I2 => b(1),
      I3 => \int_c_o[3]_i_4_n_0\,
      O => \int_c_o[3]_i_7_n_0\
    );
\int_c_o[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => c_i(0),
      I2 => b(0),
      O => \int_c_o[3]_i_8_n_0\
    );
\int_c_o[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c_i(5),
      I1 => a(5),
      I2 => b(5),
      O => \int_c_o[7]_i_2_n_0\
    );
\int_c_o[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c_i(4),
      I1 => a(4),
      I2 => b(4),
      O => \int_c_o[7]_i_3_n_0\
    );
\int_c_o[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c_i(3),
      I1 => a(3),
      I2 => b(3),
      O => \int_c_o[7]_i_4_n_0\
    );
\int_c_o[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => c_i(6),
      I1 => a(6),
      I2 => b(6),
      I3 => c_i(7),
      I4 => b(7),
      I5 => a(7),
      O => \int_c_o[7]_i_5_n_0\
    );
\int_c_o[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_c_o[7]_i_2_n_0\,
      I1 => c_i(6),
      I2 => a(6),
      I3 => b(6),
      O => \int_c_o[7]_i_6_n_0\
    );
\int_c_o[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c_i(5),
      I1 => a(5),
      I2 => b(5),
      I3 => \int_c_o[7]_i_3_n_0\,
      O => \int_c_o[7]_i_7_n_0\
    );
\int_c_o[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c_i(4),
      I1 => a(4),
      I2 => b(4),
      I3 => \int_c_o[7]_i_4_n_0\,
      O => \int_c_o[7]_i_8_n_0\
    );
int_c_o_ap_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFAAAAAAAA"
    )
        port map (
      I0 => ap_done,
      I1 => int_c_o_ap_vld_i_2_n_0,
      I2 => ar_hs,
      I3 => s_axi_BUS_A_ARADDR(1),
      I4 => s_axi_BUS_A_ARADDR(0),
      I5 => int_c_o_ap_vld,
      O => int_c_o_ap_vld_i_1_n_0
    );
int_c_o_ap_vld_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => s_axi_BUS_A_ARADDR(2),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(6),
      O => int_c_o_ap_vld_i_2_n_0
    );
int_c_o_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_c_o_ap_vld_i_1_n_0,
      Q => int_c_o_ap_vld,
      R => ap_rst_n_inv
    );
\int_c_o_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_done,
      D => c_o(0),
      Q => int_c_o(0),
      R => ap_rst_n_inv
    );
\int_c_o_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_done,
      D => c_o(1),
      Q => int_c_o(1),
      R => ap_rst_n_inv
    );
\int_c_o_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_done,
      D => c_o(2),
      Q => int_c_o(2),
      R => ap_rst_n_inv
    );
\int_c_o_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_done,
      D => c_o(3),
      Q => int_c_o(3),
      R => ap_rst_n_inv
    );
\int_c_o_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_c_o_reg[3]_i_1_n_0\,
      CO(2) => \int_c_o_reg[3]_i_1_n_1\,
      CO(1) => \int_c_o_reg[3]_i_1_n_2\,
      CO(0) => \int_c_o_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \int_c_o[3]_i_2_n_0\,
      DI(2) => \int_c_o[3]_i_3_n_0\,
      DI(1) => \int_c_o[3]_i_4_n_0\,
      DI(0) => '0',
      O(3 downto 0) => c_o(3 downto 0),
      S(3) => \int_c_o[3]_i_5_n_0\,
      S(2) => \int_c_o[3]_i_6_n_0\,
      S(1) => \int_c_o[3]_i_7_n_0\,
      S(0) => \int_c_o[3]_i_8_n_0\
    );
\int_c_o_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_done,
      D => c_o(4),
      Q => int_c_o(4),
      R => ap_rst_n_inv
    );
\int_c_o_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_done,
      D => c_o(5),
      Q => int_c_o(5),
      R => ap_rst_n_inv
    );
\int_c_o_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_done,
      D => c_o(6),
      Q => int_c_o(6),
      R => ap_rst_n_inv
    );
\int_c_o_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_done,
      D => c_o(7),
      Q => int_c_o(7),
      R => ap_rst_n_inv
    );
\int_c_o_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_c_o_reg[3]_i_1_n_0\,
      CO(3) => \NLW_int_c_o_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \int_c_o_reg[7]_i_1_n_1\,
      CO(1) => \int_c_o_reg[7]_i_1_n_2\,
      CO(0) => \int_c_o_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \int_c_o[7]_i_2_n_0\,
      DI(1) => \int_c_o[7]_i_3_n_0\,
      DI(0) => \int_c_o[7]_i_4_n_0\,
      O(3 downto 0) => c_o(7 downto 4),
      S(3) => \int_c_o[7]_i_5_n_0\,
      S(2) => \int_c_o[7]_i_6_n_0\,
      S(1) => \int_c_o[7]_i_7_n_0\,
      S(0) => \int_c_o[7]_i_8_n_0\
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => int_gie_i_2_n_0,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => s_axi_BUS_A_WSTRB(0),
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \int_a[7]_i_3_n_0\,
      I2 => \waddr_reg_n_0_[5]\,
      O => int_gie_i_2_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => ap_rst_n_inv
    );
int_ier_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \waddr_reg_n_0_[2]\,
      I3 => int_isr_i_2_n_0,
      I4 => int_ier,
      O => int_ier_i_1_n_0
    );
int_ier_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ier_i_1_n_0,
      Q => int_ier,
      R => ap_rst_n_inv
    );
int_interrupt_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_interrupt1,
      I1 => int_gie_reg_n_0,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => ap_rst_n_inv
    );
int_isr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFF2000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => int_isr_i_2_n_0,
      I2 => s_axi_BUS_A_WSTRB(0),
      I3 => \waddr_reg_n_0_[2]\,
      I4 => int_isr6_out,
      I5 => int_interrupt1,
      O => int_isr_i_1_n_0
    );
int_isr_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \int_a[7]_i_3_n_0\,
      I1 => \waddr_reg_n_0_[5]\,
      I2 => \waddr_reg_n_0_[3]\,
      O => int_isr_i_2_n_0
    );
int_isr_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_done,
      I1 => int_ier,
      O => int_isr6_out
    );
int_isr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_isr_i_1_n_0,
      Q => int_interrupt1,
      R => ap_rst_n_inv
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F5D3F0C"
    )
        port map (
      I0 => int_task_ap_done_i_2_n_0,
      I1 => auto_restart_status_reg_n_0,
      I2 => p_7_in(2),
      I3 => ap_done,
      I4 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \rdata[0]_i_5_n_0\,
      I1 => ar_hs,
      I2 => s_axi_BUS_A_ARADDR(1),
      I3 => s_axi_BUS_A_ARADDR(0),
      I4 => s_axi_BUS_A_ARADDR(2),
      I5 => s_axi_BUS_A_ARADDR(6),
      O => int_task_ap_done_i_2_n_0
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => ap_rst_n_inv
    );
int_ver_ap_vld_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => ap_done,
      I1 => s_axi_BUS_A_ARADDR(6),
      I2 => s_axi_BUS_A_ARADDR(2),
      I3 => int_ap_ready_i_2_n_0,
      I4 => int_ver_ap_vld,
      O => int_ver_ap_vld_i_1_n_0
    );
int_ver_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_ver_ap_vld_i_1_n_0,
      Q => int_ver_ap_vld,
      R => ap_rst_n_inv
    );
\int_ver_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_done,
      D => '1',
      Q => int_ver(7),
      R => ap_rst_n_inv
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011101010111011"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(1),
      I1 => s_axi_BUS_A_ARADDR(0),
      I2 => \rdata[0]_i_2_n_0\,
      I3 => s_axi_BUS_A_ARADDR(6),
      I4 => \rdata[0]_i_3_n_0\,
      I5 => \rdata[0]_i_4_n_0\,
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800000F88000000"
    )
        port map (
      I0 => int_ver_ap_vld,
      I1 => \rdata[0]_i_5_n_0\,
      I2 => s_axi_BUS_A_ARADDR(4),
      I3 => s_axi_BUS_A_ARADDR(2),
      I4 => s_axi_BUS_A_ARADDR(6),
      I5 => \rdata[0]_i_6_n_0\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => int_c_o_ap_vld,
      I3 => s_axi_BUS_A_ARADDR(2),
      I4 => s_axi_BUS_A_ARADDR(4),
      I5 => \rdata[0]_i_7_n_0\,
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1DFFFFFFFF"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => int_interrupt1,
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => s_axi_BUS_A_ARADDR(2),
      O => \rdata[0]_i_4_n_0\
    );
\rdata[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(4),
      I1 => s_axi_BUS_A_ARADDR(5),
      I2 => s_axi_BUS_A_ARADDR(3),
      O => \rdata[0]_i_5_n_0\
    );
\rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => s_axi_BUS_A_ARADDR(5),
      I3 => int_ier,
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => ap_done,
      O => \rdata[0]_i_6_n_0\
    );
\rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E20000000000"
    )
        port map (
      I0 => c_i(0),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => int_c_o(0),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => s_axi_BUS_A_ARADDR(2),
      I5 => s_axi_BUS_A_ARADDR(4),
      O => \rdata[0]_i_7_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000200AAAAAAAA"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => s_axi_BUS_A_ARADDR(6),
      I2 => s_axi_BUS_A_ARADDR(2),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => \rdata[1]_i_3_n_0\,
      I5 => \rdata[3]_i_3_n_0\,
      O => \rdata[1]_i_1_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA00FA00EEFFEE00"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(4),
      I1 => a(1),
      I2 => b(1),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => int_task_ap_done,
      I5 => s_axi_BUS_A_ARADDR(3),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFFFEF"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(1),
      I1 => s_axi_BUS_A_ARADDR(0),
      I2 => c_i(1),
      I3 => s_axi_BUS_A_ARADDR(3),
      I4 => int_c_o(1),
      O => \rdata[1]_i_3_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000200AAAAAAAA"
    )
        port map (
      I0 => \rdata[2]_i_2_n_0\,
      I1 => s_axi_BUS_A_ARADDR(6),
      I2 => s_axi_BUS_A_ARADDR(2),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => \rdata[2]_i_3_n_0\,
      I5 => \rdata[3]_i_3_n_0\,
      O => \rdata[2]_i_1_n_0\
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA00CCF0"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => p_7_in(2),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => s_axi_BUS_A_ARADDR(4),
      O => \rdata[2]_i_2_n_0\
    );
\rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFFFEF"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(1),
      I1 => s_axi_BUS_A_ARADDR(0),
      I2 => c_i(2),
      I3 => s_axi_BUS_A_ARADDR(3),
      I4 => int_c_o(2),
      O => \rdata[2]_i_3_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88800080AAAAAAAA"
    )
        port map (
      I0 => \rdata[3]_i_2_n_0\,
      I1 => \rdata[4]_i_3_n_0\,
      I2 => c_i(3),
      I3 => s_axi_BUS_A_ARADDR(3),
      I4 => int_c_o(3),
      I5 => \rdata[3]_i_3_n_0\,
      O => rdata(3)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA00FA00FCFFFC00"
    )
        port map (
      I0 => b(3),
      I1 => a(3),
      I2 => s_axi_BUS_A_ARADDR(4),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => int_ap_ready,
      I5 => s_axi_BUS_A_ARADDR(3),
      O => \rdata[3]_i_2_n_0\
    );
\rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(4),
      I1 => s_axi_BUS_A_ARADDR(0),
      I2 => s_axi_BUS_A_ARADDR(1),
      I3 => s_axi_BUS_A_ARADDR(6),
      I4 => s_axi_BUS_A_ARADDR(2),
      O => \rdata[3]_i_3_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF4F000000000000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(3),
      I1 => c_i(4),
      I2 => s_axi_BUS_A_ARADDR(4),
      I3 => int_c_o(4),
      I4 => \rdata[4]_i_2_n_0\,
      I5 => \rdata[4]_i_3_n_0\,
      O => \rdata[4]_i_1_n_0\
    );
\rdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FECE"
    )
        port map (
      I0 => a(4),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => s_axi_BUS_A_ARADDR(3),
      I3 => b(4),
      O => \rdata[4]_i_2_n_0\
    );
\rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARADDR(0),
      I2 => s_axi_BUS_A_ARADDR(1),
      I3 => s_axi_BUS_A_ARADDR(6),
      I4 => s_axi_BUS_A_ARADDR(2),
      O => \rdata[4]_i_3_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(2),
      I1 => s_axi_BUS_A_ARADDR(6),
      I2 => s_axi_BUS_A_ARADDR(1),
      I3 => s_axi_BUS_A_ARADDR(0),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => \rdata[5]_i_2_n_0\,
      O => rdata(5)
    );
\rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => int_c_o(5),
      I1 => c_i(5),
      I2 => s_axi_BUS_A_ARADDR(4),
      I3 => b(5),
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => a(5),
      O => \rdata[5]_i_2_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(2),
      I1 => s_axi_BUS_A_ARADDR(6),
      I2 => s_axi_BUS_A_ARADDR(1),
      I3 => s_axi_BUS_A_ARADDR(0),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => \rdata[6]_i_2_n_0\,
      O => rdata(6)
    );
\rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => int_c_o(6),
      I1 => c_i(6),
      I2 => s_axi_BUS_A_ARADDR(4),
      I3 => b(6),
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => a(6),
      O => \rdata[6]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \rdata[7]_i_3_n_0\,
      I1 => s_axi_BUS_A_ARADDR(1),
      I2 => s_axi_BUS_A_ARADDR(0),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => ar_hs,
      O => \rdata[7]_i_1_n_0\
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888A00000000"
    )
        port map (
      I0 => \rdata[7]_i_4_n_0\,
      I1 => \rdata[7]_i_5_n_0\,
      I2 => s_axi_BUS_A_ARADDR(6),
      I3 => s_axi_BUS_A_ARADDR(2),
      I4 => s_axi_BUS_A_ARADDR(4),
      I5 => \rdata[7]_i_6_n_0\,
      O => \rdata[7]_i_2_n_0\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(4),
      I1 => s_axi_BUS_A_ARADDR(2),
      I2 => int_ver(7),
      I3 => s_axi_BUS_A_ARADDR(6),
      O => \rdata[7]_i_3_n_0\
    );
\rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA00FA00EEFFEE00"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(4),
      I1 => a(7),
      I2 => b(7),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => p_7_in(7),
      I5 => s_axi_BUS_A_ARADDR(3),
      O => \rdata[7]_i_4_n_0\
    );
\rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200000000"
    )
        port map (
      I0 => c_i(7),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => int_c_o(7),
      I3 => s_axi_BUS_A_ARADDR(6),
      I4 => s_axi_BUS_A_ARADDR(2),
      I5 => s_axi_BUS_A_ARADDR(5),
      O => \rdata[7]_i_5_n_0\
    );
\rdata[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(0),
      I1 => s_axi_BUS_A_ARADDR(1),
      O => \rdata[7]_i_6_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_BUS_A_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(3),
      I1 => s_axi_BUS_A_ARADDR(5),
      I2 => s_axi_BUS_A_ARADDR(4),
      I3 => \^interrupt\,
      I4 => \rdata[9]_i_3_n_0\,
      O => rdata(9)
    );
\rdata[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(2),
      I1 => s_axi_BUS_A_ARADDR(6),
      I2 => s_axi_BUS_A_ARADDR(1),
      I3 => s_axi_BUS_A_ARADDR(0),
      O => \rdata[9]_i_3_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_BUS_A_RDATA(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[1]_i_1_n_0\,
      Q => s_axi_BUS_A_RDATA(1),
      S => \rdata[7]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[2]_i_1_n_0\,
      Q => s_axi_BUS_A_RDATA(2),
      S => \rdata[7]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_BUS_A_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[4]_i_1_n_0\,
      Q => s_axi_BUS_A_RDATA(4),
      S => \rdata[7]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(5),
      Q => s_axi_BUS_A_RDATA(5),
      R => '0'
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(6),
      Q => s_axi_BUS_A_RDATA(6),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[7]_i_2_n_0\,
      Q => s_axi_BUS_A_RDATA(7),
      S => \rdata[7]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(9),
      Q => s_axi_BUS_A_RDATA(8),
      R => '0'
    );
\waddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_BUS_A_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(4),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(5),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(6),
      Q => \waddr_reg_n_0_[6]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_0_0_example is
  port (
    s_axi_BUS_A_AWVALID : in STD_LOGIC;
    s_axi_BUS_A_AWREADY : out STD_LOGIC;
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    s_axi_BUS_A_WREADY : out STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    s_axi_BUS_A_ARREADY : out STD_LOGIC;
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_BUS_A_RVALID : out STD_LOGIC;
    s_axi_BUS_A_RREADY : in STD_LOGIC;
    s_axi_BUS_A_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC;
    s_axi_BUS_A_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_BUS_A_ADDR_WIDTH : integer;
  attribute C_S_AXI_BUS_A_ADDR_WIDTH of design_1_example_0_0_example : entity is 7;
  attribute C_S_AXI_BUS_A_DATA_WIDTH : integer;
  attribute C_S_AXI_BUS_A_DATA_WIDTH of design_1_example_0_0_example : entity is 32;
  attribute C_S_AXI_BUS_A_WSTRB_WIDTH : integer;
  attribute C_S_AXI_BUS_A_WSTRB_WIDTH of design_1_example_0_0_example : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_example_0_0_example : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of design_1_example_0_0_example : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_0_0_example : entity is "example";
  attribute hls_module : string;
  attribute hls_module of design_1_example_0_0_example : entity is "yes";
end design_1_example_0_0_example;

architecture STRUCTURE of design_1_example_0_0_example is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bus_a_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  s_axi_BUS_A_BRESP(1) <= \<const0>\;
  s_axi_BUS_A_BRESP(0) <= \<const0>\;
  s_axi_BUS_A_RDATA(31) <= \<const0>\;
  s_axi_BUS_A_RDATA(30) <= \<const0>\;
  s_axi_BUS_A_RDATA(29) <= \<const0>\;
  s_axi_BUS_A_RDATA(28) <= \<const0>\;
  s_axi_BUS_A_RDATA(27) <= \<const0>\;
  s_axi_BUS_A_RDATA(26) <= \<const0>\;
  s_axi_BUS_A_RDATA(25) <= \<const0>\;
  s_axi_BUS_A_RDATA(24) <= \<const0>\;
  s_axi_BUS_A_RDATA(23) <= \<const0>\;
  s_axi_BUS_A_RDATA(22) <= \<const0>\;
  s_axi_BUS_A_RDATA(21) <= \<const0>\;
  s_axi_BUS_A_RDATA(20) <= \<const0>\;
  s_axi_BUS_A_RDATA(19) <= \<const0>\;
  s_axi_BUS_A_RDATA(18) <= \<const0>\;
  s_axi_BUS_A_RDATA(17) <= \<const0>\;
  s_axi_BUS_A_RDATA(16) <= \<const0>\;
  s_axi_BUS_A_RDATA(15) <= \<const0>\;
  s_axi_BUS_A_RDATA(14) <= \<const0>\;
  s_axi_BUS_A_RDATA(13) <= \<const0>\;
  s_axi_BUS_A_RDATA(12) <= \<const0>\;
  s_axi_BUS_A_RDATA(11) <= \<const0>\;
  s_axi_BUS_A_RDATA(10) <= \<const0>\;
  s_axi_BUS_A_RDATA(9) <= \^s_axi_bus_a_rdata\(9);
  s_axi_BUS_A_RDATA(8) <= \<const0>\;
  s_axi_BUS_A_RDATA(7 downto 0) <= \^s_axi_bus_a_rdata\(7 downto 0);
  s_axi_BUS_A_RRESP(1) <= \<const0>\;
  s_axi_BUS_A_RRESP(0) <= \<const0>\;
BUS_A_s_axi_U: entity work.design_1_example_0_0_example_BUS_A_s_axi
     port map (
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_BUS_A_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_BUS_A_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_BUS_A_WREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_BUS_A_ARADDR(6 downto 0) => s_axi_BUS_A_ARADDR(6 downto 0),
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_ARVALID,
      s_axi_BUS_A_AWADDR(6 downto 0) => s_axi_BUS_A_AWADDR(6 downto 0),
      s_axi_BUS_A_AWVALID => s_axi_BUS_A_AWVALID,
      s_axi_BUS_A_BREADY => s_axi_BUS_A_BREADY,
      s_axi_BUS_A_BVALID => s_axi_BUS_A_BVALID,
      s_axi_BUS_A_RDATA(8) => \^s_axi_bus_a_rdata\(9),
      s_axi_BUS_A_RDATA(7 downto 0) => \^s_axi_bus_a_rdata\(7 downto 0),
      s_axi_BUS_A_RREADY => s_axi_BUS_A_RREADY,
      s_axi_BUS_A_RVALID => s_axi_BUS_A_RVALID,
      s_axi_BUS_A_WDATA(7 downto 0) => s_axi_BUS_A_WDATA(7 downto 0),
      s_axi_BUS_A_WSTRB(0) => s_axi_BUS_A_WSTRB(0),
      s_axi_BUS_A_WVALID => s_axi_BUS_A_WVALID
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_0_0 is
  port (
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_BUS_A_AWVALID : in STD_LOGIC;
    s_axi_BUS_A_AWREADY : out STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    s_axi_BUS_A_WREADY : out STD_LOGIC;
    s_axi_BUS_A_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC;
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    s_axi_BUS_A_ARREADY : out STD_LOGIC;
    s_axi_BUS_A_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_RVALID : out STD_LOGIC;
    s_axi_BUS_A_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_example_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_example_0_0 : entity is "design_1_example_0_0,example,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_example_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_example_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_example_0_0 : entity is "example,Vivado 2022.2";
  attribute hls_module : string;
  attribute hls_module of design_1_example_0_0 : entity is "yes";
end design_1_example_0_0;

architecture STRUCTURE of design_1_example_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bus_a_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_s_axi_BUS_A_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_BUS_A_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_inst_s_axi_BUS_A_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_BUS_A_ADDR_WIDTH : integer;
  attribute C_S_AXI_BUS_A_ADDR_WIDTH of inst : label is 7;
  attribute C_S_AXI_BUS_A_DATA_WIDTH : integer;
  attribute C_S_AXI_BUS_A_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_BUS_A_WSTRB_WIDTH : integer;
  attribute C_S_AXI_BUS_A_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_BUS_A, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARREADY";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWREADY";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BREADY";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_BUS_A_RREADY : signal is "XIL_INTERFACENAME s_axi_BUS_A, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 125000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WREADY";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARADDR";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWADDR";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BRESP";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RDATA";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RRESP";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WDATA";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WSTRB";
begin
  s_axi_BUS_A_BRESP(1) <= \<const0>\;
  s_axi_BUS_A_BRESP(0) <= \<const0>\;
  s_axi_BUS_A_RDATA(31) <= \<const0>\;
  s_axi_BUS_A_RDATA(30) <= \<const0>\;
  s_axi_BUS_A_RDATA(29) <= \<const0>\;
  s_axi_BUS_A_RDATA(28) <= \<const0>\;
  s_axi_BUS_A_RDATA(27) <= \<const0>\;
  s_axi_BUS_A_RDATA(26) <= \<const0>\;
  s_axi_BUS_A_RDATA(25) <= \<const0>\;
  s_axi_BUS_A_RDATA(24) <= \<const0>\;
  s_axi_BUS_A_RDATA(23) <= \<const0>\;
  s_axi_BUS_A_RDATA(22) <= \<const0>\;
  s_axi_BUS_A_RDATA(21) <= \<const0>\;
  s_axi_BUS_A_RDATA(20) <= \<const0>\;
  s_axi_BUS_A_RDATA(19) <= \<const0>\;
  s_axi_BUS_A_RDATA(18) <= \<const0>\;
  s_axi_BUS_A_RDATA(17) <= \<const0>\;
  s_axi_BUS_A_RDATA(16) <= \<const0>\;
  s_axi_BUS_A_RDATA(15) <= \<const0>\;
  s_axi_BUS_A_RDATA(14) <= \<const0>\;
  s_axi_BUS_A_RDATA(13) <= \<const0>\;
  s_axi_BUS_A_RDATA(12) <= \<const0>\;
  s_axi_BUS_A_RDATA(11) <= \<const0>\;
  s_axi_BUS_A_RDATA(10) <= \<const0>\;
  s_axi_BUS_A_RDATA(9) <= \^s_axi_bus_a_rdata\(9);
  s_axi_BUS_A_RDATA(8) <= \<const0>\;
  s_axi_BUS_A_RDATA(7 downto 0) <= \^s_axi_bus_a_rdata\(7 downto 0);
  s_axi_BUS_A_RRESP(1) <= \<const0>\;
  s_axi_BUS_A_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_example_0_0_example
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_BUS_A_ARADDR(6 downto 0) => s_axi_BUS_A_ARADDR(6 downto 0),
      s_axi_BUS_A_ARREADY => s_axi_BUS_A_ARREADY,
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_ARVALID,
      s_axi_BUS_A_AWADDR(6 downto 0) => s_axi_BUS_A_AWADDR(6 downto 0),
      s_axi_BUS_A_AWREADY => s_axi_BUS_A_AWREADY,
      s_axi_BUS_A_AWVALID => s_axi_BUS_A_AWVALID,
      s_axi_BUS_A_BREADY => s_axi_BUS_A_BREADY,
      s_axi_BUS_A_BRESP(1 downto 0) => NLW_inst_s_axi_BUS_A_BRESP_UNCONNECTED(1 downto 0),
      s_axi_BUS_A_BVALID => s_axi_BUS_A_BVALID,
      s_axi_BUS_A_RDATA(31 downto 10) => NLW_inst_s_axi_BUS_A_RDATA_UNCONNECTED(31 downto 10),
      s_axi_BUS_A_RDATA(9) => \^s_axi_bus_a_rdata\(9),
      s_axi_BUS_A_RDATA(8) => NLW_inst_s_axi_BUS_A_RDATA_UNCONNECTED(8),
      s_axi_BUS_A_RDATA(7 downto 0) => \^s_axi_bus_a_rdata\(7 downto 0),
      s_axi_BUS_A_RREADY => s_axi_BUS_A_RREADY,
      s_axi_BUS_A_RRESP(1 downto 0) => NLW_inst_s_axi_BUS_A_RRESP_UNCONNECTED(1 downto 0),
      s_axi_BUS_A_RVALID => s_axi_BUS_A_RVALID,
      s_axi_BUS_A_WDATA(31 downto 8) => B"000000000000000000000000",
      s_axi_BUS_A_WDATA(7 downto 0) => s_axi_BUS_A_WDATA(7 downto 0),
      s_axi_BUS_A_WREADY => s_axi_BUS_A_WREADY,
      s_axi_BUS_A_WSTRB(3 downto 1) => B"000",
      s_axi_BUS_A_WSTRB(0) => s_axi_BUS_A_WSTRB(0),
      s_axi_BUS_A_WVALID => s_axi_BUS_A_WVALID
    );
end STRUCTURE;
