module evalq_secd_tb;

reg i0,i1,i2,i3,c0,c1;
wire q;

muxdex myfn (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.c0(c0),.c1(c1),.q(q));

initial
begin
$display("yo");
$monitor("c0= %b c1= %b i0= %b  i1= %b  i2= %b  i3= %b  q= %b", c0,c1,i0,i1,i2,i3,q);

c0=1'b1;
c1=1'b0;
i0=1'b1;
i1=1'b0;
i2=1'b0;
i3=1'b0;
#10
c0=1'b0;
c1=1'b0;
i0=1'b0;
i1=1'b0;
i2=1'b1;
i3=1'b1;

end 
endmodule