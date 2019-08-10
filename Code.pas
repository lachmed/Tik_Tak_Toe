program X_O;
uses crt,Dos;
Var s,i,j,cpt,c,test,v : Integer;
var XO: string;
T:array [ 0..2,0..2] of string ;
const
  X='X';
  O='O';
{ affichage de T }
procedure affichagedet;
var i,j : integer ;
begin
for i:= 0 to 2 do
begin
for j:= 0 to 2 do
write(T[i,j],' ');
writeln;
end;
writeln;
;
;
end;
{ qui va commencer ? }
procedure commencer;
var get:integer;
begin
randomize;
get:=random(1000);
if ((get mod 3=0) xor (get mod 5 =0 ) xor (get mod 8 =0)) then
begin  
    writeln('X va commencer');
    XO:=X;
end
else
  begin
   writeln('O va commencer');
   XO:=O;
end;
;
end;
begin
{ remplissage de T }
T[0,0]:= '1';
T[0,1]:= '2';
T[0,2]:= '3';
T[1,0]:= '4';
T[1,1]:= '5';
T[1,2]:= '6';
T[2,0]:= '7';
T[2,1]:= '8';
T[2,2]:= '9';
ClrScr;
commencer;
writeln(' Jouez ! '); 
cpt:=0;
test:=0;
affichagedet;
repeat
writeln(' choisir une case ');
read(c);
if (c<>test) then
case c of
 1 :
begin 
 if (XO=X) then 
 begin
   repeat
   writeln(' insérer ',XO,' (Maj) '); 
   read(T[0,0]);
   until (T[0,0]=X);
 XO:=O    
 end
else    
  begin
 repeat   
 writeln('insérer ',XO,' (MAJ)');
 read(T[0,0]);
 until (T[0,0]=O);
 XO:=X
end;
cpt := cpt+1;
test:=c ;
ClrScr;
end;
2 :
begin
if (XO=X) then 
 begin
   repeat
   writeln(' insérer ',XO,' (Maj) '); 
   read(T[0,1]);
   until (T[0,1]=X);
 XO:=O    
 end
else    
  begin
 repeat   
 writeln('insérer ',XO,' (MAJ)');
 read(T[0,1]);
 until (T[0,1]=O);
XO:=X
end;
cpt := cpt+1;
test:=c ;
ClrScr;
end;
3 :
begin
if (XO=X) then 
 begin
   repeat
   writeln(' insérer ',XO,' (Maj) '); 
   read(T[0,2]);
   until (T[0,2]=X);
 XO:=O    
 end
else    
  begin
 repeat   
 writeln('insérer ',XO,' (MAJ)');
 read(T[0,2]);
 until (T[0,2]=O);
XO:=X
end;
cpt := cpt+1;
test:=c ;
ClrScr;
end;
4 :
begin
if (XO=X) then 
 begin
   repeat
   writeln(' insérer ',XO,' (Maj) '); 
   read(T[1,0]);
   until (T[1,0]=X);
 XO:=O    
 end
else    
  begin
 repeat   
 writeln('insérer ',XO,' (MAJ)');
 read(T[1,0]);
 until (T[1,0]=O);
XO:=X
end;
cpt := cpt+1;
test:=c ;
ClrScr;
end;
5 :
begin
if (XO=X) then 
 begin
   repeat
   writeln(' insérer ',XO,' (Maj) '); 
   read(T[1,1]);
   until (T[1,1]=X);
 XO:=O    
 end
else    
  begin
 repeat   
 writeln('insérer ',XO,' (MAJ)');
 read(T[1,1]);
 until (T[1,1]=O);
XO:=X
end;
cpt := cpt+1;
test:=c ;
ClrScr;
end;
6 :
begin
if (XO=X) then 
 begin
   repeat
   writeln(' insérer ',XO,' (Maj) '); 
   read(T[1,2]);
   until (T[1,2]=X);
 XO:=O    
 end
else    
  begin
 repeat   
 writeln('insérer ',XO,' (MAJ)');
 read(T[1,2]);
 until (T[1,2]=O);
XO:=X
end;
cpt := cpt+1;
test:=c ;
ClrScr;
end;
7 :
begin
if (XO=X) then 
 begin
   repeat
   writeln(' insérer ',XO,' (Maj) '); 
   read(T[2,0]);
   until (T[2,0]=X);
 XO:=O    
 end
else    
  begin
 repeat   
 writeln('insérer ',XO,' (MAJ)');
 read(T[2,0]);
 until (T[2,0]=O);
XO:=X
end;
cpt := cpt+1;
test:=c ;
ClrScr;
end;
8 :
begin
if (XO=X) then 
 begin
   repeat
   writeln(' insérer ',XO,' (Maj) '); 
   read(T[2,1]);
   until (T[2,1]=X);
 XO:=O    
 end
else    
  begin
 repeat   
 writeln('insérer ',XO,' (MAJ)');
 read(T[2,1]);
 until (T[2,1]=O);
XO:=X
end;
cpt := cpt+1;
test:=c ;
ClrScr;
end;
9 :
begin
if (XO=X) then 
 begin
   repeat
   writeln(' insérer ',XO,' (Maj) '); 
   read(T[2,2]);
   until (T[2,2]=X);
 XO:=O    
 end
else    
  begin
 repeat   
 writeln('insérer ',XO,' (MAJ)');
 read(T[2,2]);
 until (T[2,2]=O);
XO:=X
end;
cpt := cpt+1;
test:=c ;
ClrScr;
end;
end;
if c=test then writeln('cette case est remplie, choisir une autre ');
if (T[0,0]=T[0,1]) and ( T[0,1]=T[0,2])then
begin
ClrScr;
sound(500);
textcolor(red);
textbackground(white);
Highvideo;
writeln(T[0,0], ' gange! ') ;
cpt:=9;
end;
if (T[1,0]=T[1,1]) and (T[1,1]=T[1,2]) then
begin
ClrScr;
sound(500);
textcolor(red);
textbackground(white);
Highvideo;
writeln(T[1,0], ' gange! ') ;
cpt:=9;
end;
if (T[2,0]=T[2,1]) and (T[2,1]=T[2,2]) then
begin
ClrScr;
sound(500);
textcolor(red);
textbackground(white);
Highvideo;
writeln(T[2,0], ' gange! ') ;
cpt:=9;
end;
if (T[0,0]=T[1,0]) and (T[1,0]=T[2,0]) then
begin
ClrScr;
sound(500);
textcolor(red);
textbackground(white);
Highvideo;
writeln(T[2,0], ' gange! ');
cpt:=9;
end;
if (T[0,1]=T[1,1]) and (T[1,1]=T[2,1]) then
begin
ClrScr;
sound(500);
textcolor(red);
textbackground(white);
Highvideo;
writeln(T[2,1], ' gange! ');
cpt:=9;
end;
if (T[0,2]=T[1,2]) and (T[1,2]=T[2,2]) then
begin
ClrScr;
sound(500);
textcolor(red);
textbackground(white);
Highvideo;
writeln(T[2,2], ' gange! ');
cpt:=9;
end;
if (T[0,0]=T[1,1]) and (T[1,1]=T[2,2]) then
begin
ClrScr;
sound(500);
textcolor(red);
textbackground(white);
Highvideo;
writeln(T[0,0], ' gange! ');
cpt:=9;
end;
if (T[0,2]=T[1,1]) and (T[1,1]=T[2,0]) then
begin
ClrScr;
sound(500);
textcolor(red);
textbackground(white);
Highvideo;
writeln(T[1,1], ' gange! ');
cpt:=9;
end;
affichagedet;
 until cpt=9;
delay(1000);
nosound;
end.
