function [] = hr( k,Ti,Td )
close all;
% 0.01 w transmitancjach to wartosc stalej czasowej T regulatora
Lr = [k*(Ti*0.01+Td*Ti), k*(0.01+Ti), k];
Mr = [Ti*0.01, Ti, 0];
Lo = 10;
Mo = [1 2 2 1];
[Lotw, Motw] = series(Lr,Mr,Lo,Mo);
[Lz, Mz] = cloop(Lotw,Motw,-1);

if ( Mz(1)>0 && Mz(2)>0 && Mz(3)>0 && Mz(4)>0 && Mz(5)>0 && Mz(6)>0)
    b = 1;
else
    b = -1;
    msgbox('WK niespelniony!');
end

if (b == 1)
    h1 = [Mz(2)];
    
    h2 = [Mz(2) Mz(4); 
          Mz(1) Mz(3)];
      
    h3 = [Mz(2) Mz(4) Mz(6); 
          Mz(1) Mz(3) Mz(5);
          0     Mz(2) Mz(4)];
      
    h4 = [Mz(2) Mz(4) Mz(6) 0;
          Mz(1) Mz(3) Mz(5) 0;
          0     Mz(2) Mz(4) Mz(6);
          0     Mz(1) Mz(3) Mz(5)];
    
    h5 = [Mz(2) Mz(4) Mz(6) 0     0;
          Mz(1) Mz(3) Mz(5) 0     0;
          0     Mz(2) Mz(4) Mz(6) 0;
          0     Mz(1) Mz(3) Mz(5) 0;
          0     0     Mz(2) Mz(4) Mz(6)];
      
    if ((det(h1))>0 && (det(h2))>0 && (det(h3))>0 && det(h4)>0 && det(h5)>0)
        msgbox('Stabilny');
    else
        msgbox('WK spelniony ale niestabilny!');
    end

end
