module mux8to1muxTest;
reg i0, i1, i2, i3, i4, i5, i6, i7,s0, s1, s2;
wire y, t1, t2;
mux4to1 fourto1_a(s0, s1, i0, i1, i2, i3, t1);
mux4to1 fourto1_b(s0, s1, i4, i5, i6, i7, t2);
mux2to1 twoto1_test(s2, t1, t2, y);

integer i, j, k;
initial
	begin
		$display(" 8:1 Mux in terms of 4:1 and 2:1");
		$display("S2  S1  S0  I0  I1  I2  I3  I4  I5  I6  I7  Y");
		$monitor("%d   %d   %d   %d   %d   %d   %d   %d   %d   %d   %d   %d", s0, s1, s2, i0, i1, i2, i3, i4, i5, i6, i7, y);
		
		i0 = 1'b0;
		i1 = 1'b1;
		i2 = 1'b1;
		i3 = 1'b0;
		i4 = 1'b1;
		i5 = 1'b1;
		i6 = 1'b0;
		i7 = 1'b1;
		
		for(i=0;i<=1;i++)
		begin
			for(j=0;j<=1;j++)
			begin
				for(k=0;k<=1;k++)
				begin
					s0 = k;
					s1 = j;
					s2 = i;
					#10;
					
				end
			end
		end
		
		
		
		
	
	
	end
endmodule	
	

