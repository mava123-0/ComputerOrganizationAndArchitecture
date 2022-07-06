module (a,b,c,d,s0,s1,out);
input a,b,c,d;
output s0,s1;

assign out=s1?(s0?d:c):(s0?b:a)

endmodule