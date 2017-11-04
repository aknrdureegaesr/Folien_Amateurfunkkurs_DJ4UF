<Qucs Schematic 0.0.18>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=HelloWorld.dat>
  <DataDisplay=HelloWorld.dpl>
  <OpenDisplay=1>
  <Script=HelloWorld.m>
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
  <R R1 1 380 90 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 130 280 0 0 0 0>
  <.TR TR1 1 590 150 0 81 0 0 "lin" 1 "0" 1 "10 ms" 1 "50" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vrect V1 1 130 200 18 -26 0 1 "1 V" 1 "1 ms" 1 "1 ms" 1 "100 ns" 0 "0.01 ns" 0 "0 ns" 0>
</Components>
<Wires>
  <410 90 470 90 "" 0 0 0 "">
  <470 90 470 280 "" 0 0 0 "">
  <130 280 470 280 "" 0 0 0 "">
  <130 230 130 280 "" 0 0 0 "">
  <130 90 350 90 "R1" 290 50 132 "">
  <130 90 130 170 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
