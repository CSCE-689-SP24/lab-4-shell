// © 2015-2019 Synopsys, Inc.
// This Synopsys ZeBu Lab source code and all associated documentation are proprietary and
// confidential to Synopsys, Inc. and may only be used pursuant to the terms and conditions
// of a written license agreement with Synopsys, Inc. All other use, reproduction,
// modification, or distribution of the Synopsys ZeBu Lab source code or the associated
// documentation is strictly prohibited.

module fifo_usage_spy #(
  parameter WIDTH=5,
  parameter DEPTH=32
)(
  input  clk,
  input  rstn,
  input hff_o,
 input ff_o,
 input ef_o,
 input we,
 input re,
 input [WIDTH-1:0] datain,
 input [WIDTH-1:0] dataout
);


  import "DPI-C" context function void fifo_usage_spy_notify (input bit we,
    input bit re, input bit hff_o, input bit ff_o, input bit ef_o,
    input bit[WIDTH-1 : 0 ] datain, input bit[WIDTH-1:0]dataout
);
always @(posedge clk or negedge rstn)
    if (rstn)
         if(we || re)
           fifo_usage_spy_notify(we,re,hff_o,ff_o,ef_o,datain,dataout);
endmodule
