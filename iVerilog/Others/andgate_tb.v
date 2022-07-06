module andgate_tb;
reg t_a,t_b;
wire t_y;
andgate my_gate(.a(t_a),.b(t_b),.y(t_y));
initial
begin
$monitor (t_a,t_b,t_y);
t_a=1'b0;
t_b=1'b0;
#10
t_a=1'b0;
t_b=1'b1;
#10
t_a=1'b1;
t_b=1'b0;
#10
t_a=1'b1;
t_b=1'b1;
end
endmodule