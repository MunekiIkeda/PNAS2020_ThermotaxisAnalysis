function [newpath, velocity] =  NewpathMid(T, phi)

global SpeedMid

if phi>0 && phi<pi*1/6
    newpath=1;
    velocity = SpeedMid(T,1);
elseif phi>=pi*1/6 && phi<pi*2/6
    newpath=2;
    velocity = SpeedMid(T,2);  
elseif phi>=pi*2/6 && phi<pi*3/6
    newpath=3;
    velocity = SpeedMid(T,3); 
elseif phi>=pi*3/6 && phi<pi*4/6
    newpath=4;
    velocity = SpeedMid(T,4);   
elseif phi>=pi*4/6 && phi<pi*5/6
    newpath=5;
    velocity = SpeedMid(T,5);
elseif phi>=pi*5/6 && phi<pi*6/6
    newpath=6;
    velocity = SpeedMid(T,6);  
elseif phi>=pi*6/6 && phi<pi*7/6
    newpath=12;
    velocity = SpeedMid(T,6);
elseif phi>=pi*7/6 && phi<pi*8/6
    newpath=11;
    velocity = SpeedMid(T,5);
elseif phi>=pi*8/6 && phi<pi*9/6
    newpath=10;
    velocity = SpeedMid(T,4);
elseif phi>=pi*9/6 && phi<pi*10/6
    newpath=9;
    velocity = SpeedMid(T,3);
elseif phi>=pi*10/6 && phi<pi*11/6
    newpath=8;
    velocity = SpeedMid(T,2); 
elseif phi>=pi*11/6
    newpath=7;
    velocity = SpeedMid(T,1);
end