;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Hello : 
  module Hello : 
    input clock : Clock
    input reset : UInt<1>
    output io : {led : UInt<1>}
    
    reg cntReg : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Main.scala 20:23]
    reg blkReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Main.scala 21:23]
    node _T = add(cntReg, UInt<1>("h01")) @[Main.scala 23:20]
    node _T_1 = tail(_T, 1) @[Main.scala 23:20]
    cntReg <= _T_1 @[Main.scala 23:10]
    node _T_2 = eq(cntReg, UInt<25>("h017d783f")) @[Main.scala 24:15]
    when _T_2 : @[Main.scala 24:28]
      cntReg <= UInt<1>("h00") @[Main.scala 25:12]
      node _T_3 = not(blkReg) @[Main.scala 26:15]
      blkReg <= _T_3 @[Main.scala 26:12]
      skip @[Main.scala 24:28]
    io.led <= blkReg @[Main.scala 28:10]
    
