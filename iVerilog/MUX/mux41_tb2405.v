module mux41_tb2405;
reg i0,i1,i2,i3,y1,y2,y3,y4;
wire s0,s1,out;
mux41_2405 muxfn(s0,s1,i0,i1,i2,i3,y1,y2,y3,y4,out);
initial
begin
$display("yo");
$monitor("s0=%b s1=%b i1=%b i2=%b i3=%b i4=%b output=%b ",s0,s1,i0,i1,i2,i3,out);
y4=1'b0;
y1=1'b0;
y2=1'b0;
y3=1'b1;
i1=1'b1;
i2=1'b0;
i3=1'b0;
i0=1'b0;
#5;
end
endmodule