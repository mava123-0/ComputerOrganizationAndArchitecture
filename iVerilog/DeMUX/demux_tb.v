module demux_tb;

reg in;
reg [1:0] select;
wire [3:0] op;

integer i;

demux my_mux( select, in, op );

initial 
begin
   #1 $monitor("Input = %b", in, "  |  select = %b", select, "  |  op = %b ", op );
 
   for( i = 0; i <= 3; i = i + 1)
   begin
	select = i;
    in = 0; #1;
	in = 1; #1;
   	$display("-----------------------------------------");
    end 
    
end 
endmodule