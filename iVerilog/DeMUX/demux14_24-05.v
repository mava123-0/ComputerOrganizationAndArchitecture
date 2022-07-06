module demux(d,s0,s1,o1,o2,o3,o4);
input d,s0,s1;
output nots0,nots1,o1,o2,o3,o4;
not(nots0,s0);
not(nots1,s1);
and(o1,nots0,nots1,d);
and(o1,s0,nots1,d);
and(o1,nots0,s1,d);
and(o1,s0,s1,d);
endmodule