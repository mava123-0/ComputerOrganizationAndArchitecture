module decoder( enb, in, op );

input[1:0] in;
input enb;
output[3:0] op;

wire [1:0] in;
wire enb;
reg [3:0] op;

initial
begin
op=0;
op[in]=1;

end
endmodule