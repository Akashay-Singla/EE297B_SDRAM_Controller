module fifo_design(input clk,rst,input [15:0] data_in,
     input push,pull, output reg [15:0] data_out, output empty,full);

reg [15:0] fifo[8];
reg [3:0] WA,RA;
always@(posedge clk or negedge rst) begin
    if(!rst) begin
    fifo[0] <= 0; fifo[1] <= 0; fifo[3] <=0;
    fifo[4] <= 0; fifo[5] <=0; fifo[6] <=0; fifo[7] <=0;
    fifo[2]<= 0; 
    WA <= 4'b0000;
    RA <= 4'b0000;
    data_out<=0;
    end
    else begin
     if(push && !full) begin
        fifo[WA[2:0]] <= data_in;
        WA <= WA + 1'b1;
     end
     if(pull && !empty) begin
       data_out <= fifo[RA[2:0]];
       RA <= RA + 1'b1;
     end 
 end
end
assign empty = (RA == WA) ? 1'b1:1'b0;
assign full = ((RA[3]!= WA[3]) && (RA[2:0]==WA[2:0]))? 1'b1: 1'b0;
endmodule