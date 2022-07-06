module fullsubtractor;
reg t_a,t_b,bin;
wire diff,bout,t1,t2,t3,t4,notb,nota;
xor(t1,t_a,t_b);
xor(diff,t1,bin);
xor(t2,t_b,bin);
not(notb,_b);
and(t3,t2,_a);
and(t4,notb,bin);
or(bout,t4,t5);

initial
begin
$monitor ("a: %b b:%b b_in:%b diff:%b bout:%b",t_a,t_b,bin,diff,bout);
t_a=1'b0;
t_b=1'b0;
bin=1'b0;
#10
t_a=1'b0;
t_b=1'b1;
bin=1'b1;
#10
t_a=1'b1;
t_b=1'b0;
bin=1'b0;
#10
t_a=1'b1;
t_b=1'b1;
bin=1'b1;
end
endmodule