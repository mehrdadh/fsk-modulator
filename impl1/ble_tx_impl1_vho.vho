
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.10.3.144

-- ldbanno -n VHDL -o ble_tx_impl1_vho.vho -w -neg -gui -msgset C:/work/tinysdr_fpga_ble_tx/promote.xml ble_tx_impl1.ncd 
-- Netlist created on Mon May 13 19:30:51 2019
-- Netlist written on Mon May 13 19:31:16 2019
-- Design is for device LFE5U-25F
-- Design is for package CABGA256
-- Design is for performance grade 6

-- entity sapiobuf
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf : ENTITY IS TRUE;

  end sapiobuf;

  architecture Structure of sapiobuf is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity vcc
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity vcc is
    port (PWR1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vcc : ENTITY IS TRUE;

  end vcc;

  architecture Structure of vcc is
  begin
    INST1: VHI
      port map (Z=>PWR1);
  end Structure;

-- entity osc_enB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity osc_enB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "osc_enB");

    port (oscen: out Std_logic);

    ATTRIBUTE Vital_Level0 OF osc_enB : ENTITY IS TRUE;

  end osc_enB;

  architecture Structure of osc_enB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal oscen_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    osc_en_pad: sapiobuf
      port map (I=>VCCI, PAD=>oscen_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (oscen_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    oscen 	<= oscen_out;


    END PROCESS;

  end Structure;

-- entity gnd
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity serial_clkB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity serial_clkB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "serial_clkB");

    port (serialclk: out Std_logic);

    ATTRIBUTE Vital_Level0 OF serial_clkB : ENTITY IS TRUE;

  end serial_clkB;

  architecture Structure of serial_clkB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal serialclk_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    serial_clk_pad: sapiobuf
      port map (I=>GNDI, PAD=>serialclk_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (serialclk_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    serialclk 	<= serialclk_out;


    END PROCESS;

  end Structure;

-- entity serial_iqB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity serial_iqB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "serial_iqB");

    port (serialiq: out Std_logic);

    ATTRIBUTE Vital_Level0 OF serial_iqB : ENTITY IS TRUE;

  end serial_iqB;

  architecture Structure of serial_iqB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal serialiq_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    serial_iq_pad: sapiobuf
      port map (I=>GNDI, PAD=>serialiq_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (serialiq_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    serialiq 	<= serialiq_out;


    END PROCESS;

  end Structure;

-- entity top_spi_misoB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_spi_misoB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_spi_misoB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_topspimiso	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; topspimiso: out Std_logic);

    ATTRIBUTE Vital_Level0 OF top_spi_misoB : ENTITY IS TRUE;

  end top_spi_misoB;

  architecture Structure of top_spi_misoB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal topspimiso_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    top_spi_miso_pad: sapiobuf
      port map (I=>PADDO_ipd, PAD=>topspimiso_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, topspimiso_out)
    VARIABLE topspimiso_zd         	: std_logic := 'X';
    VARIABLE topspimiso_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    topspimiso_zd 	:= topspimiso_out;

    VitalPathDelay01 (

        OutSignal => topspimiso, OutSignalName => "topspimiso", OutTemp => topspimiso_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_topspimiso,
                           PathCondition => TRUE)),
      GlitchData => topspimiso_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_test4B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_test4B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_test4B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_toptest4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; toptest4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF top_test4B : ENTITY IS TRUE;

  end top_test4B;

  architecture Structure of top_test4B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal toptest4_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    top_test4_pad: sapiobuf
      port map (I=>PADDO_ipd, PAD=>toptest4_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, toptest4_out)
    VARIABLE toptest4_zd         	: std_logic := 'X';
    VARIABLE toptest4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    toptest4_zd 	:= toptest4_out;

    VitalPathDelay01 (
      OutSignal => toptest4, OutSignalName => "toptest4", OutTemp => toptest4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_toptest4,
                           PathCondition => TRUE)),
      GlitchData => toptest4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_test3B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_test3B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_test3B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_toptest3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; toptest3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF top_test3B : ENTITY IS TRUE;

  end top_test3B;

  architecture Structure of top_test3B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal toptest3_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    top_test3_pad: sapiobuf
      port map (I=>PADDO_ipd, PAD=>toptest3_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, toptest3_out)
    VARIABLE toptest3_zd         	: std_logic := 'X';
    VARIABLE toptest3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    toptest3_zd 	:= toptest3_out;

    VitalPathDelay01 (
      OutSignal => toptest3, OutSignalName => "toptest3", OutTemp => toptest3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_toptest3,
                           PathCondition => TRUE)),
      GlitchData => toptest3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0001
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0001 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0001 : ENTITY IS TRUE;

  end sapiobuf0001;

  architecture Structure of sapiobuf0001 is
  begin
    INST5: OBZ
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity inverter
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity inverter is
    port (I: in Std_logic; Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF inverter : ENTITY IS TRUE;

  end inverter;

  architecture Structure of inverter is
  begin
    INST1: INV
      port map (A=>I, Z=>Z);
  end Structure;

-- entity top_test2B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_test2B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_test2B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_toptest2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_toptest2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; PADDT: in Std_logic; toptest2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF top_test2B : ENTITY IS TRUE;

  end top_test2B;

  architecture Structure of top_test2B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal toptest2_out 	: std_logic := 'X';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf0001
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    n725_pad: sapiobuf0001
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, PAD=>toptest2_out);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, PADDT_ipd, toptest2_out)
    VARIABLE toptest2_zd         	: std_logic := 'X';
    VARIABLE toptest2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    toptest2_zd 	:= toptest2_out;

    VitalPathDelay01Z (
      OutSignal => toptest2, OutSignalName => "toptest2", OutTemp => toptest2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_toptest2,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_toptest2,
                           PathCondition => TRUE)),
      GlitchData => toptest2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_test6B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_test6B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_test6B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_toptest6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; toptest6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF top_test6B : ENTITY IS TRUE;

  end top_test6B;

  architecture Structure of top_test6B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal toptest6_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    top_test6_pad: sapiobuf
      port map (I=>PADDO_ipd, PAD=>toptest6_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, toptest6_out)
    VARIABLE toptest6_zd         	: std_logic := 'X';
    VARIABLE toptest6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    toptest6_zd 	:= toptest6_out;

    VitalPathDelay01 (
      OutSignal => toptest6, OutSignalName => "toptest6", OutTemp => toptest6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_toptest6,
                           PathCondition => TRUE)),
      GlitchData => toptest6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_test1B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_test1B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_test1B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_toptest1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; toptest1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF top_test1B : ENTITY IS TRUE;

  end top_test1B;

  architecture Structure of top_test1B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal toptest1_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    top_test1_pad: sapiobuf
      port map (I=>PADDO_ipd, PAD=>toptest1_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, toptest1_out)
    VARIABLE toptest1_zd         	: std_logic := 'X';
    VARIABLE toptest1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    toptest1_zd 	:= toptest1_out;

    VitalPathDelay01 (
      OutSignal => toptest1, OutSignalName => "toptest1", OutTemp => toptest1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_toptest1,
                           PathCondition => TRUE)),
      GlitchData => toptest1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_test0B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_test0B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_test0B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_toptest0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; toptest0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF top_test0B : ENTITY IS TRUE;

  end top_test0B;

  architecture Structure of top_test0B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal toptest0_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    top_test0_pad: sapiobuf
      port map (I=>PADDO_ipd, PAD=>toptest0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, toptest0_out)
    VARIABLE toptest0_zd         	: std_logic := 'X';
    VARIABLE toptest0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    toptest0_zd 	:= toptest0_out;

    VitalPathDelay01 (
      OutSignal => toptest0, OutSignalName => "toptest0", OutTemp => toptest0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_toptest0,
                           PathCondition => TRUE)),
      GlitchData => toptest0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_test5B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_test5B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_test5B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_toptest5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; toptest5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF top_test5B : ENTITY IS TRUE;

  end top_test5B;

  architecture Structure of top_test5B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal toptest5_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    top_test5_pad: sapiobuf
      port map (I=>PADDO_ipd, PAD=>toptest5_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, toptest5_out)
    VARIABLE toptest5_zd         	: std_logic := 'X';
    VARIABLE toptest5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    toptest5_zd 	:= toptest5_out;

    VitalPathDelay01 (
      OutSignal => toptest5, OutSignalName => "toptest5", OutTemp => toptest5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_toptest5,
                           PathCondition => TRUE)),
      GlitchData => toptest5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0002
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0002 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0002 : ENTITY IS TRUE;

  end sapiobuf0002;

  architecture Structure of sapiobuf0002 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity LEDB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity LEDB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LEDB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_LEDS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; LEDS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LEDB : ENTITY IS TRUE;

  end LEDB;

  architecture Structure of LEDB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal LEDS_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    LED_pad: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>LEDS_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, LEDS_out)
    VARIABLE LEDS_zd         	: std_logic := 'X';
    VARIABLE LEDS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LEDS_zd 	:= LEDS_out;

    VitalPathDelay01 (
      OutSignal => LEDS, OutSignalName => "LEDS", OutTemp => LEDS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_LEDS,
                           PathCondition => TRUE)),
      GlitchData => LEDS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0003
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0003 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0003 : ENTITY IS TRUE;

  end sapiobuf0003;

  architecture Structure of sapiobuf0003 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity top_clkB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_clkB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_clkB";

      tipd_topclk  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_topclk_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_topclk 	: VitalDelayType := 0 ns;
      tpw_topclk_posedge	: VitalDelayType := 0 ns;
      tpw_topclk_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; topclk: in Std_logic);

    ATTRIBUTE Vital_Level0 OF top_clkB : ENTITY IS TRUE;

  end top_clkB;

  architecture Structure of top_clkB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal topclk_ipd 	: std_logic := 'X';

    component sapiobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    top_clk_pad: sapiobuf0003
      port map (Z=>PADDI_out, PAD=>topclk_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(topclk_ipd, topclk, tipd_topclk);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, topclk_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_topclk_topclk          	: x01 := '0';
    VARIABLE periodcheckinfo_topclk	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => topclk_ipd,
        TestSignalName => "topclk",
        Period => tperiod_topclk,
        PulseWidthHigh => tpw_topclk_posedge,
        PulseWidthLow => tpw_topclk_negedge,
        PeriodData => periodcheckinfo_topclk,
        Violation => tviol_topclk_topclk,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => topclk_ipd'last_event,
                           PathDelay => tpd_topclk_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0004
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0004 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0004 : ENTITY IS TRUE;

  end sapiobuf0004;

  architecture Structure of sapiobuf0004 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity top_rst_nB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_rst_nB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_rst_nB";

      tipd_toprstn  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_toprstn_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_toprstn 	: VitalDelayType := 0 ns;
      tpw_toprstn_posedge	: VitalDelayType := 0 ns;
      tpw_toprstn_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; toprstn: in Std_logic);

    ATTRIBUTE Vital_Level0 OF top_rst_nB : ENTITY IS TRUE;

  end top_rst_nB;

  architecture Structure of top_rst_nB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal toprstn_ipd 	: std_logic := 'X';

    component sapiobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    top_rst_n_pad: sapiobuf0004
      port map (Z=>PADDI_out, PAD=>toprstn_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(toprstn_ipd, toprstn, tipd_toprstn);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, toprstn_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_toprstn_toprstn          	: x01 := '0';
    VARIABLE periodcheckinfo_toprstn	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => toprstn_ipd,
        TestSignalName => "toprstn",
        Period => tperiod_toprstn,
        PulseWidthHigh => tpw_toprstn_posedge,
        PulseWidthLow => tpw_toprstn_negedge,
        PeriodData => periodcheckinfo_toprstn,
        Violation => tviol_toprstn_toprstn,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => toprstn_ipd'last_event,
                           PathDelay => tpd_toprstn_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_spi_mosiB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_spi_mosiB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_spi_mosiB";

      tipd_topspimosi  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_topspimosi_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_topspimosi 	: VitalDelayType := 0 ns;
      tpw_topspimosi_posedge	: VitalDelayType := 0 ns;
      tpw_topspimosi_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; topspimosi: in Std_logic);

    ATTRIBUTE Vital_Level0 OF top_spi_mosiB : ENTITY IS TRUE;

  end top_spi_mosiB;

  architecture Structure of top_spi_mosiB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal topspimosi_ipd 	: std_logic := 'X';

    component sapiobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    top_spi_mosi_pad: sapiobuf0003
      port map (Z=>PADDI_out, PAD=>topspimosi_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(topspimosi_ipd, topspimosi, tipd_topspimosi);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, topspimosi_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_topspimosi_topspimosi          	: x01 := '0';
    VARIABLE periodcheckinfo_topspimosi	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => topspimosi_ipd,
        TestSignalName => "topspimosi",
        Period => tperiod_topspimosi,
        PulseWidthHigh => tpw_topspimosi_posedge,
        PulseWidthLow => tpw_topspimosi_negedge,
        PeriodData => periodcheckinfo_topspimosi,
        Violation => tviol_topspimosi_topspimosi,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => topspimosi_ipd'last_event,
                           PathDelay => tpd_topspimosi_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_spi_sclkB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_spi_sclkB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_spi_sclkB";

      tipd_topspisclk  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_topspisclk_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_topspisclk 	: VitalDelayType := 0 ns;
      tpw_topspisclk_posedge	: VitalDelayType := 0 ns;
      tpw_topspisclk_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; topspisclk: in Std_logic);

    ATTRIBUTE Vital_Level0 OF top_spi_sclkB : ENTITY IS TRUE;

  end top_spi_sclkB;

  architecture Structure of top_spi_sclkB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal topspisclk_ipd 	: std_logic := 'X';

    component sapiobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    top_spi_sclk_pad: sapiobuf0003
      port map (Z=>PADDI_out, PAD=>topspisclk_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(topspisclk_ipd, topspisclk, tipd_topspisclk);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, topspisclk_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_topspisclk_topspisclk          	: x01 := '0';
    VARIABLE periodcheckinfo_topspisclk	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => topspisclk_ipd,
        TestSignalName => "topspisclk",
        Period => tperiod_topspisclk,
        PulseWidthHigh => tpw_topspisclk_posedge,
        PulseWidthLow => tpw_topspisclk_negedge,
        PeriodData => periodcheckinfo_topspisclk,
        Violation => tviol_topspisclk_topspisclk,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => topspisclk_ipd'last_event,
                           PathDelay => tpd_topspisclk_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_spi_csB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top_spi_csB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_spi_csB";

      tipd_topspics  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_topspics_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_topspics 	: VitalDelayType := 0 ns;
      tpw_topspics_posedge	: VitalDelayType := 0 ns;
      tpw_topspics_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; topspics: in Std_logic);

    ATTRIBUTE Vital_Level0 OF top_spi_csB : ENTITY IS TRUE;

  end top_spi_csB;

  architecture Structure of top_spi_csB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal topspics_ipd 	: std_logic := 'X';

    component sapiobuf0003
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    top_spi_cs_pad: sapiobuf0003
      port map (Z=>PADDI_out, PAD=>topspics_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(topspics_ipd, topspics, tipd_topspics);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, topspics_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_topspics_topspics          	: x01 := '0';
    VARIABLE periodcheckinfo_topspics	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => topspics_ipd,
        TestSignalName => "topspics",
        Period => tperiod_topspics,
        PulseWidthHigh => tpw_topspics_posedge,
        PulseWidthLow => tpw_topspics_negedge,
        PeriodData => periodcheckinfo_topspics,
        Violation => tviol_topspics_topspics,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => topspics_ipd'last_event,
                           PathDelay => tpd_topspics_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity GSR5MODE
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity GSR5MODE is
    port (GSRP: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR5MODE : ENTITY IS TRUE;

  end GSR5MODE;

  architecture Structure of GSR5MODE is
    signal GSRMODE: Std_logic;
  begin
    INST10: BUFBA
      port map (A=>GSRP, Z=>GSRMODE);
    INST20: GSR
      port map (GSR=>GSRMODE);
  end Structure;

-- entity GSR_INSTB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity GSR_INSTB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "GSR_INSTB";

      tipd_GSRNET  	: VitalDelayType01 := (0 ns, 0 ns));

    port (GSRNET: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR_INSTB : ENTITY IS TRUE;

  end GSR_INSTB;

  architecture Structure of GSR_INSTB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal GSRNET_ipd 	: std_logic := 'X';

    component GSR5MODE
      port (GSRP: in Std_logic);
    end component;
  begin
    GSR_INST_GSRMODE: GSR5MODE
      port map (GSRP=>GSRNET_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(GSRNET_ipd, GSRNET, tipd_GSRNET);
    END BLOCK;

    VitalBehavior : PROCESS (GSRNET_ipd)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;



    END PROCESS;

  end Structure;

-- entity EHXPLLLB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity EHXPLLLB is
    port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
          PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
          PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
          STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
          ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; ENCLKOS2: in Std_logic; 
          ENCLKOS3: in Std_logic; CLKOP: out Std_logic; CLKOS: out Std_logic; 
          CLKOS2: out Std_logic; CLKOS3: out Std_logic; LOCK: out Std_logic; 
          INTLOCK: out Std_logic; REFCLK: out Std_logic; 
          CLKINTFB: out Std_logic);



  end EHXPLLLB;

  architecture Structure of EHXPLLLB is
  begin
    INST10: EHXPLLL
      generic map (CLKFB_DIV => 2, CLKI_DIV => 1, CLKOP_CPHASE => 8, 
                   CLKOP_DIV => 9, CLKOP_ENABLE => "ENABLED", 
                   CLKOP_FPHASE => 0, CLKOP_TRIM_DELAY => 0, 
                   CLKOP_TRIM_POL => "FALLING", CLKOS2_CPHASE => 0, 
                   CLKOS2_DIV => 1, CLKOS2_ENABLE => "DISABLED", 
                   CLKOS2_FPHASE => 0, CLKOS3_CPHASE => 0, CLKOS3_DIV => 1, 
                   CLKOS3_ENABLE => "DISABLED", CLKOS3_FPHASE => 0, 
                   CLKOS_CPHASE => 0, CLKOS_DIV => 1, 
                   CLKOS_ENABLE => "DISABLED", CLKOS_FPHASE => 0, 
                   CLKOS_TRIM_DELAY => 0, CLKOS_TRIM_POL => "FALLING", 
                   DPHASE_SOURCE => "DISABLED", FEEDBK_PATH => "CLKOP", 
                   INTFB_WAKE => "DISABLED", INT_LOCK_STICKY => "ENABLED", 
                   OUTDIVIDER_MUXA => "DIVA", OUTDIVIDER_MUXB => "DIVB", 
                   OUTDIVIDER_MUXC => "DIVC", OUTDIVIDER_MUXD => "DIVD", 
                   PLLRST_ENA => "ENABLED", PLL_LOCK_DELAY => 200, 
                   PLL_LOCK_MODE => 0, REFIN_RESET => "DISABLED", 
                   STDBY_ENABLE => "DISABLED", SYNC_ENABLE => "DISABLED")
      port map (CLKI=>CLKI, CLKFB=>CLKFB, PHASESEL1=>PHASESEL1, 
                PHASESEL0=>PHASESEL0, PHASEDIR=>PHASEDIR, PHASESTEP=>PHASESTEP, 
                PHASELOADREG=>PHASELOADREG, STDBY=>STDBY, 
                PLLWAKESYNC=>PLLWAKESYNC, RST=>RST, ENCLKOP=>ENCLKOP, 
                ENCLKOS=>ENCLKOS, ENCLKOS2=>ENCLKOS2, ENCLKOS3=>ENCLKOS3, 
                CLKOP=>CLKOP, CLKOS=>CLKOS, CLKOS2=>CLKOS2, CLKOS3=>CLKOS3, 
                LOCK=>LOCK, INTLOCK=>INTLOCK, REFCLK=>REFCLK, 
                CLKINTFB=>CLKINTFB);
  end Structure;

-- entity LED_I_0_114_PLLInst_0
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity LED_I_0_114_PLLInst_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LED_I_0_114_PLLInst_0";

      tipd_CLKI  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKFB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_STDBY  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_RST  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKI_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKFB_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns));

    port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
          RST: in Std_logic; LOCK: out Std_logic; CLKOP: out Std_logic);



  end LED_I_0_114_PLLInst_0;

  architecture Structure of LED_I_0_114_PLLInst_0 is
    signal CLKI_ipd 	: std_logic := 'X';
    signal CLKFB_ipd 	: std_logic := 'X';
    signal STDBY_ipd 	: std_logic := 'X';
    signal RST_ipd 	: std_logic := 'X';
    signal LOCK_out 	: std_logic := 'X';
    signal CLKOP_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component EHXPLLLB
      port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
            PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
            PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
            STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
            ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; 
            ENCLKOS2: in Std_logic; ENCLKOS3: in Std_logic; 
            CLKOP: out Std_logic; CLKOS: out Std_logic; CLKOS2: out Std_logic; 
            CLKOS3: out Std_logic; LOCK: out Std_logic; INTLOCK: out Std_logic; 
            REFCLK: out Std_logic; CLKINTFB: out Std_logic);
    end component;
  begin
    LED_I_0_114_PLLInst_0_EHXPLLL: EHXPLLLB
      port map (CLKI=>CLKI_ipd, CLKFB=>CLKFB_ipd, PHASESEL1=>GNDI, 
                PHASESEL0=>GNDI, PHASEDIR=>GNDI, PHASESTEP=>GNDI, 
                PHASELOADREG=>GNDI, STDBY=>STDBY_ipd, PLLWAKESYNC=>GNDI, 
                RST=>RST_ipd, ENCLKOP=>GNDI, ENCLKOS=>GNDI, ENCLKOS2=>GNDI, 
                ENCLKOS3=>GNDI, CLKOP=>CLKOP_out, CLKOS=>open, CLKOS2=>open, 
                CLKOS3=>open, LOCK=>LOCK_out, INTLOCK=>open, REFCLK=>open, 
                CLKINTFB=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKI_ipd, CLKI, tipd_CLKI);
      VitalWireDelay(CLKFB_ipd, CLKFB, tipd_CLKFB);
      VitalWireDelay(STDBY_ipd, STDBY, tipd_STDBY);
      VitalWireDelay(RST_ipd, RST, tipd_RST);
    END BLOCK;

    VitalBehavior : PROCESS (CLKI_ipd, CLKFB_ipd, STDBY_ipd, RST_ipd, LOCK_out, 
      CLKOP_out)
    VARIABLE CLKOP_zd         	: std_logic := 'X';
    VARIABLE CLKOP_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LOCK 	<= LOCK_out;
    CLKOP_zd 	:= CLKOP_out;

    VitalPathDelay01 (
      OutSignal => CLKOP, OutSignalName => "CLKOP", OutTemp => CLKOP_zd,
      Paths      => (0 => (InputChangeTime => CLKI_ipd'last_event,
                           PathDelay => tpd_CLKI_CLKOP,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => CLKFB_ipd'last_event,
                           PathDelay => tpd_CLKFB_CLKOP,
                           PathCondition => TRUE)),
      GlitchData => CLKOP_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity PLLREFCSB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity PLLREFCSB is
    port (SEL: in Std_logic; CLK0: in Std_logic; CLK1: in Std_logic; 
          PLLCSOUT: out Std_logic);



  end PLLREFCSB;

  architecture Structure of PLLREFCSB is
  begin
    INST10: PLLREFCS
      port map (CLK0=>CLK0, CLK1=>CLK1, SEL=>SEL, PLLCSOUT=>PLLCSOUT);
  end Structure;

-- entity LED_I_0_114_PLLRefcs_0
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity LED_I_0_114_PLLRefcs_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LED_I_0_114_PLLRefcs_0";

      tipd_CLK0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK0_PLLCSOUT	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK1_PLLCSOUT	 : VitalDelayType01 := (0 ns, 0 ns));

    port (CLK0: in Std_logic; CLK1: in Std_logic; PLLCSOUT: out Std_logic);



  end LED_I_0_114_PLLRefcs_0;

  architecture Structure of LED_I_0_114_PLLRefcs_0 is
    signal CLK0_ipd 	: std_logic := 'X';
    signal CLK1_ipd 	: std_logic := 'X';
    signal PLLCSOUT_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component PLLREFCSB
      port (SEL: in Std_logic; CLK0: in Std_logic; CLK1: in Std_logic; 
            PLLCSOUT: out Std_logic);
    end component;
  begin
    LED_I_0_114_PLLRefcs_0_PLLREFCS: PLLREFCSB
      port map (SEL=>VCCI, CLK0=>CLK0_ipd, CLK1=>CLK1_ipd, 
                PLLCSOUT=>PLLCSOUT_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLK0_ipd, CLK0, tipd_CLK0);
      VitalWireDelay(CLK1_ipd, CLK1, tipd_CLK1);
    END BLOCK;

    VitalBehavior : PROCESS (CLK0_ipd, CLK1_ipd, PLLCSOUT_out)
    VARIABLE PLLCSOUT_zd         	: std_logic := 'X';
    VARIABLE PLLCSOUT_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    PLLCSOUT_zd 	:= PLLCSOUT_out;

    VitalPathDelay01 (
      OutSignal => PLLCSOUT, OutSignalName => "PLLCSOUT", OutTemp => PLLCSOUT_zd,
      Paths      => (0 => (InputChangeTime => CLK0_ipd'last_event,
                           PathDelay => tpd_CLK0_PLLCSOUT,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => CLK1_ipd'last_event,
                           PathDelay => tpd_CLK1_PLLCSOUT,
                           PathCondition => TRUE)),
      GlitchData => PLLCSOUT_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity topModule
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity topModule is
    port (top_clk: in Std_logic; top_rst_n: in Std_logic; 
          top_spi_mosi: in Std_logic; top_spi_miso: out Std_logic; 
          top_spi_sclk: in Std_logic; top_spi_cs: in Std_logic; 
          osc_en: out Std_logic; serial_iq: out Std_logic; 
          serial_clk: out Std_logic; LED: out Std_logic; 
          top_test0: out Std_logic; top_test1: out Std_logic; 
          top_test2: out Std_logic; top_test3: out Std_logic; 
          top_test4: out Std_logic; top_test5: out Std_logic; 
          top_test6: out Std_logic);



  end topModule;

  architecture Structure of topModule is
    signal clockDivider_0_counter_6: Std_logic;
    signal clockDivider_0_counter_5: Std_logic;
    signal clockDivider_0_n39: Std_logic;
    signal clockDivider_0_n40: Std_logic;
    signal clockDivider_0_n613: Std_logic;
    signal pll_clko: Std_logic;
    signal clockDivider_0_n1275: Std_logic;
    signal clockDivider_0_n1276: Std_logic;
    signal clockDivider_0_n2: Std_logic;
    signal clockDivider_0_n3: Std_logic;
    signal clockDivider_0_n39_adj_433: Std_logic;
    signal clockDivider_0_n40_adj_432: Std_logic;
    signal LED_c: Std_logic;
    signal clockDivider_0_n1279: Std_logic;
    signal clockDivider_0_n1280: Std_logic;
    signal clockDivider_0_n4: Std_logic;
    signal clockDivider_0_n5: Std_logic;
    signal clockDivider_0_n41_adj_434: Std_logic;
    signal clockDivider_0_n42_adj_430: Std_logic;
    signal clockDivider_0_n1278: Std_logic;
    signal clockDivider_0_counter_4: Std_logic;
    signal clockDivider_0_counter_3: Std_logic;
    signal clockDivider_0_n41: Std_logic;
    signal clockDivider_0_n42: Std_logic;
    signal clockDivider_0_n1274: Std_logic;
    signal clockDivider_0_counter_0: Std_logic;
    signal clockDivider_0_n45: Std_logic;
    signal clockDivider_0_n1273: Std_logic;
    signal clockDivider_0_n6: Std_logic;
    signal clockDivider_0_n7: Std_logic;
    signal clockDivider_0_n43_adj_431: Std_logic;
    signal clockDivider_0_n44_adj_436: Std_logic;
    signal clockDivider_0_n1277: Std_logic;
    signal clockDivider_0_n8: Std_logic;
    signal clockDivider_0_n45_adj_437: Std_logic;
    signal clockDivider_0_counter_7: Std_logic;
    signal clockDivider_0_n38: Std_logic;
    signal clockDivider_0_counter_2: Std_logic;
    signal clockDivider_0_counter_1: Std_logic;
    signal clockDivider_0_n43: Std_logic;
    signal clockDivider_0_n44: Std_logic;
    signal clockDivider_0_lockCounter_7: Std_logic;
    signal clockDivider_0_n38_adj_435: Std_logic;
    signal spi_next_state_3_N_273_3: Std_logic;
    signal spi_st_load_en: Std_logic;
    signal top_test3_c: Std_logic;
    signal spi_0_spi_slave_0_n1406: Std_logic;
    signal clk_N_258_enable_1: Std_logic;
    signal spi_0_spi_slave_0_n1741: Std_logic;
    signal n744: Std_logic;
    signal clockDivider_clkLock: Std_logic;
    signal clockDivider_clk_4M: Std_logic;
    signal VCC_net_000_BUF1: Std_logic;
    signal clockDivider_0_n768: Std_logic;
    signal clockDivider_0_clkOut_N_179: Std_logic;
    signal clockDivider_0_n1430: Std_logic;
    signal spi_0_spi_slave_0_miso_N_405: Std_logic;
    signal spi_0_spi_slave_0_miso_N_426: Std_logic;
    signal miso_N_404: Std_logic;
    signal spi_0_spi_slave_0_sclk_N_406_enable_1: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_9: Std_logic;
    signal spi_0_spi_slave_0_n1366: Std_logic;
    signal spi_0_spi_slave_0_n1365: Std_logic;
    signal spi_0_spi_slave_0_miso_N_424: Std_logic;
    signal spi_0_spi_slave_0_n1482: Std_logic;
    signal top_test0_c: Std_logic;
    signal spi_tx_load_en_N_303: Std_logic;
    signal n492: Std_logic;
    signal spi_ctrl_0_n742: Std_logic;
    signal spi_ctrl_0_n557: Std_logic;
    signal n490: Std_logic;
    signal spi_rst: Std_logic;
    signal spi_0_spi_slave_0_rrdy_N_391: Std_logic;
    signal n496: Std_logic;
    signal n1723: Std_logic;
    signal n746: Std_logic;
    signal n1737: Std_logic;
    signal n498: Std_logic;
    signal n1773: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_1: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_2: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_3: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_4: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_5: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_6: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_7: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_8: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_10: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_11: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_12: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_13: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_14: Std_logic;
    signal VCC_net_001_BUF1: Std_logic;
    signal spi_0_spi_slave_0_n1383: Std_logic;
    signal spi_0_spi_slave_0_rd_add: Std_logic;
    signal spi_0_spi_slave_0_tx_buf_6: Std_logic;
    signal spi_0_spi_slave_0_tx_buf_7: Std_logic;
    signal spi_0_spi_slave_0_n9: Std_logic;
    signal spi_0_spi_slave_0_n1717: Std_logic;
    signal spi_0_spi_slave_0_n824: Std_logic;
    signal spi_0_spi_slave_0_tx_buf_5: Std_logic;
    signal spi_0_spi_slave_0_n10: Std_logic;
    signal spi_0_spi_slave_0_n1715: Std_logic;
    signal spi_0_spi_slave_0_n828: Std_logic;
    signal spi_0_spi_slave_0_tx_buf_4: Std_logic;
    signal spi_0_spi_slave_0_n11: Std_logic;
    signal spi_0_spi_slave_0_n1720: Std_logic;
    signal spi_0_spi_slave_0_n832: Std_logic;
    signal spi_0_spi_slave_0_tx_buf_3: Std_logic;
    signal spi_0_spi_slave_0_n12: Std_logic;
    signal spi_0_spi_slave_0_n1719: Std_logic;
    signal spi_0_spi_slave_0_n836: Std_logic;
    signal spi_0_spi_slave_0_tx_buf_2: Std_logic;
    signal spi_0_spi_slave_0_n13: Std_logic;
    signal spi_0_spi_slave_0_n1725: Std_logic;
    signal spi_0_spi_slave_0_n840: Std_logic;
    signal spi_0_spi_slave_0_tx_buf_1: Std_logic;
    signal spi_0_spi_slave_0_n14: Std_logic;
    signal spi_0_spi_slave_0_n1727: Std_logic;
    signal spi_0_spi_slave_0_n844: Std_logic;
    signal spi_0_spi_slave_0_tx_buf_0: Std_logic;
    signal spi_0_spi_slave_0_n15: Std_logic;
    signal spi_0_spi_slave_0_n1729: Std_logic;
    signal spi_0_spi_slave_0_n848: Std_logic;
    signal spi_0_spi_slave_0_n16: Std_logic;
    signal spi_0_spi_slave_0_n1731: Std_logic;
    signal spi_0_spi_slave_0_n852: Std_logic;
    signal spi_0_spi_slave_0_n14_adj_440: Std_logic;
    signal spi_0_spi_slave_0_wr_add: Std_logic;
    signal top_test1_c: Std_logic;
    signal spi_0_spi_slave_0_roe_N_419: Std_logic;
    signal spi_0_spi_slave_0_top_test0_c_enable_2: Std_logic;
    signal spi_0_spi_slave_0_roe_N_421: Std_logic;
    signal spi_0_spi_slave_0_roe_N_398: Std_logic;
    signal top_test4_c: Std_logic;
    signal spi_0_spi_slave_0_rrdy_N_414: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_0_N_326: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_0: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_1_N_324: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_1: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_2_N_322: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_2: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_3_N_320: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_3: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_4_N_318: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_4: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_5_N_316: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_5: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_6_N_314: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_6: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_7_N_309: Std_logic;
    signal spi_0_spi_slave_0_rx_buf_7: Std_logic;
    signal spi_0_spi_slave_0_trdy_N_407: Std_logic;
    signal spi_0_spi_slave_0_top_test0_c_enable_1: Std_logic;
    signal spi_0_spi_slave_0_n1739: Std_logic;
    signal spi_0_spi_slave_0_trdy_N_385: Std_logic;
    signal n494: Std_logic;
    signal spi_ctrl_0_n497: Std_logic;
    signal spi_ctrl_0_n544: Std_logic;
    signal spi_ctrl_0_spi_st_load_en_N_298: Std_logic;
    signal spi_ctrl_0_spi_rst_N_292: Std_logic;
    signal clk_N_258_enable_11: Std_logic;
    signal spi_0_spi_slave_0_n1738: Std_logic;
    signal spi_rx_data_1: Std_logic;
    signal spi_rx_data_0: Std_logic;
    signal clk_N_258_enable_9: Std_logic;
    signal spi_tx_data_0: Std_logic;
    signal spi_tx_data_1: Std_logic;
    signal spi_rx_data_3: Std_logic;
    signal spi_rx_data_2: Std_logic;
    signal spi_tx_data_2: Std_logic;
    signal spi_tx_data_3: Std_logic;
    signal spi_rx_data_5: Std_logic;
    signal spi_rx_data_4: Std_logic;
    signal spi_tx_data_4: Std_logic;
    signal spi_tx_data_5: Std_logic;
    signal spi_rx_data_7: Std_logic;
    signal spi_0_spi_slave_0_n1569: Std_logic;
    signal spi_rx_data_6: Std_logic;
    signal spi_tx_data_6: Std_logic;
    signal spi_tx_data_7: Std_logic;
    signal n1742: Std_logic;
    signal top_spi_miso_c: Std_logic;
    signal top_spi_sclk_c: Std_logic;
    signal top_spi_mosi_c: Std_logic;
    signal spi_0_spi_slave_0_bit_cnt_15: Std_logic;
    signal spi_0_spi_slave_0_n1875: Std_logic;
    signal spi_0_spi_slave_0_n853: Std_logic;
    signal spi_0_spi_slave_0_n1732: Std_logic;
    signal spi_0_spi_slave_0_n1836: Std_logic;
    signal spi_0_spi_slave_0_n837: Std_logic;
    signal spi_0_spi_slave_0_n1721: Std_logic;
    signal spi_0_spi_slave_0_n1733: Std_logic;
    signal spi_0_spi_slave_0_trdy_N_386: Std_logic;
    signal spi_0_spi_slave_0_n841: Std_logic;
    signal spi_0_spi_slave_0_n1866: Std_logic;
    signal spi_0_spi_slave_0_n1726: Std_logic;
    signal spi_0_spi_slave_0_n1869: Std_logic;
    signal spi_0_spi_slave_0_n845: Std_logic;
    signal spi_0_spi_slave_0_n1728: Std_logic;
    signal spi_0_spi_slave_0_n833: Std_logic;
    signal spi_0_spi_slave_0_n1830: Std_logic;
    signal spi_0_spi_slave_0_n1722: Std_logic;
    signal spi_0_spi_slave_0_n1842: Std_logic;
    signal spi_0_spi_slave_0_n825: Std_logic;
    signal spi_0_spi_slave_0_n1716: Std_logic;
    signal spi_0_spi_slave_0_n1872: Std_logic;
    signal spi_0_spi_slave_0_n849: Std_logic;
    signal spi_0_spi_slave_0_n1730: Std_logic;
    signal spi_0_spi_slave_0_n1833: Std_logic;
    signal spi_0_spi_slave_0_n829: Std_logic;
    signal spi_0_spi_slave_0_n1724: Std_logic;
    signal n1744: Std_logic;
    signal n1745: Std_logic;
    signal spi_0_spi_slave_0_n10_adj_439: Std_logic;
    signal spi_0_spi_slave_0_n1471: Std_logic;
    signal spi_0_spi_slave_0_n1772: Std_logic;
    signal spi_0_spi_slave_0_n1743: Std_logic;
    signal clockDivider_0_n1467: Std_logic;
    signal clockDivider_0_n1432: Std_logic;
    signal spi_tx_load_en: Std_logic;
    signal top_spi_cs_c: Std_logic;
    signal clk_N_258_enable_12: Std_logic;
    signal n1398: Std_logic;
    signal top_rst_n_c: Std_logic;
    signal top_rst_n_N_74: Std_logic;
    signal n1735: Std_logic;
    signal bit_cnt_15_N_307: Std_logic;
    signal GND_net: Std_logic;
    signal top_clk_c: Std_logic;
    signal LED_I_0_114_CLKIt: Std_logic;
    signal VCCI: Std_logic;
    component osc_enB
      port (oscen: out Std_logic);
    end component;
    component serial_clkB
      port (serialclk: out Std_logic);
    end component;
    component serial_iqB
      port (serialiq: out Std_logic);
    end component;
    component top_spi_misoB
      port (PADDO: in Std_logic; topspimiso: out Std_logic);
    end component;
    component top_test4B
      port (PADDO: in Std_logic; toptest4: out Std_logic);
    end component;
    component top_test3B
      port (PADDO: in Std_logic; toptest3: out Std_logic);
    end component;
    component top_test2B
      port (PADDO: in Std_logic; PADDT: in Std_logic; toptest2: out Std_logic);
    end component;
    component top_test6B
      port (PADDO: in Std_logic; toptest6: out Std_logic);
    end component;
    component top_test1B
      port (PADDO: in Std_logic; toptest1: out Std_logic);
    end component;
    component top_test0B
      port (PADDO: in Std_logic; toptest0: out Std_logic);
    end component;
    component top_test5B
      port (PADDO: in Std_logic; toptest5: out Std_logic);
    end component;
    component LEDB
      port (PADDO: in Std_logic; LEDS: out Std_logic);
    end component;
    component top_clkB
      port (PADDI: out Std_logic; topclk: in Std_logic);
    end component;
    component top_rst_nB
      port (PADDI: out Std_logic; toprstn: in Std_logic);
    end component;
    component top_spi_mosiB
      port (PADDI: out Std_logic; topspimosi: in Std_logic);
    end component;
    component top_spi_sclkB
      port (PADDI: out Std_logic; topspisclk: in Std_logic);
    end component;
    component top_spi_csB
      port (PADDI: out Std_logic; topspics: in Std_logic);
    end component;
    component GSR_INSTB
      port (GSRNET: in Std_logic);
    end component;
    component LED_I_0_114_PLLInst_0
      port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
            RST: in Std_logic; LOCK: out Std_logic; CLKOP: out Std_logic);
    end component;
    component LED_I_0_114_PLLRefcs_0
      port (CLK0: in Std_logic; CLK1: in Std_logic; PLLCSOUT: out Std_logic);
    end component;
  begin
    clockDivider_0_SLICE_0I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_counter_6, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>clockDivider_0_n39, DI0=>clockDivider_0_n40, 
                A0=>'X', B0=>clockDivider_0_counter_5, C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n1275, M0=>'X', CE=>'X', CLK=>pll_clko, 
                LSR=>clockDivider_0_n613, FCO=>clockDivider_0_n1276, 
                F1=>clockDivider_0_n39, Q1=>clockDivider_0_counter_6, 
                F0=>clockDivider_0_n40, Q0=>clockDivider_0_counter_5);
    clockDivider_0_SLICE_1I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_n2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>clockDivider_0_n39_adj_433, 
                DI0=>clockDivider_0_n40_adj_432, A0=>'X', 
                B0=>clockDivider_0_n3, C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n1279, M0=>'X', CE=>'X', CLK=>pll_clko, 
                LSR=>LED_c, FCO=>clockDivider_0_n1280, 
                F1=>clockDivider_0_n39_adj_433, Q1=>clockDivider_0_n2, 
                F0=>clockDivider_0_n40_adj_432, Q0=>clockDivider_0_n3);
    clockDivider_0_SLICE_2I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_n4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>clockDivider_0_n41_adj_434, 
                DI0=>clockDivider_0_n42_adj_430, A0=>'X', 
                B0=>clockDivider_0_n5, C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n1278, M0=>'X', CE=>'X', CLK=>pll_clko, 
                LSR=>LED_c, FCO=>clockDivider_0_n1279, 
                F1=>clockDivider_0_n41_adj_434, Q1=>clockDivider_0_n4, 
                F0=>clockDivider_0_n42_adj_430, Q0=>clockDivider_0_n5);
    clockDivider_0_SLICE_3I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_counter_4, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>clockDivider_0_n41, DI0=>clockDivider_0_n42, 
                A0=>'X', B0=>clockDivider_0_counter_3, C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n1274, M0=>'X', CE=>'X', CLK=>pll_clko, 
                LSR=>clockDivider_0_n613, FCO=>clockDivider_0_n1275, 
                F1=>clockDivider_0_n41, Q1=>clockDivider_0_counter_4, 
                F0=>clockDivider_0_n42, Q0=>clockDivider_0_counter_3);
    clockDivider_0_SLICE_4I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>clockDivider_0_counter_0, C1=>'X', 
                D1=>'1', DI1=>clockDivider_0_n45, DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>pll_clko, 
                LSR=>clockDivider_0_n613, FCO=>clockDivider_0_n1273, 
                F1=>clockDivider_0_n45, Q1=>clockDivider_0_counter_0, F0=>open, 
                Q0=>open);
    clockDivider_0_SLICE_5I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>clockDivider_0_n6, C1=>'X', D1=>'1', 
                DI1=>clockDivider_0_n43_adj_431, 
                DI0=>clockDivider_0_n44_adj_436, A0=>'X', 
                B0=>clockDivider_0_n7, C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n1277, M0=>'X', CE=>'X', CLK=>pll_clko, 
                LSR=>LED_c, FCO=>clockDivider_0_n1278, 
                F1=>clockDivider_0_n43_adj_431, Q1=>clockDivider_0_n6, 
                F0=>clockDivider_0_n44_adj_436, Q0=>clockDivider_0_n7);
    clockDivider_0_SLICE_6I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"33FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>clockDivider_0_n8, C1=>'X', D1=>'1', 
                DI1=>clockDivider_0_n45_adj_437, DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>pll_clko, 
                LSR=>LED_c, FCO=>clockDivider_0_n1277, 
                F1=>clockDivider_0_n45_adj_437, Q1=>clockDivider_0_n8, 
                F0=>open, Q0=>open);
    clockDivider_0_SLICE_7I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>clockDivider_0_n38, A0=>clockDivider_0_counter_7, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>clockDivider_0_n1276, M0=>'X', CE=>'X', 
                CLK=>pll_clko, LSR=>clockDivider_0_n613, FCO=>open, F1=>open, 
                Q1=>open, F0=>clockDivider_0_n38, Q0=>clockDivider_0_counter_7);
    clockDivider_0_SLICE_8I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"CC00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>clockDivider_0_counter_2, C1=>'X', 
                D1=>'1', DI1=>clockDivider_0_n43, DI0=>clockDivider_0_n44, 
                A0=>'X', B0=>clockDivider_0_counter_1, C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n1273, M0=>'X', CE=>'X', CLK=>pll_clko, 
                LSR=>clockDivider_0_n613, FCO=>clockDivider_0_n1274, 
                F1=>clockDivider_0_n43, Q1=>clockDivider_0_counter_2, 
                F0=>clockDivider_0_n44, Q0=>clockDivider_0_counter_1);
    clockDivider_0_SLICE_9I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"CC00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>clockDivider_0_n38_adj_435, A0=>'X', 
                B0=>clockDivider_0_lockCounter_7, C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n1280, M0=>'X', CE=>'X', CLK=>pll_clko, 
                LSR=>LED_c, FCO=>open, F1=>open, Q1=>open, 
                F0=>clockDivider_0_n38_adj_435, 
                Q0=>clockDivider_0_lockCounter_7);
    SLICE_10I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"50DC", LUT1_INITVAL=>X"FA00", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>top_test3_c, B1=>'X', 
                C1=>spi_st_load_en, D1=>spi_next_state_3_N_273_3, DI1=>'X', 
                DI0=>n744, A0=>spi_0_spi_slave_0_n1741, B0=>clk_N_258_enable_1, 
                C0=>spi_0_spi_slave_0_n1406, D0=>spi_next_state_3_N_273_3, 
                M0=>'X', CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>clockDivider_clkLock, OFX1=>open, 
                F1=>spi_0_spi_slave_0_n1741, Q1=>open, OFX0=>open, F0=>n744, 
                Q0=>clk_N_258_enable_1);
    clockDivider_0_SLICE_11I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net_000_BUF1, A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>clockDivider_0_lockCounter_7, 
                CLK=>pll_clko, LSR=>LED_c, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>VCC_net_000_BUF1, Q0=>clockDivider_clkLock);
    clockDivider_0_SLICE_12I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"CC33", LUT1_INITVAL=>X"FFF0", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>clockDivider_0_counter_5, D1=>clockDivider_0_counter_6, 
                DI1=>'X', DI0=>clockDivider_0_clkOut_N_179, A0=>'X', 
                B0=>clockDivider_0_n768, C0=>'X', D0=>clockDivider_clk_4M, 
                M0=>'X', CE=>'X', CLK=>pll_clko, LSR=>LED_c, OFX1=>open, 
                F1=>clockDivider_0_n1430, Q1=>open, OFX0=>open, 
                F0=>clockDivider_0_clkOut_N_179, Q0=>clockDivider_clk_4M);
    spi_0_spi_slave_0_SLICE_13I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"ACAC", LUT1_INITVAL=>X"E4A0", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>spi_0_spi_slave_0_sclk_N_406_enable_1, B1=>miso_N_404, 
                C1=>spi_0_spi_slave_0_miso_N_426, 
                D1=>spi_0_spi_slave_0_miso_N_405, DI1=>'X', 
                DI0=>spi_0_spi_slave_0_miso_N_424, A0=>spi_0_spi_slave_0_n1365, 
                B0=>spi_0_spi_slave_0_n1366, C0=>spi_0_spi_slave_0_bit_cnt_9, 
                D0=>'X', M0=>spi_0_spi_slave_0_n1482, CE=>'X', 
                CLK=>top_test0_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>spi_0_spi_slave_0_miso_N_424, F0=>open, Q0=>miso_N_404);
    spi_ctrl_0_SLICE_14I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"CC00", LUT1_INITVAL=>X"EECC", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n492, 
                B1=>spi_tx_load_en_N_303, C1=>'X', 
                D1=>spi_next_state_3_N_273_3, DI1=>spi_ctrl_0_n742, 
                DI0=>spi_ctrl_0_n557, A0=>'X', B0=>clk_N_258_enable_1, C0=>'X', 
                D0=>spi_next_state_3_N_273_3, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>clockDivider_clkLock, 
                OFX1=>open, F1=>spi_ctrl_0_n742, Q1=>n492, OFX0=>open, 
                F0=>spi_ctrl_0_n557, Q0=>n490);
    SLICE_16I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"3B0A", LUT1_INITVAL=>X"5000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n1741, 
                B1=>'X', C1=>spi_0_spi_slave_0_rrdy_N_391, D1=>spi_rst, 
                DI1=>'X', DI0=>n746, A0=>n492, B0=>n1723, 
                C0=>spi_next_state_3_N_273_3, D0=>n496, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>clockDivider_clkLock, 
                OFX1=>open, F1=>n1723, Q1=>open, OFX0=>open, F0=>n746, 
                Q0=>n496);
    SLICE_17I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"00FF", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n1737, A0=>'X', B0=>'X', C0=>'X', 
                D0=>clockDivider_clkLock, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>n1737, Q0=>n498);
    SLICE_18I: SLOGICB
      generic map (M1MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", 
                   REG0_REGSET=>"SET", SRMODE=>"ASYNC", LUT0_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_M1=>TRUE)
      port map (M1=>spi_0_spi_slave_0_bit_cnt_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>n1773, A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>top_test0_c, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>spi_0_spi_slave_0_bit_cnt_2, OFX0=>open, F0=>n1773, 
                Q0=>spi_0_spi_slave_0_bit_cnt_1);
    spi_0_spi_slave_0_SLICE_19I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>spi_0_spi_slave_0_bit_cnt_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>spi_0_spi_slave_0_bit_cnt_2, 
                CE=>'X', CLK=>top_test0_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>spi_0_spi_slave_0_bit_cnt_4, OFX0=>open, F0=>open, 
                Q0=>spi_0_spi_slave_0_bit_cnt_3);
    spi_0_spi_slave_0_SLICE_20I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>spi_0_spi_slave_0_bit_cnt_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>spi_0_spi_slave_0_bit_cnt_4, 
                CE=>'X', CLK=>top_test0_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>spi_0_spi_slave_0_bit_cnt_6, OFX0=>open, F0=>open, 
                Q0=>spi_0_spi_slave_0_bit_cnt_5);
    spi_0_spi_slave_0_SLICE_21I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>spi_0_spi_slave_0_bit_cnt_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>spi_0_spi_slave_0_bit_cnt_6, 
                CE=>'X', CLK=>top_test0_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>spi_0_spi_slave_0_bit_cnt_8, OFX0=>open, F0=>open, 
                Q0=>spi_0_spi_slave_0_bit_cnt_7);
    spi_0_spi_slave_0_SLICE_22I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>spi_0_spi_slave_0_bit_cnt_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>spi_0_spi_slave_0_bit_cnt_8, 
                CE=>'X', CLK=>top_test0_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>spi_0_spi_slave_0_bit_cnt_10, OFX0=>open, F0=>open, 
                Q0=>spi_0_spi_slave_0_bit_cnt_9);
    spi_0_spi_slave_0_SLICE_23I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>spi_0_spi_slave_0_bit_cnt_11, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>spi_0_spi_slave_0_bit_cnt_10, 
                CE=>'X', CLK=>top_test0_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>spi_0_spi_slave_0_bit_cnt_12, OFX0=>open, F0=>open, 
                Q0=>spi_0_spi_slave_0_bit_cnt_11);
    spi_0_spi_slave_0_SLICE_24I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>spi_0_spi_slave_0_bit_cnt_13, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>spi_0_spi_slave_0_bit_cnt_12, 
                CE=>'X', CLK=>top_test0_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>spi_0_spi_slave_0_bit_cnt_14, OFX0=>open, F0=>open, 
                Q0=>spi_0_spi_slave_0_bit_cnt_13);
    spi_0_spi_slave_0_SLICE_26I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net_001_BUF1, A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', 
                CE=>spi_0_spi_slave_0_sclk_N_406_enable_1, CLK=>top_test0_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>VCC_net_001_BUF1, Q0=>spi_0_spi_slave_0_miso_N_405);
    spi_0_spi_slave_0_SLICE_27I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"AAAC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_0_spi_slave_0_n9, 
                A0=>spi_0_spi_slave_0_tx_buf_7, B0=>spi_0_spi_slave_0_tx_buf_6, 
                C0=>spi_0_spi_slave_0_rd_add, D0=>spi_0_spi_slave_0_n1383, 
                M0=>'X', CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1717, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n9, 
                Q0=>spi_0_spi_slave_0_n824);
    spi_0_spi_slave_0_SLICE_29I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"CCCA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_0_spi_slave_0_n10, 
                A0=>spi_0_spi_slave_0_tx_buf_5, B0=>spi_0_spi_slave_0_tx_buf_6, 
                C0=>spi_0_spi_slave_0_rd_add, D0=>spi_0_spi_slave_0_n1383, 
                M0=>'X', CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1715, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n10, 
                Q0=>spi_0_spi_slave_0_n828);
    spi_0_spi_slave_0_SLICE_31I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"AAAC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_0_spi_slave_0_n11, 
                A0=>spi_0_spi_slave_0_tx_buf_5, B0=>spi_0_spi_slave_0_tx_buf_4, 
                C0=>spi_0_spi_slave_0_rd_add, D0=>spi_0_spi_slave_0_n1383, 
                M0=>'X', CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1720, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n11, 
                Q0=>spi_0_spi_slave_0_n832);
    spi_0_spi_slave_0_SLICE_33I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"CCCA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_0_spi_slave_0_n12, 
                A0=>spi_0_spi_slave_0_tx_buf_3, B0=>spi_0_spi_slave_0_tx_buf_4, 
                C0=>spi_0_spi_slave_0_rd_add, D0=>spi_0_spi_slave_0_n1383, 
                M0=>'X', CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1719, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n12, 
                Q0=>spi_0_spi_slave_0_n836);
    spi_0_spi_slave_0_SLICE_35I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"AAAC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_0_spi_slave_0_n13, 
                A0=>spi_0_spi_slave_0_tx_buf_3, B0=>spi_0_spi_slave_0_tx_buf_2, 
                C0=>spi_0_spi_slave_0_rd_add, D0=>spi_0_spi_slave_0_n1383, 
                M0=>'X', CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1725, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n13, 
                Q0=>spi_0_spi_slave_0_n840);
    spi_0_spi_slave_0_SLICE_37I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"CDC8", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_0_spi_slave_0_n14, 
                A0=>spi_0_spi_slave_0_n1383, B0=>spi_0_spi_slave_0_tx_buf_2, 
                C0=>spi_0_spi_slave_0_rd_add, D0=>spi_0_spi_slave_0_tx_buf_1, 
                M0=>'X', CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1727, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n14, 
                Q0=>spi_0_spi_slave_0_n844);
    spi_0_spi_slave_0_SLICE_39I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"FE04", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_0_spi_slave_0_n15, 
                A0=>spi_0_spi_slave_0_n1383, B0=>spi_0_spi_slave_0_tx_buf_0, 
                C0=>spi_0_spi_slave_0_rd_add, D0=>spi_0_spi_slave_0_tx_buf_1, 
                M0=>'X', CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1729, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n15, 
                Q0=>spi_0_spi_slave_0_n848);
    spi_0_spi_slave_0_SLICE_41I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"F0E4", LUT1_INITVAL=>X"FFFE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_bit_cnt_2, 
                B1=>spi_0_spi_slave_0_bit_cnt_5, 
                C1=>spi_0_spi_slave_0_bit_cnt_7, 
                D1=>spi_0_spi_slave_0_bit_cnt_3, DI1=>'X', 
                DI0=>spi_0_spi_slave_0_n16, A0=>spi_0_spi_slave_0_rd_add, 
                B0=>spi_0_spi_slave_0_tx_buf_7, C0=>spi_0_spi_slave_0_tx_buf_0, 
                D0=>spi_0_spi_slave_0_n1383, M0=>'X', CE=>'X', 
                CLK=>top_test0_c, LSR=>spi_0_spi_slave_0_n1731, OFX1=>open, 
                F1=>spi_0_spi_slave_0_n14_adj_440, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n16, Q0=>spi_0_spi_slave_0_n852);
    spi_0_spi_slave_0_SLICE_44I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"A000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_0_spi_slave_0_roe_N_419, 
                A0=>top_test1_c, B0=>'X', C0=>spi_0_spi_slave_0_wr_add, 
                D0=>spi_0_spi_slave_0_bit_cnt_11, M0=>'X', 
                CE=>spi_0_spi_slave_0_top_test0_c_enable_2, CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_roe_N_421, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>spi_0_spi_slave_0_roe_N_419, 
                Q0=>spi_0_spi_slave_0_roe_N_398);
    spi_0_spi_slave_0_SLICE_45I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"88F0", 
                   LUT1_INITVAL=>X"BBFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>top_test1_c, 
                B1=>spi_0_spi_slave_0_bit_cnt_10, C1=>'X', 
                D1=>spi_0_spi_slave_0_wr_add, DI1=>'X', 
                DI0=>spi_0_spi_slave_0_rrdy_N_414, A0=>top_test1_c, 
                B0=>spi_0_spi_slave_0_bit_cnt_10, C0=>top_test4_c, 
                D0=>spi_0_spi_slave_0_wr_add, M0=>n1723, CE=>'X', 
                CLK=>top_test0_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>spi_0_spi_slave_0_rrdy_N_414, F0=>open, 
                Q0=>spi_0_spi_slave_0_rrdy_N_391);
    spi_0_spi_slave_0_SLICE_46I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_test1_c, CE=>spi_0_spi_slave_0_rx_buf_0_N_326, 
                CLK=>top_test0_c, LSR=>spi_rst, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>spi_0_spi_slave_0_rx_buf_0);
    spi_0_spi_slave_0_SLICE_47I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_test1_c, CE=>spi_0_spi_slave_0_rx_buf_1_N_324, 
                CLK=>top_test0_c, LSR=>spi_rst, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>spi_0_spi_slave_0_rx_buf_1);
    spi_0_spi_slave_0_SLICE_48I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_test1_c, CE=>spi_0_spi_slave_0_rx_buf_2_N_322, 
                CLK=>top_test0_c, LSR=>spi_rst, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>spi_0_spi_slave_0_rx_buf_2);
    spi_0_spi_slave_0_SLICE_49I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_test1_c, CE=>spi_0_spi_slave_0_rx_buf_3_N_320, 
                CLK=>top_test0_c, LSR=>spi_rst, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>spi_0_spi_slave_0_rx_buf_3);
    spi_0_spi_slave_0_SLICE_50I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_test1_c, CE=>spi_0_spi_slave_0_rx_buf_4_N_318, 
                CLK=>top_test0_c, LSR=>spi_rst, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>spi_0_spi_slave_0_rx_buf_4);
    spi_0_spi_slave_0_SLICE_51I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_test1_c, CE=>spi_0_spi_slave_0_rx_buf_5_N_316, 
                CLK=>top_test0_c, LSR=>spi_rst, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>spi_0_spi_slave_0_rx_buf_5);
    spi_0_spi_slave_0_SLICE_52I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_test1_c, CE=>spi_0_spi_slave_0_rx_buf_6_N_314, 
                CLK=>top_test0_c, LSR=>spi_rst, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>spi_0_spi_slave_0_rx_buf_6);
    spi_0_spi_slave_0_SLICE_53I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_test1_c, CE=>spi_0_spi_slave_0_rx_buf_7_N_309, 
                CLK=>top_test0_c, LSR=>spi_rst, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>spi_0_spi_slave_0_rx_buf_7);
    spi_0_spi_slave_0_SLICE_54I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"C000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_0_spi_slave_0_trdy_N_407, A0=>'X', 
                B0=>spi_0_spi_slave_0_wr_add, C0=>top_test1_c, 
                D0=>spi_0_spi_slave_0_bit_cnt_9, M0=>'X', 
                CE=>spi_0_spi_slave_0_top_test0_c_enable_1, CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1739, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_trdy_N_407, 
                Q0=>spi_0_spi_slave_0_trdy_N_385);
    spi_ctrl_0_SLICE_57I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FAFA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_ctrl_0_n544, A0=>spi_ctrl_0_n497, 
                B0=>'X', C0=>n494, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>clockDivider_clkLock, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>spi_ctrl_0_n544, Q0=>spi_ctrl_0_spi_st_load_en_N_298);
    spi_ctrl_0_SLICE_59I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FFFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>spi_ctrl_0_spi_rst_N_292, 
                A0=>spi_tx_load_en_N_303, B0=>n492, C0=>spi_ctrl_0_n497, 
                D0=>spi_ctrl_0_spi_st_load_en_N_298, M0=>'X', 
                CE=>clk_N_258_enable_11, CLK=>clockDivider_clk_4M, 
                LSR=>clockDivider_clkLock, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_ctrl_0_spi_rst_N_292, Q0=>spi_rst);
    SLICE_61I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"C840", LUT1_INITVAL=>X"88C0", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_rx_buf_1, 
                B1=>spi_rst, C1=>spi_rx_data_1, D1=>spi_0_spi_slave_0_n1738, 
                DI1=>spi_rx_data_1, DI0=>spi_rx_data_0, 
                A0=>spi_0_spi_slave_0_n1738, B0=>spi_rst, C0=>spi_rx_data_0, 
                D0=>spi_0_spi_slave_0_rx_buf_0, M0=>'X', 
                CE=>clk_N_258_enable_9, CLK=>clockDivider_clk_4M, 
                LSR=>clockDivider_clkLock, OFX1=>open, F1=>spi_rx_data_1, 
                Q1=>spi_tx_data_1, OFX0=>open, F0=>spi_rx_data_0, 
                Q0=>spi_tx_data_0);
    SLICE_62I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"C808", LUT1_INITVAL=>X"C808", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_rx_data_3, B1=>spi_rst, 
                C1=>spi_0_spi_slave_0_n1738, D1=>spi_0_spi_slave_0_rx_buf_3, 
                DI1=>spi_rx_data_3, DI0=>spi_rx_data_2, A0=>spi_rx_data_2, 
                B0=>spi_rst, C0=>spi_0_spi_slave_0_n1738, 
                D0=>spi_0_spi_slave_0_rx_buf_2, M0=>'X', 
                CE=>clk_N_258_enable_9, CLK=>clockDivider_clk_4M, 
                LSR=>clockDivider_clkLock, OFX1=>open, F1=>spi_rx_data_3, 
                Q1=>spi_tx_data_3, OFX0=>open, F0=>spi_rx_data_2, 
                Q0=>spi_tx_data_2);
    SLICE_63I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"D800", LUT1_INITVAL=>X"D800", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n1738, 
                B1=>spi_0_spi_slave_0_rx_buf_5, C1=>spi_rx_data_5, D1=>spi_rst, 
                DI1=>spi_rx_data_5, DI0=>spi_rx_data_4, 
                A0=>spi_0_spi_slave_0_n1738, B0=>spi_0_spi_slave_0_rx_buf_4, 
                C0=>spi_rx_data_4, D0=>spi_rst, M0=>'X', 
                CE=>clk_N_258_enable_9, CLK=>clockDivider_clk_4M, 
                LSR=>clockDivider_clkLock, OFX1=>open, F1=>spi_rx_data_5, 
                Q1=>spi_tx_data_5, OFX0=>open, F0=>spi_rx_data_4, 
                Q0=>spi_tx_data_4);
    SLICE_64I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"A820", LUT1_INITVAL=>X"E444", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n1569, 
                B1=>spi_rx_data_7, C1=>spi_0_spi_slave_0_rx_buf_7, D1=>spi_rst, 
                DI1=>spi_rx_data_7, DI0=>spi_rx_data_6, A0=>spi_rst, 
                B0=>spi_0_spi_slave_0_n1738, C0=>spi_rx_data_6, 
                D0=>spi_0_spi_slave_0_rx_buf_6, M0=>'X', 
                CE=>clk_N_258_enable_9, CLK=>clockDivider_clk_4M, 
                LSR=>clockDivider_clkLock, OFX1=>open, F1=>spi_rx_data_7, 
                Q1=>spi_tx_data_7, OFX0=>open, F0=>spi_rx_data_6, 
                Q0=>spi_tx_data_6);
    SLICE_67I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F000", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n1742, A0=>'X', B0=>'X', 
                C0=>spi_0_spi_slave_0_miso_N_405, D0=>miso_N_404, M0=>'X', 
                CE=>'X', CLK=>pll_clko, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>n1742, Q0=>top_spi_miso_c);
    SLICE_68I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_spi_sclk_c, CE=>'X', CLK=>pll_clko, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>top_test0_c);
    SLICE_69I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>top_spi_mosi_c, CE=>'X', CLK=>pll_clko, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>top_test1_c);
    spi_0_spi_slave_0_SLICE_71I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>spi_0_spi_slave_0_bit_cnt_14, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>spi_0_spi_slave_0_bit_cnt_15, 
                CE=>'X', CLK=>top_test0_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>spi_0_spi_slave_0_bit_cnt_15, OFX0=>open, F0=>open, 
                Q0=>top_test4_c);
    spi_0_spi_slave_0_SLICE_72I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"AC00", 
                   LUT1_INITVAL=>X"CCAA", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n853, 
                B1=>spi_0_spi_slave_0_n852, C1=>'X', 
                D1=>spi_0_spi_slave_0_n1875, DI1=>'X', DI0=>'X', 
                A0=>spi_tx_data_0, B0=>spi_0_spi_slave_0_n1875, 
                C0=>spi_0_spi_slave_0_n1739, D0=>spi_rst, 
                M0=>spi_0_spi_slave_0_n16, CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1732, OFX1=>open, 
                F1=>spi_0_spi_slave_0_tx_buf_0, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1875, Q0=>spi_0_spi_slave_0_n853);
    spi_0_spi_slave_0_SLICE_73I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"AC00", 
                   LUT1_INITVAL=>X"AACC", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n836, 
                B1=>spi_0_spi_slave_0_n837, C1=>'X', 
                D1=>spi_0_spi_slave_0_n1836, DI1=>'X', DI0=>'X', 
                A0=>spi_tx_data_4, B0=>spi_0_spi_slave_0_n1836, 
                C0=>spi_0_spi_slave_0_n1739, D0=>spi_rst, 
                M0=>spi_0_spi_slave_0_n12, CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1721, OFX1=>open, 
                F1=>spi_0_spi_slave_0_tx_buf_4, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1836, Q0=>spi_0_spi_slave_0_n837);
    spi_0_spi_slave_0_SLICE_74I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEEE", LUT1_INITVAL=>X"0080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_rrdy_N_391, 
                B1=>top_test4_c, C1=>spi_0_spi_slave_0_n1733, 
                D1=>spi_0_spi_slave_0_wr_add, DI1=>'X', DI0=>'X', 
                A0=>spi_0_spi_slave_0_roe_N_421, 
                B0=>spi_0_spi_slave_0_trdy_N_386, 
                C0=>spi_0_spi_slave_0_bit_cnt_11, D0=>spi_0_spi_slave_0_wr_add, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>spi_0_spi_slave_0_roe_N_421, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_top_test0_c_enable_2, Q0=>open);
    spi_0_spi_slave_0_SLICE_75I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"E020", 
                   LUT1_INITVAL=>X"CFC0", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>spi_0_spi_slave_0_n840, C1=>spi_0_spi_slave_0_n1866, 
                D1=>spi_0_spi_slave_0_n841, DI1=>'X', DI0=>'X', 
                A0=>spi_0_spi_slave_0_n1866, B0=>spi_0_spi_slave_0_n1739, 
                C0=>spi_rst, D0=>spi_tx_data_3, M0=>spi_0_spi_slave_0_n13, 
                CE=>'X', CLK=>top_test0_c, LSR=>spi_0_spi_slave_0_n1726, 
                OFX1=>open, F1=>spi_0_spi_slave_0_tx_buf_3, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n1866, 
                Q0=>spi_0_spi_slave_0_n841);
    spi_0_spi_slave_0_SLICE_76I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"CA00", 
                   LUT1_INITVAL=>X"AACC", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n844, 
                B1=>spi_0_spi_slave_0_n845, C1=>'X', 
                D1=>spi_0_spi_slave_0_n1869, DI1=>'X', DI0=>'X', 
                A0=>spi_0_spi_slave_0_n1869, B0=>spi_tx_data_2, 
                C0=>spi_0_spi_slave_0_n1739, D0=>spi_rst, 
                M0=>spi_0_spi_slave_0_n14, CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1728, OFX1=>open, 
                F1=>spi_0_spi_slave_0_tx_buf_2, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1869, Q0=>spi_0_spi_slave_0_n845);
    spi_0_spi_slave_0_SLICE_77I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"CA00", 
                   LUT1_INITVAL=>X"CFC0", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>spi_0_spi_slave_0_n832, C1=>spi_0_spi_slave_0_n1830, 
                D1=>spi_0_spi_slave_0_n833, DI1=>'X', DI0=>'X', 
                A0=>spi_0_spi_slave_0_n1830, B0=>spi_tx_data_5, 
                C0=>spi_0_spi_slave_0_n1739, D0=>spi_rst, 
                M0=>spi_0_spi_slave_0_n11, CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1722, OFX1=>open, 
                F1=>spi_0_spi_slave_0_tx_buf_5, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1830, Q0=>spi_0_spi_slave_0_n833);
    spi_0_spi_slave_0_SLICE_78I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"AC00", 
                   LUT1_INITVAL=>X"FA0A", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n825, 
                B1=>'X', C1=>spi_0_spi_slave_0_n1842, 
                D1=>spi_0_spi_slave_0_n824, DI1=>'X', DI0=>'X', 
                A0=>spi_tx_data_7, B0=>spi_0_spi_slave_0_n1842, 
                C0=>spi_0_spi_slave_0_n1739, D0=>spi_rst, 
                M0=>spi_0_spi_slave_0_n9, CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1716, OFX1=>open, 
                F1=>spi_0_spi_slave_0_tx_buf_7, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1842, Q0=>spi_0_spi_slave_0_n825);
    spi_0_spi_slave_0_SLICE_79I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"BB88", 
                   LUT1_INITVAL=>X"CA00", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n1872, 
                B1=>spi_tx_data_1, C1=>spi_0_spi_slave_0_n1739, D1=>spi_rst, 
                DI1=>'X', DI0=>'X', A0=>spi_0_spi_slave_0_n848, 
                B0=>spi_0_spi_slave_0_n1872, C0=>'X', 
                D0=>spi_0_spi_slave_0_n849, M0=>spi_0_spi_slave_0_n15, CE=>'X', 
                CLK=>top_test0_c, LSR=>spi_0_spi_slave_0_n1730, OFX1=>open, 
                F1=>spi_0_spi_slave_0_n1872, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_tx_buf_1, Q0=>spi_0_spi_slave_0_n849);
    spi_0_spi_slave_0_SLICE_80I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", SRMODE=>"ASYNC", LUT0_INITVAL=>X"CA00", 
                   LUT1_INITVAL=>X"AACC", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n828, 
                B1=>spi_0_spi_slave_0_n829, C1=>'X', 
                D1=>spi_0_spi_slave_0_n1833, DI1=>'X', DI0=>'X', 
                A0=>spi_0_spi_slave_0_n1833, B0=>spi_tx_data_6, 
                C0=>spi_0_spi_slave_0_n1739, D0=>spi_rst, 
                M0=>spi_0_spi_slave_0_n10, CE=>'X', CLK=>top_test0_c, 
                LSR=>spi_0_spi_slave_0_n1724, OFX1=>open, 
                F1=>spi_0_spi_slave_0_tx_buf_6, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1833, Q0=>spi_0_spi_slave_0_n829);
    SLICE_81I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"FFEF", 
                   LUT1_INITVAL=>X"FCFC", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>spi_ctrl_0_n497, 
                C1=>spi_ctrl_0_spi_st_load_en_N_298, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>n1745, B0=>n498, C0=>clockDivider_clkLock, 
                D0=>n1744, M0=>n498, CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>clockDivider_clkLock, OFX1=>open, F1=>n1745, Q1=>open, 
                OFX0=>open, F0=>clk_N_258_enable_11, Q0=>spi_ctrl_0_n497);
    spi_0_spi_slave_0_SLICE_82I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_bit_cnt_6, 
                B1=>spi_0_spi_slave_0_n14_adj_440, C1=>top_test4_c, 
                D1=>spi_0_spi_slave_0_n10_adj_439, DI1=>'X', DI0=>'X', 
                A0=>spi_0_spi_slave_0_bit_cnt_4, 
                B0=>spi_0_spi_slave_0_bit_cnt_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>spi_0_spi_slave_0_n1383, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n10_adj_439, Q0=>open);
    SLICE_83I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"FFEE", 
                   LUT1_INITVAL=>X"CF0F", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>spi_st_load_en, 
                C1=>spi_rst, D1=>spi_next_state_3_N_273_3, DI1=>'X', DI0=>'X', 
                A0=>spi_0_spi_slave_0_trdy_N_386, 
                B0=>spi_0_spi_slave_0_bit_cnt_8, C0=>'X', 
                D0=>spi_0_spi_slave_0_bit_cnt_9, 
                M0=>spi_ctrl_0_spi_st_load_en_N_298, CE=>clk_N_258_enable_11, 
                CLK=>clockDivider_clk_4M, LSR=>clockDivider_clkLock, 
                OFX1=>open, F1=>spi_0_spi_slave_0_trdy_N_386, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n1471, Q0=>spi_st_load_en);
    spi_0_spi_slave_0_SLICE_84I: SLOGICB
      generic map (LUT0_INITVAL=>X"1166", LUT1_INITVAL=>X"DD11")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_n1383, 
                B1=>spi_0_spi_slave_0_rd_add, C1=>'X', 
                D1=>spi_0_spi_slave_0_n1772, DI1=>'X', DI0=>'X', 
                A0=>spi_0_spi_slave_0_bit_cnt_8, 
                B0=>spi_0_spi_slave_0_bit_cnt_10, C0=>'X', 
                D0=>spi_0_spi_slave_0_bit_cnt_9, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, 
                F1=>spi_0_spi_slave_0_sclk_N_406_enable_1, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n1772, Q0=>open);
    spi_0_spi_slave_0_SLICE_85I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"EFEE", 
                   LUT1_INITVAL=>X"F000", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>spi_0_spi_slave_0_wr_add, D1=>spi_0_spi_slave_0_bit_cnt_9, 
                DI1=>'X', DI0=>'X', A0=>spi_0_spi_slave_0_trdy_N_386, 
                B0=>spi_0_spi_slave_0_n1743, C0=>spi_0_spi_slave_0_rd_add, 
                D0=>top_test4_c, M0=>top_test1_c, 
                CE=>spi_0_spi_slave_0_bit_cnt_2, CLK=>top_test0_c, LSR=>'X', 
                OFX1=>open, F1=>spi_0_spi_slave_0_n1743, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_top_test0_c_enable_1, 
                Q0=>spi_0_spi_slave_0_rd_add);
    clockDivider_0_SLICE_86I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777", LUT1_INITVAL=>X"EFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>clockDivider_0_n1432, 
                B1=>clockDivider_0_n1430, C1=>clockDivider_0_n1467, 
                D1=>clockDivider_0_counter_2, DI1=>'X', DI0=>'X', A0=>LED_c, 
                B0=>clockDivider_0_n768, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>clockDivider_0_n768, 
                Q1=>open, OFX0=>open, F0=>clockDivider_0_n613, Q0=>open);
    SLICE_87I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"40FF", 
                   LUT1_INITVAL=>X"8000", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_tx_data_0, 
                B1=>spi_tx_load_en, C1=>spi_rst, D1=>spi_next_state_3_N_273_3, 
                DI1=>'X', DI0=>'X', A0=>spi_tx_data_0, B0=>spi_tx_load_en, 
                C0=>spi_next_state_3_N_273_3, D0=>spi_rst, M0=>top_spi_cs_c, 
                CE=>'X', CLK=>pll_clko, LSR=>'X', OFX1=>open, 
                F1=>spi_0_spi_slave_0_n1731, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1732, Q0=>spi_next_state_3_N_273_3);
    spi_0_spi_slave_0_SLICE_88I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"20FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_tx_load_en, 
                B1=>spi_tx_data_4, C1=>spi_next_state_3_N_273_3, D1=>spi_rst, 
                DI1=>'X', DI0=>'X', A0=>spi_tx_load_en, B0=>spi_tx_data_4, 
                C0=>spi_next_state_3_N_273_3, D0=>spi_rst, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>spi_0_spi_slave_0_n1721, 
                Q1=>open, OFX0=>open, F0=>spi_0_spi_slave_0_n1719, Q0=>open);
    spi_0_spi_slave_0_SLICE_89I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"4F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_tx_data_3, 
                B1=>spi_tx_load_en, C1=>spi_rst, D1=>spi_next_state_3_N_273_3, 
                DI1=>'X', DI0=>'X', A0=>spi_tx_data_3, B0=>spi_tx_load_en, 
                C0=>spi_next_state_3_N_273_3, D0=>spi_rst, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>spi_0_spi_slave_0_n1726, 
                Q1=>open, OFX0=>open, F0=>spi_0_spi_slave_0_n1725, Q0=>open);
    spi_0_spi_slave_0_SLICE_90I: SLOGICB
      generic map (LUT0_INITVAL=>X"40FF", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_tx_data_2, 
                B1=>spi_tx_load_en, C1=>spi_next_state_3_N_273_3, D1=>spi_rst, 
                DI1=>'X', DI0=>'X', A0=>spi_tx_data_2, B0=>spi_tx_load_en, 
                C0=>spi_next_state_3_N_273_3, D0=>spi_rst, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>spi_0_spi_slave_0_n1727, 
                Q1=>open, OFX0=>open, F0=>spi_0_spi_slave_0_n1728, Q0=>open);
    spi_0_spi_slave_0_SLICE_91I: SLOGICB
      generic map (LUT0_INITVAL=>X"40FF", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_tx_data_5, 
                B1=>spi_tx_load_en, C1=>spi_next_state_3_N_273_3, D1=>spi_rst, 
                DI1=>'X', DI0=>'X', A0=>spi_tx_data_5, B0=>spi_tx_load_en, 
                C0=>spi_next_state_3_N_273_3, D0=>spi_rst, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>spi_0_spi_slave_0_n1720, 
                Q1=>open, OFX0=>open, F0=>spi_0_spi_slave_0_n1722, Q0=>open);
    spi_0_spi_slave_0_SLICE_92I: SLOGICB
      generic map (LUT0_INITVAL=>X"40FF", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_tx_data_7, 
                B1=>spi_tx_load_en, C1=>spi_next_state_3_N_273_3, D1=>spi_rst, 
                DI1=>'X', DI0=>'X', A0=>spi_tx_data_7, B0=>spi_tx_load_en, 
                C0=>spi_next_state_3_N_273_3, D0=>spi_rst, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>spi_0_spi_slave_0_n1717, 
                Q1=>open, OFX0=>open, F0=>spi_0_spi_slave_0_n1716, Q0=>open);
    spi_0_spi_slave_0_SLICE_93I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"4F0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_tx_data_1, 
                B1=>spi_tx_load_en, C1=>spi_rst, D1=>spi_next_state_3_N_273_3, 
                DI1=>'X', DI0=>'X', A0=>spi_next_state_3_N_273_3, 
                B0=>spi_tx_load_en, C0=>spi_rst, D0=>spi_tx_data_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>spi_0_spi_slave_0_n1730, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1729, Q0=>open);
    SLICE_94I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"INV", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"40FF", 
                   LUT1_INITVAL=>X"8000", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_tx_data_6, 
                B1=>spi_tx_load_en, C1=>spi_next_state_3_N_273_3, D1=>spi_rst, 
                DI1=>'X', DI0=>'X', A0=>spi_tx_data_6, B0=>spi_tx_load_en, 
                C0=>spi_next_state_3_N_273_3, D0=>spi_rst, 
                M0=>spi_tx_load_en_N_303, CE=>clk_N_258_enable_12, 
                CLK=>clockDivider_clk_4M, LSR=>clockDivider_clkLock, 
                OFX1=>open, F1=>spi_0_spi_slave_0_n1715, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1724, Q0=>spi_tx_load_en);
    SLICE_95I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"1F00", 
                   LUT1_INITVAL=>X"88FF", CHECK_M0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_next_state_3_N_273_3, 
                B1=>top_test3_c, C1=>'X', D1=>spi_rst, DI1=>'X', DI0=>'X', 
                A0=>top_test3_c, B0=>spi_st_load_en, 
                C0=>spi_next_state_3_N_273_3, D0=>spi_rst, 
                M0=>spi_next_state_3_N_273_3, CE=>clk_N_258_enable_1, 
                CLK=>clockDivider_clk_4M, LSR=>n1398, OFX1=>open, 
                F1=>spi_0_spi_slave_0_n1569, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1733, Q0=>top_test3_c);
    clockDivider_0_SLICE_96I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC00", LUT1_INITVAL=>X"FFFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>clockDivider_0_counter_4, 
                B1=>'X', C1=>clockDivider_0_counter_3, 
                D1=>clockDivider_0_counter_7, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>clockDivider_0_counter_0, C0=>'X', 
                D0=>clockDivider_0_counter_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>clockDivider_0_n1432, Q1=>open, 
                OFX0=>open, F0=>clockDivider_0_n1467, Q0=>open);
    SLICE_97I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"FFCC", 
                   LUT1_INITVAL=>X"FCFF", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>spi_tx_load_en_N_303, 
                C1=>n492, D1=>clockDivider_clkLock, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>n492, C0=>'X', D0=>spi_tx_load_en_N_303, 
                M0=>spi_ctrl_0_spi_st_load_en_N_298, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>clockDivider_clkLock, 
                OFX1=>open, F1=>clk_N_258_enable_12, Q1=>open, OFX0=>open, 
                F0=>n1744, Q0=>spi_tx_load_en_N_303);
    spi_0_spi_slave_0_SLICE_98I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC00", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_bit_cnt_8, 
                B1=>spi_0_spi_slave_0_n1741, C1=>spi_0_spi_slave_0_rrdy_N_391, 
                D1=>spi_rst, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>spi_next_state_3_N_273_3, C0=>'X', D0=>spi_tx_load_en, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>spi_0_spi_slave_0_n1365, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1739, Q0=>open);
    spi_0_spi_slave_0_SLICE_99I: SLOGICB
      generic map (LUT0_INITVAL=>X"2E22", LUT1_INITVAL=>X"5000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>spi_0_spi_slave_0_trdy_N_386, 
                B1=>'X', C1=>spi_0_spi_slave_0_bit_cnt_8, 
                D1=>spi_0_spi_slave_0_trdy_N_385, DI1=>'X', DI0=>'X', 
                A0=>spi_0_spi_slave_0_tx_buf_7, B0=>spi_0_spi_slave_0_rd_add, 
                C0=>spi_0_spi_slave_0_n1471, D0=>spi_0_spi_slave_0_roe_N_398, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>spi_0_spi_slave_0_n1366, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_miso_N_426, Q0=>open);
    SLICE_100I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>top_rst_n_c, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>top_rst_n_N_74, 
                Q0=>open);
    SLICE_101I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF0F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>clockDivider_clkLock, D0=>n494, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>clk_N_258_enable_9, Q0=>open);
    SLICE_102I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"FDFD", CHECK_M0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>clockDivider_clkLock, 
                B0=>n490, C0=>n494, D0=>'X', M0=>n490, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>clockDivider_clkLock, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n1398, 
                Q0=>n494);
    spi_0_spi_slave_0_SLICE_103I: SLOGICB
      generic map (LUT0_INITVAL=>X"0C0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>spi_0_spi_slave_0_bit_cnt_10, C0=>spi_0_spi_slave_0_wr_add, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_rx_buf_6_N_314, Q0=>open);
    spi_0_spi_slave_0_SLICE_104I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>spi_0_spi_slave_0_wr_add, D0=>spi_0_spi_slave_0_bit_cnt_9, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>spi_0_spi_slave_0_rx_buf_7_N_309, 
                Q0=>open);
    spi_0_spi_slave_0_SLICE_105I: SLOGICB
      generic map (LUT0_INITVAL=>X"0A0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>spi_0_spi_slave_0_bit_cnt_11, 
                B0=>'X', C0=>spi_0_spi_slave_0_wr_add, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_rx_buf_5_N_316, Q0=>open);
    spi_0_spi_slave_0_SLICE_106I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>spi_next_state_3_N_273_3, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n1735, Q0=>open);
    spi_0_spi_slave_0_SLICE_107I: SLOGICB
      generic map (LUT0_INITVAL=>X"C000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>n496, 
                C0=>spi_0_spi_slave_0_rrdy_N_391, D0=>spi_rst, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_n1406, Q0=>open);
    spi_0_spi_slave_0_SLICE_108I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>spi_0_spi_slave_0_wr_add, D0=>spi_0_spi_slave_0_bit_cnt_12, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>spi_0_spi_slave_0_rx_buf_4_N_318, 
                Q0=>open);
    spi_0_spi_slave_0_SLICE_109I: SLOGICB
      generic map (LUT0_INITVAL=>X"00AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>spi_0_spi_slave_0_bit_cnt_15, 
                B0=>'X', C0=>'X', D0=>spi_0_spi_slave_0_wr_add, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>spi_0_spi_slave_0_rx_buf_1_N_324, Q0=>open);
    spi_0_spi_slave_0_SLICE_110I: SLOGICB
      generic map (LUT0_INITVAL=>X"EFDF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>spi_0_spi_slave_0_bit_cnt_8, 
                B0=>spi_0_spi_slave_0_bit_cnt_10, C0=>spi_0_spi_slave_0_rd_add, 
                D0=>spi_0_spi_slave_0_bit_cnt_9, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1482, Q0=>open);
    spi_0_spi_slave_0_SLICE_111I: SLOGICB
      generic map (LUT0_INITVAL=>X"0F00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>spi_next_state_3_N_273_3, D0=>spi_rst, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>bit_cnt_15_N_307, Q0=>open);
    spi_0_spi_slave_0_SLICE_112I: SLOGICB
      generic map (LUT0_INITVAL=>X"CC00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>top_test3_c, C0=>'X', 
                D0=>spi_next_state_3_N_273_3, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_n1738, Q0=>open);
    spi_0_spi_slave_0_SLICE_113I: SLOGICB
      generic map (LUT0_INITVAL=>X"0C0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>spi_0_spi_slave_0_bit_cnt_13, C0=>spi_0_spi_slave_0_wr_add, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_rx_buf_3_N_320, Q0=>open);
    spi_0_spi_slave_0_SLICE_114I: SLOGICB
      generic map (LUT0_INITVAL=>X"3300")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>spi_0_spi_slave_0_wr_add, C0=>'X', 
                D0=>spi_0_spi_slave_0_bit_cnt_14, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_rx_buf_2_N_322, Q0=>open);
    spi_0_spi_slave_0_SLICE_115I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0C0C", CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>top_test4_c, 
                C0=>spi_0_spi_slave_0_wr_add, D0=>'X', M0=>top_test1_c, 
                CE=>spi_0_spi_slave_0_bit_cnt_1, CLK=>top_test0_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>spi_0_spi_slave_0_rx_buf_0_N_326, 
                Q0=>spi_0_spi_slave_0_wr_add);
    SLICE_116I: SLOGICB
      generic map (LUT0_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>GND_net, Q0=>open);
    osc_enI: osc_enB
      port map (oscen=>osc_en);
    serial_clkI: serial_clkB
      port map (serialclk=>serial_clk);
    serial_iqI: serial_iqB
      port map (serialiq=>serial_iq);
    top_spi_misoI: top_spi_misoB
      port map (PADDO=>top_spi_miso_c, topspimiso=>top_spi_miso);
    top_test4I: top_test4B
      port map (PADDO=>top_test4_c, toptest4=>top_test4);
    top_test3I: top_test3B
      port map (PADDO=>top_test3_c, toptest3=>top_test3);
    top_test2I: top_test2B
      port map (PADDO=>miso_N_404, PADDT=>spi_0_spi_slave_0_miso_N_405, 
                toptest2=>top_test2);
    top_test6I: top_test6B
      port map (PADDO=>n1735, toptest6=>top_test6);
    top_test1I: top_test1B
      port map (PADDO=>top_test1_c, toptest1=>top_test1);
    top_test0I: top_test0B
      port map (PADDO=>top_test0_c, toptest0=>top_test0);
    top_test5I: top_test5B
      port map (PADDO=>n1723, toptest5=>top_test5);
    LEDI: LEDB
      port map (PADDO=>LED_c, LEDS=>LED);
    top_clkI: top_clkB
      port map (PADDI=>top_clk_c, topclk=>top_clk);
    top_rst_nI: top_rst_nB
      port map (PADDI=>top_rst_n_c, toprstn=>top_rst_n);
    top_spi_mosiI: top_spi_mosiB
      port map (PADDI=>top_spi_mosi_c, topspimosi=>top_spi_mosi);
    top_spi_sclkI: top_spi_sclkB
      port map (PADDI=>top_spi_sclk_c, topspisclk=>top_spi_sclk);
    top_spi_csI: top_spi_csB
      port map (PADDI=>top_spi_cs_c, topspics=>top_spi_cs);
    GSR_INST: GSR_INSTB
      port map (GSRNET=>bit_cnt_15_N_307);
    LED_I_0_114_PLLInst_0I: LED_I_0_114_PLLInst_0
      port map (CLKI=>LED_I_0_114_CLKIt, CLKFB=>pll_clko, STDBY=>GND_net, 
                RST=>top_rst_n_N_74, LOCK=>LED_c, CLKOP=>pll_clko);
    LED_I_0_114_PLLRefcs_0I: LED_I_0_114_PLLRefcs_0
      port map (CLK0=>GND_net, CLK1=>top_clk_c, PLLCSOUT=>LED_I_0_114_CLKIt);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5U;
  configuration Structure_CON of topModule is
    for Structure
    end for;
  end Structure_CON;


