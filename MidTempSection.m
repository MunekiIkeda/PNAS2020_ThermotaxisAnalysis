function [state, newpath, phi] = MidTempSection(time, oldpath, phi)
% for Mid temperature section        

global FreqMid OmegaMid ReversalMid RevturnMid ShallowMid CurveMid TimeDispersionMid P Phi

r=rand; % r for turn event
rd=rand; %rd for direction after the turn
T = floor(time/600)+1;
path = oldpath;
direction = 1;
if path==7
    path=1;
    direction = -1;
elseif  path==8
    path=2;
    direction = -1;
elseif path==9
    path=3;
    direction = -1;
elseif path==10
    path=4;
    direction = -1;
elseif path==11
    path=5;
    direction = -1;
elseif path==12
    path=6;
    direction = -1;
end

newpath=oldpath;
if r < FreqMid(T,path) && time<3600-TimeDispersionMid(T,1) % omega turn 
    state=1;
    if rd < OmegaMid(13*(T-1)+oldpath,1)     
        newpath=1;                                
    elseif rd >= OmegaMid(13*(T-1)+oldpath,1) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:2))     
        newpath=2;                                 
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:2)) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:3))
        newpath=3;                                 
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:3)) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:4))
        newpath=4;                                
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:4)) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:5))
        newpath=5;                                                 
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:5)) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:6))
        newpath=6;                                 
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:6)) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:7))
        newpath=7;                                 
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:7)) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:8))     
        newpath=8;                                     
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:8)) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:9))
        newpath=9;                                 
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:9)) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:10))
        newpath=10;                                 
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:10)) && rd < sum(OmegaMid(13*(T-1)+oldpath,1:11))
        newpath=11;                                 
    elseif rd >= sum(OmegaMid(13*(T-1)+oldpath,1:11))
        newpath=12;         
    end
    phi = Newphi(newpath);
elseif r >= FreqMid(T,path) && r < FreqMid(T,path) + FreqMid(T,path+6) && time<3600-TimeDispersionMid(T,3) % Reversal
    state=3;
    if rd < ReversalMid(13*(T-1)+oldpath,1)
        newpath=1;                                
    elseif rd >= ReversalMid(13*(T-1)+oldpath,1) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:2))
        newpath=2;                                
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:2)) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:3))     
        newpath=3;                                
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:3)) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:4))   
        newpath=4;                                 
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:4)) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:5))   
        newpath=5;                                 
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:5)) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:6))
        newpath=6;                                 
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:6)) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:7))
        newpath=7;                                  
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:7)) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:8))
        newpath=8;                                      
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:8)) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:9))
        newpath=9;                                 
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:9)) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:10))
        newpath=10;                                
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:10)) && rd < sum(ReversalMid(13*(T-1)+oldpath,1:11))
        newpath=11;                       
    elseif rd >= sum(ReversalMid(13*(T-1)+oldpath,1:11))     
        newpath=12;         
    end
    phi = Newphi(newpath);
elseif r >= FreqMid(T,path) + FreqMid(T,path+6) && r < FreqMid(T,path) + FreqMid(T,path+6) + FreqMid(T,path+12) && time<3600-TimeDispersionMid(T,5) % Reversal turn   
    state=5;    
    if rd < RevturnMid(13*(T-1)+oldpath,1)
        newpath=1;                                
    elseif rd >= RevturnMid(13*(T-1)+oldpath,1) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:2))     
        newpath=2;                                
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:2)) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:3))     
        newpath=3;                               
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:3)) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:4))       
        newpath=4;                                
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:4)) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:5))     
        newpath=5;                                
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:5)) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:6))     
        newpath=6;                                
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:6)) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:7))     
        newpath=7;                                 
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:7)) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:8))     
        newpath=8;                                     
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:8)) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:9))     
        newpath=9;                                
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:9)) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:10))     
        newpath=10;                                
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:10)) && rd < sum(RevturnMid(13*(T-1)+oldpath,1:11))     
        newpath=11;                                
    elseif rd >= sum(RevturnMid(13*(T-1)+oldpath,1:11))     
        newpath=12;         
    end
    phi = Newphi(newpath);
elseif r >= FreqMid(T,path) + FreqMid(T,path+6) + FreqMid(T,path+12) && r < FreqMid(T,path) + FreqMid(T,path+6) + FreqMid(T,path+12) + FreqMid(T,path+18) && time<3600-TimeDispersionMid(T,7) % Shallow turn        
    state=7;     
    if rd < ShallowMid(13*(T-1)+oldpath,1)     
        newpath=1;                                 
    elseif rd >= ShallowMid(13*(T-1)+oldpath,1) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:2))
        newpath=2;                                 
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:2)) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:3))
        newpath=3;                        
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:3)) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:4))     
        newpath=4;                                 
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:4)) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:5))     
        newpath=5;                                
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:5)) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:6))     
        newpath=6;                                 
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:6)) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:7))     
        newpath=7;                                 
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:7)) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:8))      
        newpath=8;                                     
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:8)) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:9))     
        newpath=9;                                
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:9)) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:10))      
        newpath=10;                                 
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:10)) && rd < sum(ShallowMid(13*(T-1)+oldpath,1:11))     
        newpath=11;                                 
    elseif rd >= sum(ShallowMid(13*(T-1)+oldpath,1:11))
        newpath=12;         
    end
    phi = Newphi(newpath);
else % run
    Phi = Phi - direction*CurveMid(T,path)*pi/180;
    if Phi>=P || Phi<=-P
        phi = phi + Phi;
        Phi = 0;
    end
    if phi>2*pi   
        phi = phi-2*pi;
    elseif phi<0    
        phi = phi+2*pi;
    end
    state=0;
    newpath = oldpath;
end