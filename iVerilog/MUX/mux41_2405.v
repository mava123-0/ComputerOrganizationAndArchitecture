module mux41_2405(s0,s1,i0,i1,i2,i3,y1,y2,y3,y4,out);
input i0,i1,i2,i3,y1,y2,y3,y4;
output s0,s1,out,nots0,nots1,o0,o1,o2,o3;
or(s0,y1,y2);
or(s1,y2,y3);
not(nots0,s0);
not(nots1,s1);
and(o0,nots0,nots1);
and(o1,s0,nots1);
and(o2,nots0,s1);
and(o3,s0,s1);
or(out,o0,o1,o2,o3);
endmodule