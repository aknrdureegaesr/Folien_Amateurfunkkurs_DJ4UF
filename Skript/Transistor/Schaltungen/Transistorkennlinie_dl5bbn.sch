<Qucs Schematic 0.0.16>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=transkennl.dat>
  <DataDisplay=transkennl.dpl>
  <OpenDisplay=1>
  <Script=transkennl.m>
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
  <GND * 1 580 220 0 0 0 0>
  <Vdc V1 1 580 190 18 -26 0 1 "ud1" 1>
  <.DC DC1 1 220 300 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 50 80 0 63 0 0 "DC1" 1 "lin" 1 "ud1" 1 "0V" 1 "10V" 1 "120" 1>
  <_BJT BC108BP_1 1 290 180 -99 -26 1 2 "npn" 0 "1.8e-14" 0 "0.9955" 0 "1.005" 0 "0.14" 0 "0.03" 0 "80" 0 "12.5" 0 "5e-14" 0 "1.46" 0 "1.72e-13" 0 "1.27" 0 "400" 0 "35.5" 0 "0" 0 "0" 0 "0.25" 0 "0.6" 0 "0.56" 0 "1.3e-11" 0 "0.75" 0 "0.33" 0 "4e-12" 0 "0.54" 0 "0.33" 0 "1" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "6.4e-10" 0 "0" 0 "0" 0 "0" 0 "5.072e-08" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "0" 0 "1" 0 "1" 0 "0" 0 "0" 0 "3" 0 "1.11" 0 "26.85" 0 "1" 0>
  <GND * 1 290 210 0 0 0 0>
  <IProbe Pr2 1 320 80 -26 16 1 2>
  <Idc I1 1 460 210 18 -26 0 1 "1 mA" 1>
  <GND * 1 460 240 0 0 0 0>
</Components>
<Wires>
  <580 80 580 160 "" 0 0 0 "">
  <290 80 290 150 "" 0 0 0 "">
  <350 40 350 80 "" 0 0 0 "">
  <350 40 520 40 "" 0 0 0 "">
  <520 80 580 80 "" 0 0 0 "">
  <520 40 520 80 "" 0 0 0 "">
  <320 180 460 180 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
