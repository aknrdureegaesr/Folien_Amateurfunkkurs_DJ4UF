<Qucs Schematic 0.0.16>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=diodenkennl.dat>
  <DataDisplay=diodenkennl.dpl>
  <OpenDisplay=1>
  <Script=diodenkennl.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Diode D_1N4148_1 1 350 190 13 -26 0 1 "222p" 1 "1.65" 1 "4p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "68.6m" 0 "5.76n" 0 "0" 0 "0" 0 "1" 0 "1" 0 "75" 0 "1u" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <GND * 1 580 220 0 0 0 0>
  <GND * 1 350 220 0 0 0 0>
  <IProbe Pr1 1 460 80 -26 16 1 2>
  <Vdc V1 1 580 190 18 -26 0 1 "ud1" 1>
  <.DC DC1 1 220 300 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 50 80 0 63 0 0 "DC1" 1 "lin" 1 "ud1" 1 "0V" 1 "0.8V" 1 "20" 1>
</Components>
<Wires>
  <580 80 580 160 "" 0 0 0 "">
  <490 80 580 80 "" 0 0 0 "">
  <350 80 430 80 "" 0 0 0 "">
  <350 80 350 160 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
