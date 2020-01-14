function phi = Newphi(newpath)

r=rand;

if newpath==1
    a = 0;
    b = pi/6;
    phi = (b-a)*r + a;
elseif newpath==2
    a = pi/6;
    b = 2*pi/6;
    phi = (b-a)*r + a;    
elseif newpath==3
    a = 2*pi/6;
    b = 3*pi/6;
    phi = (b-a)*r + a;    
elseif newpath==4
    a = 3*pi/6;
    b = 4*pi/6;
    phi = (b-a)*r + a;
elseif newpath==5
    a = 4*pi/6;
    b = 5*pi/6;
    phi = (b-a)*r + a;
elseif newpath==6
    a = 5*pi/6;
    b = 6*pi/6;
    phi = (b-a)*r + a;
elseif newpath==12
    a = 6*pi/6;
    b = 7*pi/6;
    phi = (b-a)*r + a;
elseif newpath==11
    a = 7*pi/6;
    b = 8*pi/6;
    phi = (b-a)*r + a;
elseif newpath==10
    a = 8*pi/6;
    b = 9*pi/6;
    phi = (b-a)*r + a;
elseif newpath==9
    a = 9*pi/6;
    b = 10*pi/6;
    phi = (b-a)*r + a;
elseif newpath==8
    a = 10*pi/6;
    b = 11*pi/6;
    phi = (b-a)*r + a;
elseif newpath==7
    a = 11*pi/6;
    b = 12*pi/6;
    phi = (b-a)*r + a;
end