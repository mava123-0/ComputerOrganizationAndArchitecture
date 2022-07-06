module halfadder;
reg a,b,t1;
wire cout,sum;
and(cout,a,b);
xor(sum,a,b);
initial
begin 
$monitor("a:%b b:%b sum:%b cout:%b",a,b,sum,cout);
a=1'b0;
b=1'b0;
#10
a=1'b0;
b=1'b1;
#10
a=1'b1;
b=1'b0;
#10
a=1'b1;
b=1'b1;
end
endmodule 