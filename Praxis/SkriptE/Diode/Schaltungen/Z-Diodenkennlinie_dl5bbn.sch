<Qucs Schematic 0.0.18>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=z-diodenkennl.dat>
  <DataDisplay=z-diodenkennl.dpl>
  <OpenDisplay=1>
  <Script=z-diodenkennl.m>
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
  <GND * 1 350 220 0 0 0 0>
  <IProbe Pr1 1 460 80 -26 16 1 2>
  <Vdc V1 1 580 190 18 -26 0 1 "ud1" 1>
  <.DC DC1 1 220 300 0 54 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Lib D1 1 350 190 -26 11 0 3 "Z-Diodes" 0 "1N4734A" 0>
  <.SW SW1 1 50 80 0 93 0 0 "DC1" 1 "lin" 1 "ud1" 1 "-0.7V" 1 "7V" 1 "20" 1>
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
