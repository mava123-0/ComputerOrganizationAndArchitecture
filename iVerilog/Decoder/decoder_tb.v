module decoder_tb;

reg [1:0] in;
reg enb;
wire [3:0] op;


integer i;

decoder my_dc( enb, in, op );

initial 
begin
   #1 $monitor("enable = ", enb, " | Input = %b", in, "  |  output = %b ", op );
 	
   assign enb = 1;
   for( i = 0; i <= 3; i = i + 1)
   begin
	in = i;#1
   	$display("-----------------------------------------");
    end 
    
end 
endmodule