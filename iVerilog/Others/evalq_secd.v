module muxdex(i0,i1,i2,i3,c0,c1,q);	
input i0,i1,i2,i3,c0,c1;
output q;

wire q;
wire notc0,notc1;
wire e0,e1,e2,e3;
wire j0,j1,j2,j3;

not(notc0,c0);
not (notc1,c1);

and (e0,notc0,notc1);
and (e1,c0,notc1);
and (e2,notc0,c1);
and (e3,c0,c1);

and(j0,i0,e3);
and(j1,i1,e2);
and(j2,i2,e1);
and(j3,i3,e0);

or(q,j0,j1,j2,j3);

endmodule