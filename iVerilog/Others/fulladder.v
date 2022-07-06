module halfadder;
reg t_a,t_b,cin;
wire sum,cout,t1,t2,t3;
xor(t1,t_a,t_b);
xor(sum,t1,cin);
and(t2,cin,t1);
and(t3,t_a,t_b);
or(cout,t2,t3);
initial
begin
$monitor ("a: %b b:%b c_in:%b sum: %b cout:%b",t_a,t_b,cin,sum,cout);
t_a=1'b0;
t_b=1'b0;
cin=1'b0;
#10
t_a=1'b0;
t_b=1'b1;
cin=1'b1;
#10
t_a=1'b1;
t_b=1'b0;
cin=1'b0;
#10
t_a=1'b1;
t_b=1'b1;
cin=1'b1;
end
endmodule