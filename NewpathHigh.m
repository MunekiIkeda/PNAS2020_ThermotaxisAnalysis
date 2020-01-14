function [newpath, velocity] =  NewpathHigh(T, phi)

global SpeedHigh

if phi>0 && phi<pi*1/6
    newpath=1;
    velocity = SpeedHigh(T,1);
elseif phi>=pi*1/6 && phi<pi*2/6
    newpath=2;
    velocity = SpeedHigh(T,2);  
elseif phi>=pi*2/6 && phi<pi*3/6
    newpath=3;
    velocity = SpeedHigh(T,3); 
elseif phi>=pi*3/6 && phi<pi*4/6
    newpath=4;
    velocity = SpeedHigh(T,4);   
elseif phi>=pi*4/6 && phi<pi*5/6
    newpath=5;
    velocity = SpeedHigh(T,5);
elseif phi>=pi*5/6 && phi<pi*6/6
    newpath=6;
    velocity = SpeedHigh(T,6);  
elseif phi>=pi*6/6 && phi<pi*7/6
    newpath=12;
    velocity = SpeedHigh(T,6);
elseif phi>=pi*7/6 && phi<pi*8/6
    newpath=11;
    velocity = SpeedHigh(T,5);
elseif phi>=pi*8/6 && phi<pi*9/6
    newpath=10;
    velocity = SpeedHigh(T,4);
elseif phi>=pi*9/6 && phi<pi*10/6
    newpath=9;
    velocity = SpeedHigh(T,3);
elseif phi>=pi*10/6 && phi<pi*11/6
    newpath=8;
    velocity = SpeedHigh(T,2); 
elseif phi>=pi*11/6
    newpath=7;
    velocity = SpeedHigh(T,1);
end