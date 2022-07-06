module halfsubtractor;
reg a,b;
wire diff,bout,nota;
not(nota,a);
and(bout,nota,b);
xor(diff,a,b);
initial
begin
$monitor("a=%b b=%b diff=%b bout=%b",a,b,diff,bout);
#1000
a=1'b0;
b=1'b0;
#1000
a=1'b0;
b=1'b1;
#1000
a=1'b1;
b=1'b0;
#1000
a=1'b1;
b=1'b1;
end 
endmodule