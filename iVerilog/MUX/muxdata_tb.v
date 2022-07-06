module mux_tb;
reg a,b,c,d,s0,s1;
wire out;

muxdata muxtest(.a(a),.b(b),.c(c),.d(d),.s0(s0),.s1(s1),.out(out));

initial
begin
$monitor (a,b,c,d,s0,s1,out);
#100
a=1'b1;
b=1'b0;
c=1'b0;
d=1'b0;
s0=1'b0;
s=1'b0;
#100
a=1'b0;
b=1'b1;
c=1'b0;
d=1'b0;
s0=1'b0;
s=1'b0;
#100
a=1'b0;
b=1'b0;
c=1'b1;
d=1'b0;
s0=1'b0;
s=1'b0;
#100
a=1'b0;
b=1'b0;
c=1'b0;
d=1'b1;
s0=1'b0;
s=1'b0;

#100
a=1'b1;
b=1'b0;
c=1'b0;
d=1'b0;
s0=1'b0;
s=1'b0;
#100
a=1'b0;
b=1'b1;
c=1'b0;
d=1'b0;
s0=1'b0;
s=1'b0;
#100
a=1'b0;
b=1'b0;
c=1'b1;
d=1'b0;
s0=1'b0;
s=1'b0;
#100
a=1'b0;
b=1'b0;
c=1'b0;
d=1'b1;
s0=1'b0;
s=1'b0;
