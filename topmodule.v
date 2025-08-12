3: Chương trình verilog
module DEMUX1_8(
    input i,
    input s0,
    input s1,
    input s2,
    output [7:0] d
    );
	
  assign d[0]= (i & ~s2 & ~s1 & ~s0);
  assign d[1] = (i & ~s2 & ~s1 &  s0);
  assign d[2] = (i & ~s2 &  s1 & ~s0);
  assign d[3] = (i & ~s2 &  s1 &  s0);
  assign d[4] = (i &  s2 & ~s1 & ~s0);
  assign d[5] = (i &  s2 & ~s1 &  s0);
  assign d[6] = (i &  s2 &  s1 & ~s0);
  assign d[7] = (i &  s2 &  s1 &  s0);
endmodule
