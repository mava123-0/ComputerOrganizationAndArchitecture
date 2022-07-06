module mux41_tb();
reg a,b,c,d,e,f,g,h;
reg [2:0] s;
wire y;
mux41 m(.s(s),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.y(y));
initial
begin
$monitor("selection: %b,Input: %b %b %b %b %b %b %b %b, Output: %b",s,a,b,c,d,e,f,g,h,y);

	s=3'b000; a=0; b=0; c=0; d=0; e=0; f=0; g=0; h=1;
 #5
	s=3'b001; a=0; b=0; c=0; d=0; e=0; f=0; g=1; h=0;
 #5
	s=3'b010; a=0; b=0; c=0; d=0; e=0; f=1; g=0; h=0;
 #5
	s=3'b011; a=0; b=0; c=0; d=0; e=1; f=0; g=0; h=0;
 #5
 	s=3'b100; a=0; b=0; c=0; d=1; e=0; f=0; g=0; h=0;
 #5
 	s=3'b101; a=0; b=0; c=1; d=0; e=0; f=0; g=0; h=0;
 #5
 	s=3'b110; a=0; b=1; c=0; d=0; e=0; f=0; g=0; h=0;
 #5
 	s=3'b111; a=1; b=0; c=0; d=0; e=0; f=0; g=0; h=0;
 #5
 
$finish();
end
endmodule
