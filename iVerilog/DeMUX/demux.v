module demux( select, in, op );

input[1:0] select;
input in;
output[3:0] op;

wire in;
wire[1:0] select;
reg[3:0] op;

initial
begin
op=0;
op[select]=in;

end
endmodule