input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../ru-note}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";





beginfig(10) 
save u;
u:=1cm;

path p[];

z.a=origin;
z.b=(2,0)*u;
z.d=(0,1)*u;
z.c=z.b+z.d;

fill z.a--z.b--z.c--z.d--cycle withcolor .8;
draw z.a--z.b--z.c--z.d--cycle;
draw .5[z.a,z.b]--.5[z.b,z.c]--.5[z.c,z.d]--.5[z.d,z.a]--cycle dashed evenly;
draw .5[z.a,z.b]--.5[z.c,z.d] dashed evenly;

Dot z.a,z.b,z.c,z.d,.5[z.a,z.b],.5[z.b,z.c],.5[z.c,z.d],.5[z.d,z.a];

drawdblarrow (.25[z.a,z.b]{down}..tension 1.4..(.75)[z.a,z.b]{up}) shifted (0,-3);
drawdblarrow (.25[z.b,z.c]{right}..tension 1.4..(.75)[z.b,z.c]{left}) shifted (3,0);
drawdblarrow (.25[z.c,z.d]{up}..tension 1.4..(.75)[z.c,z.d]{down}) shifted (0,3);
drawdblarrow (.25[z.d,z.a]{left}..tension 1.4..(.75)[z.d,z.a]{right}) shifted (-3,0);

endfig;

end
