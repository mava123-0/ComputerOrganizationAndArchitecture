module decod38beh_tb;
reg [2:0] in;
wire [7:0] out;
reg en;

decod38beh dec(.in(in),.out(out),.en(en));

initial
begin
$monitor("en: %b in: %b out: %b",en,in,out);
en=1'b1;
in=3'b000;
#100
en=1'b1;
in=3'b001;
#100
en=1'b1;
in=3'b010;
#100
en=1'b1;
in=3'b011;
#100
en=1'b1;
in=3'b100;
#100
en=1'b1;
in=3'b101;
#100
en=1'b1;
in=3'b110;
#100
en=1'b1;
in=3'b111;

#100
en=1'b0;
in=3'b000;
#100
en=1'b0;
in=3'b001;
#100
en=1'b0;
in=3'b010;
#100
en=1'b0;
in=3'b011;
#100
en=1'b0;
in=3'b100;
#100
en=1'b0;
in=3'b101;
#100
en=1'b0;
in=3'b110;
#100
en=1'b0;
in=3'b111;

end
endmodule