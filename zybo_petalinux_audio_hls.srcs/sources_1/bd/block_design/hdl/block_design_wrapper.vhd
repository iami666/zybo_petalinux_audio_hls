--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Sun Aug  7 13:02:51 2016
--Host        : andrewandrepowell2-desktop running 64-bit Ubuntu 16.04 LTS
--Command     : generate_target block_design_wrapper.bd
--Design      : block_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_wrapper is
  port (
    AC_BCLK : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_MCLK : out STD_LOGIC;
    AC_MUTE_N : out STD_LOGIC;
    AC_PBLRC : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_RELRC : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_SDATA_I : in STD_LOGIC;
    AC_SDATA_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    ac_i2c_scl_io : inout STD_LOGIC;
    ac_i2c_sda_io : inout STD_LOGIC
  );
end block_design_wrapper;

architecture STRUCTURE of block_design_wrapper is
  component block_design is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    AC_I2C_sda_i : in STD_LOGIC;
    AC_I2C_sda_o : out STD_LOGIC;
    AC_I2C_sda_t : out STD_LOGIC;
    AC_I2C_scl_i : in STD_LOGIC;
    AC_I2C_scl_o : out STD_LOGIC;
    AC_I2C_scl_t : out STD_LOGIC;
    AC_MCLK : out STD_LOGIC;
    AC_SDATA_I : in STD_LOGIC;
    AC_MUTE_N : out STD_LOGIC;
    AC_SDATA_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_BCLK : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_PBLRC : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_RELRC : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component block_design;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal ac_i2c_scl_i : STD_LOGIC;
  signal ac_i2c_scl_o : STD_LOGIC;
  signal ac_i2c_scl_t : STD_LOGIC;
  signal ac_i2c_sda_i : STD_LOGIC;
  signal ac_i2c_sda_o : STD_LOGIC;
  signal ac_i2c_sda_t : STD_LOGIC;
begin
ac_i2c_scl_iobuf: component IOBUF
     port map (
      I => ac_i2c_scl_o,
      IO => ac_i2c_scl_io,
      O => ac_i2c_scl_i,
      T => ac_i2c_scl_t
    );
ac_i2c_sda_iobuf: component IOBUF
     port map (
      I => ac_i2c_sda_o,
      IO => ac_i2c_sda_io,
      O => ac_i2c_sda_i,
      T => ac_i2c_sda_t
    );
block_design_i: component block_design
     port map (
      AC_BCLK(0) => AC_BCLK(0),
      AC_I2C_scl_i => ac_i2c_scl_i,
      AC_I2C_scl_o => ac_i2c_scl_o,
      AC_I2C_scl_t => ac_i2c_scl_t,
      AC_I2C_sda_i => ac_i2c_sda_i,
      AC_I2C_sda_o => ac_i2c_sda_o,
      AC_I2C_sda_t => ac_i2c_sda_t,
      AC_MCLK => AC_MCLK,
      AC_MUTE_N => AC_MUTE_N,
      AC_PBLRC(0) => AC_PBLRC(0),
      AC_RELRC(0) => AC_RELRC(0),
      AC_SDATA_I => AC_SDATA_I,
      AC_SDATA_O(0) => AC_SDATA_O(0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb
    );
end STRUCTURE;
