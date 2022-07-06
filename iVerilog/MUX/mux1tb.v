module mux_tb;
reg i1,i2,i3,i4,y0,y1,y2,y3;
wire y,s1,s0;
mux1 mymod(s0,s1,i1,i2,i3,i4,y,y0,y1,y2,y3);
initial
begin
$monitor("s0=%b s1=%b i1=%b i2=%b i3=%b i4=%b y=%b ",s0,s1,i1,i2,i3,i4,y);
y0=1'b0;
y1=1'b0;
y2=1'b0;
y3=1'b1;
i1=1'b1;
i2=1'b0;
i3=1'b0;
i4=1'b0;
#5;
end
endmodule