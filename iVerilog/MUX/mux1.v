module mux1(s0,s1,i1,i2,i3,i4,y,y0,y1,y2,y3);
input i1,i2,i3,i4,y0,y1,y2,y3;
output s0,s1,y,q1,q2,q3,q4,w1,w0;
or(s1,y1,y3);
or(s0,y2,y3);
not(w0,s0);
not(w1,s1);
and(q1,s0,s1,i1);
and(q2,s0,w1,i2);
and(q3,w0,s1,i3);
and(q4,w0,w1,i4);
or(y,q1,q2,q3,q4);
endmodule