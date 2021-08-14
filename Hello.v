module Hello(
  input   clock,
  input   reset,
  output  io_led
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] cntReg; // @[Main.scala 20:23]
  reg  blkReg; // @[Main.scala 21:23]
  wire [31:0] _T_1 = cntReg + 32'h1; // @[Main.scala 23:20]
  assign io_led = blkReg; // @[Main.scala 28:10]
  always @(posedge clock) begin
    if (reset) begin // @[Main.scala 20:23]
      cntReg <= 32'h0; // @[Main.scala 20:23]
    end else if (cntReg == 32'h17d783f) begin // @[Main.scala 24:28]
      cntReg <= 32'h0; // @[Main.scala 25:12]
    end else begin
      cntReg <= _T_1; // @[Main.scala 23:10]
    end
    if (reset) begin // @[Main.scala 21:23]
      blkReg <= 1'h0; // @[Main.scala 21:23]
    end else if (cntReg == 32'h17d783f) begin // @[Main.scala 24:28]
      blkReg <= ~blkReg; // @[Main.scala 26:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cntReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  blkReg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
