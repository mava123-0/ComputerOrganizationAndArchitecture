module mux41(s,a,b,c,d,e,f,g,h,y);
input a,b,c,d,e,f,g,h;
input [2:0] s;
output y;
reg y;
always@(*)begin
/*case (s)	
	2'b00 : y=a;
	2'b01 : y=b;
	2'b10 : y=c;
	2'b11 : y=d;
endcase*/

if(s==3'b000)	
	begin
	y=h;
	end
else if(s==3'b001)
	begin
	y=g;
	end
else if(s==3'b010)
	begin
	y=f;
	end
else if(s==3'b011)
	begin
	y=e;
	end
else if(s==3'b100)
	begin
	y=d;
	end
else if(s==3'b101)
	begin
	y=c;
	end
else if(s==3'b110)
	begin
	y=b;
	end
else if(s==3'b111)
	begin
	y=a;
	end

end
endmodule
