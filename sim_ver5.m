% This program simulates TTX behavior based on the parameters identified by all_ver3 program. 
% Place three folders with their names containing '17CcentData', '20CcentData' and '23CcentData'.
% Each folder should contain data files that include "freq_prob_ave_sem.csv",
% "omega_prob_0_10", "omega_prob_10_20",..."omega_prob_50_60"
% "revturn_prob_0_10",....'revturn_prob_50_60", "shallow_prob_0_10",...."shallow_prob_50_60".


%% Loading data

FolderListLow = dir('*Low');
FolderListMid = dir('*Mid');
FolderListHigh = dir('*High');

NameLow = sprintf(FolderListLow(1).name);
NameMid = sprintf(FolderListMid(1).name);
NameHigh = sprintf(FolderListHigh(1).name);

global FreqLow OmegaLow ReversalLow RevturnLow ShallowLow CurveLow SpeedLow
global FreqMid OmegaMid ReversalMid RevturnMid ShallowMid CurveMid SpeedMid
global FreqHigh OmegaHigh ReversalHigh RevturnHigh ShallowHigh CurveHigh SpeedHigh
global TimeDispersionLow TimeDispersionMid TimeDispersionHigh P Phi


cd (sprintf('%s',NameLow))
FreqList = dir('*freq_ave*');
FreqLow = load(FreqList(1).name);
FreqLow = FreqLow./60; %adjust frequency per second

OmegaList = dir('*omega_prob_ave*');
OmegaLow = load(OmegaList(1).name);
ReversalList = dir('*reversal_prob_ave*');
ReversalLow = load(ReversalList(1).name);
RevturnList = dir('*revturn_prob_ave*');
RevturnLow = load(RevturnList(1).name);
ShallowList = dir('*shallow_prob_ave*');
ShallowLow = load(ShallowList(1).name);
CurveList = dir('*curve_ave*');
CurveLow = load(CurveList(1).name);
SpeedList = dir('*speed_ave*');
SpeedLow = load(SpeedList(1).name);
TimeDispersionList = dir('*time_dispersion*');
TimeDispersionLow = load(TimeDispersionList(1).name);
cd ../

cd (sprintf('%s',NameMid))
FreqList = dir('*freq_ave*');
FreqMid = load(FreqList(1).name);
FreqMid = FreqMid./60; %adjust frequency per second

OmegaList = dir('*omega_prob_ave*');
OmegaMid = load(OmegaList(1).name);
ReversalList = dir('*reversal_prob_ave*');
ReversalMid = load(ReversalList(1).name);
RevturnList = dir('*revturn_prob_ave*');
RevturnMid = load(RevturnList(1).name);
ShallowList = dir('*shallow_prob_ave*');
ShallowMid = load(ShallowList(1).name);
CurveList = dir('*curve_ave*');
CurveMid = load(CurveList(1).name);
SpeedList = dir('*speed_ave*');
SpeedMid = load(SpeedList(1).name);
TimeDispersionList = dir('*time_dispersion*');
TimeDispersionMid = load(TimeDispersionList(1).name);
cd ../

cd (sprintf('%s',NameHigh))
FreqList = dir('*freq_ave*');
FreqHigh = load(FreqList(1).name);
FreqHigh = FreqHigh./60; %adjust frequency per second

OmegaList = dir('*omega_prob_ave*');
OmegaHigh = load(OmegaList(1).name);
ReversalList = dir('*reversal_prob_ave*');
ReversalHigh = load(ReversalList(1).name);
RevturnList = dir('*revturn_prob_ave*');
RevturnHigh = load(RevturnList(1).name);
ShallowList = dir('*shallow_prob_ave*');
ShallowHigh = load(ShallowList(1).name);
CurveList = dir('*curve_ave*');
CurveHigh = load(CurveList(1).name);
SpeedList = dir('*speed_ave*');
SpeedHigh = load(SpeedList(1).name);
TimeDispersionList = dir('*time_dispersion*');
TimeDispersionHigh = load(TimeDispersionList(1).name);
cd ../


Tcent = 23;
Tgrad = 0.5;
numberofanimals = 100; % set the number of the simulated animals
P = pi/6;
iteration = 100;

% Preallocate xy coordinate array for 150 animals simulation.
% The first animal's x coordinate is in the first row, y coordinate is in the second row.
% The second animal's x corrdinate is in the third row, y coordinate in the fourth row and so on.

Temperature = NaN(iteration,60);
TTXIndex = NaN(iteration,60);
Dispersion = NaN(iteration,60);
for n = 1:iteration
xy_all = zeros(numberofanimals*2,3600);
Temperature_all = NaN(numberofanimals,60);
state_all = NaN(numberofanimals,3600);
all_data_array = NaN(numberofanimals*3600,5);


%% Simulation part
% 'path' represents the direction path of the previous frame,
% with 1 being 0_30 degree,
% 2 being 30_60 degree,,,,6 being 150_180 degree,
% 7 being 0_-30 degree, 8 being -30_-60 degree, 12 being -150_-180 degree.

% K for the loop of the animals
% W for the loop of 3600 seconds

% Imaginary plate size. 
% (0,0) being the center of the plate. 
Xboundary=68; % x coordinate can be -68 to 68 (136mm=13.6cm)
Yboundary=48; % y coordinate can be -48 to 48 (96mm=9.6cm)


% Give the initial coordinate as the start point of the simulation assay
% Animals are divided into three spots. 
% They are distributed randomly within 5 mm of the droplet.

firstthird = 1:round(numberofanimals./3);
secondthird = max(firstthird)+1:max(firstthird)*2;
lastthird = max(secondthird)+1:numberofanimals;

for K=firstthird
    r=5.*rand;
    rt=2.*rand.*pi;
    xy_all(2*(K)-1,1)=xy_all(2*(K)-1,1)+r*cos(rt);
    xy_all(2*(K),1)=xy_all(2*(K),1)+r*sin(rt);
    state_all(K,1)=0;
end

for K=secondthird % Dropping a spot above the center of the plate
    r=5.*rand;
    rt=2.*rand.*pi;
    xy_all(2*(K)-1,1)=xy_all(2*(K)-1,1)+r*cos(rt);
    xy_all(2*(K),1)=xy_all(2*(K),1)+r*sin(rt)+24;
    state_all(K,1)=0;
end

for K=lastthird % Dropping a spot below the center of the plate
    r=5.*rand;
    rt=2.*rand.*pi;
    xy_all(2*(K)-1,1)=xy_all(2*(K)-1,1)+r*cos(rt);
    xy_all(2*(K),1)=xy_all(2*(K),1)+r*sin(rt)-24;
    state_all(K,1)=0;
end


for K=1:numberofanimals
    
% toss the dice for the first second.
r=rand;
if r>0 && r<1/12
    path=1;
    phi = 2*pi*r;
    velocity = SpeedMid(1,1);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);
elseif r>=1/12 && r<2/12
    path=2;
    phi = 2*pi*r;
    velocity = SpeedMid(1,2);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);    
elseif r>=2/12 && r<3/12
    path=3;
    phi = 2*pi*r;
    velocity = SpeedMid(1,3);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);    
elseif r>=3/12 && r<4/12
    path=4;
    phi = 2*pi*r;
    velocity = SpeedMid(1,4);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);   
elseif r>=4/12 && r<5/12
    path=5;
    phi = 2*pi*r;
    velocity = SpeedMid(1,5);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);
elseif r>=5/12 && r<6/12
    path=6;
    phi = 2*pi*r;
    velocity = SpeedMid(1,6);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);    
elseif r>=6/12 && r<7/12
    path=12;
    phi = 2*pi*r;
    velocity = SpeedMid(1,6);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);
elseif r>=7/12 && r<8/12
    path=11;
    phi = 2*pi*r;
    velocity = SpeedMid(1,5);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);
elseif r>=8/12 && r<9/12
    path=10;
    phi = 2*pi*r;
    velocity = SpeedMid(1,4);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);   
elseif r>=9/12 && r<10/12
    path=9;
    phi = 2*pi*r;
    velocity = SpeedMid(1,3);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);
elseif r>=10/12 && r<11/12
    path=8;
    phi = 2*pi*r;
    velocity = SpeedMid(1,2);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);   
elseif r>=11/12 && r<12/12
    path=7;
    phi = 2*pi*r;
    velocity = SpeedMid(1,1);
    xy_all(2*(K)-1,2) = xy_all(2*(K)-1,1)+velocity*cos(phi);
    xy_all(2*(K),2) = xy_all(2*(K),1)+velocity*sin(phi);
end
oldpath=path;
state=0;
state_all(K,2)=0;
Phi=0;


time=2;
for W=3:3600
    T = floor(time/600)+1;
    while W>time                
        if xy_all(2.*(K)-1,W-1)<-34               
            [state, newpath, phi] = LowTempSection(time, oldpath, phi);
            if state==0
                [newpath, velocity] = NewpathLow(T, phi);
            end
            TimeDispersion = TimeDispersionLow;         
        elseif xy_all(2.*(K)-1,W-1)>=-34 && xy_all(2.*(K)-1,W-1)<34              
            [state, newpath, phi] = MidTempSection(time, oldpath, phi);
            if state==0
                [newpath, velocity] = NewpathMid(T, phi);
            end
            TimeDispersion = TimeDispersionMid;             
        elseif xy_all(2.*(K)-1,W-1)>=34                    
            [state, newpath, phi] = HighTempSection(time, oldpath, phi);
            if state==0
                [newpath, velocity] = NewpathHigh(T, phi);
            end
            TimeDispersion = TimeDispersionHigh;             
        end       
        
        if state==0 
            XX=velocity*cos(phi);
            YY=velocity*sin(phi);            
            xy_all(2.*(K)-1,W)=xy_all(2.*(K)-1,W-1)+XX;                
            xy_all(2.*(K),W)=xy_all(2.*(K),W-1)+YY;                                        
            time = time+1;      
            state_all(K,W) = 0;      
        elseif state==1         
            XX=mean(TimeDispersion(T,2))*cos(phi);
            YY=mean(TimeDispersion(T,2))*sin(phi);           
            xy_all(2.*(K)-1,W:W+round(TimeDispersion(T,1))-1) = xy_all(2.*(K)-1,W-1)+XX;         
            xy_all(2.*(K),W:W+round(TimeDispersion(T,1))-1) = xy_all(2.*(K),W-1)+YY;           
            time = time+round(TimeDispersion(T,1));           
            state_all(K,W) = 1;
            state_all(K,W+1:W+round(TimeDispersion(T,1))-2) = 2; 
            state_all(K,W+round(TimeDispersion(T,1))-1) = -1; 
            state=0;
            Phi=0;
        elseif state==3
            XX=mean(TimeDispersion(T,4))*cos(phi);
            YY=mean(TimeDispersion(T,4))*sin(phi);           
            xy_all(2.*(K)-1,W:W+round(TimeDispersion(T,3))-1) = xy_all(2.*(K)-1,W-1)+XX;             
            xy_all(2.*(K),W:W+round(TimeDispersion(T,3))-1) = xy_all(2.*(K),W-1)+YY;             
            time = time+round(TimeDispersion(T,3));            
            state_all(K,W) = 3;
            state_all(K,W+1:W+round(TimeDispersion(T,3))-2) = 4; 
            state_all(K,W+round(TimeDispersion(T,3))-1) = -3; 
            state=0;
            Phi=0;
        elseif state==5        
            XX=mean(TimeDispersion(T,6))*cos(phi);
            YY=mean(TimeDispersion(T,6))*sin(phi);
            xy_all(2.*(K)-1,W:W+round(TimeDispersion(T,5))-1) = xy_all(2.*(K)-1,W-1)+XX; 
            xy_all(2.*(K),W:W+round(TimeDispersion(T,5))-1) = xy_all(2.*(K),W-1)+YY;            
            time = time+round(TimeDispersion(T,5));            
            state_all(K,W) = 5;
            state_all(K,W+1:W+round(TimeDispersion(T,5))-2) = 6; 
            state_all(K,W+round(TimeDispersion(T,5))-1) = -5; 
            state=0;
            Phi=0;
        elseif state==7        
            XX=mean(TimeDispersion(T,8))*cos(phi);
            YY=mean(TimeDispersion(T,8))*sin(phi);        
            xy_all(2.*(K)-1,W:W+round(TimeDispersion(T,7))-1) = xy_all(2.*(K)-1,W-1)+XX;            
            xy_all(2.*(K),W:W+round(TimeDispersion(T,7))-1) = xy_all(2.*(K),W-1)+YY;            
            time = time+round(TimeDispersion(T,7));            
            state_all(K,W) = 7;
            state_all(K,W+1:W+round(TimeDispersion(T,7))-2) = 8;
            state_all(K,W+round(TimeDispersion(T,7))-1) = -7;
            state=0;
            Phi=0;
        end
        oldpath=newpath;
        % When animals go out the edge of the plate, reflect them.                                   
        if xy_all(2.*(K)-1,W)>Xboundary                 
            xy_all(2.*(K)-1,W)=Xboundary-(xy_all(2.*(K)-1,W)-Xboundary);                               
            newpath=Xreflection(oldpath);
            phi = pi-phi;
        elseif xy_all(2.*(K)-1,W)<-Xboundary                               
            xy_all(2.*(K)-1,W)=-Xboundary+(-Xboundary-xy_all(2.*(K)-1,W));                                               
            newpath=Xreflection(oldpath);
            phi = pi-phi;
        end        
        if xy_all(2*(K),W)>Yboundary        
            xy_all(2*(K),W)=Yboundary-(xy_all(2*(K),W)-Yboundary);                                             
            newpath=Yreflection(oldpath);
            phi = -phi;
        elseif xy_all(2*(K),W)<-Yboundary                             
            xy_all(2*(K),W)=-Yboundary+(-Yboundary-xy_all(2*(K),W));                                              
            newpath=Yreflection(oldpath);
            phi = -phi;
        end
        if phi>2*pi     
            phi = phi-2*pi;       
        elseif phi<0            
            phi = phi+2*pi;    
        end
        oldpath=newpath;
    end
end 

time_array = (1:3600);
data_array = [K*ones(3600,1) time_array' xy_all(2*K-1,:)' xy_all(2*K,:)' state_all(K,:)'];
all_data_array((3600*(K-1)+1):3600*K,:) = data_array;
end


%% Calculate index
xy_index_all = NaN(numberofanimals, 3600);
xy_dispersion_all = NaN(numberofanimals, 3600);
population_all = NaN(3600,8);
TTXindex_all = NaN(1,3600);
dispersion_all = NaN(1,3600);
population = NaN(60,8);
TTXindex = NaN(60, 1);
dispersion = NaN(60, 1);
for W=1:3600
    for KK=1:numberofanimals
        if xy_all(2*(KK)-1,W)>=-68 && xy_all(2*(KK)-1,W)<-51
            xy_index_all(KK, W) = 1;
        elseif xy_all(2*(KK)-1,W)>=-51 && xy_all(2*(KK)-1,W)<-34
            xy_index_all(KK, W) = 2;
        elseif xy_all(2*(KK)-1,W)>=-34 && xy_all(2*(KK)-1,W)<-17
            xy_index_all(KK, W) = 3;
        elseif xy_all(2*(KK)-1,W)>=-17 && xy_all(2*(KK)-1,W)<0
            xy_index_all(KK, W) = 4;
        elseif xy_all(2*(KK)-1,W)>=0 && xy_all(2*(KK)-1,W)<17
            xy_index_all(KK, W) = 5;
        elseif xy_all(2*(KK)-1,W)>=17 && xy_all(2*(KK)-1,W)<34
            xy_index_all(KK, W) = 6;
        elseif xy_all(2*(KK)-1,W)>=34 && xy_all(2*(KK)-1,W)<51
            xy_index_all(KK, W) = 7;
        elseif xy_all(2*(KK)-1,W)>=51 && xy_all(2*(KK)-1,W)<68
            xy_index_all(KK, W) = 8;
        end
    end
    N = sum(xy_index_all(:,W)==1)+sum(xy_index_all(:,W)==2)+sum(xy_index_all(:,W)==3)+sum(xy_index_all(:,W)==4)...
        +sum(xy_index_all(:,W)==5)+sum(xy_index_all(:,W)==6)+sum(xy_index_all(:,W)==7)+sum(xy_index_all(:,W)==8);
    population_all(W,1) = sum(xy_index_all(:,W)== 1)/N;
    population_all(W,2) = sum(xy_index_all(:,W)==2)/N;
    population_all(W,3) = sum(xy_index_all(:,W)==3)/N;
    population_all(W,4) = sum(xy_index_all(:,W)==4)/N;
    population_all(W,5) = sum(xy_index_all(:,W)==5)/N;
    population_all(W,6) = sum(xy_index_all(:,W)==6)/N;
    population_all(W,7) = sum(xy_index_all(:,W)==7)/N;
    population_all(W,8) = sum(xy_index_all(:,W)==8)/N;
end
for W=1:3600
    for KK=1:numberofanimals
        if xy_all(2*(KK)-1,W)>=-68 && xy_all(2*(KK)-1,W)<-51
            xy_dispersion_all(KK, W) = 4;
        elseif xy_all(2*(KK)-1,W)>=-51 && xy_all(2*(KK)-1,W)<-34
            xy_dispersion_all(KK, W) = 3;
        elseif xy_all(2*(KK)-1,W)>=-34 && xy_all(2*(KK)-1,W)<-17
            xy_dispersion_all(KK, W) = 2;
        elseif xy_all(2*(KK)-1,W)>=-17 && xy_all(2*(KK)-1,W)<0
            xy_dispersion_all(KK, W) = 1;
        elseif xy_all(2*(KK)-1,W)>=0 && xy_all(2*(KK)-1,W)<17
            xy_dispersion_all(KK, W) = 1;
        elseif xy_all(2*(KK)-1,W)>=17 && xy_all(2*(KK)-1,W)<34
            xy_dispersion_all(KK, W) = 2;
        elseif xy_all(2*(KK)-1,W)>=34 && xy_all(2*(KK)-1,W)<51
            xy_dispersion_all(KK, W) = 3;
        elseif xy_all(2*(KK)-1,W)>=51 && xy_all(2*(KK)-1,W)<68
            xy_dispersion_all(KK, W) = 4;
        end
    end
end
for W=1:3600
    TTXindex_all(1,W) = nanmean(xy_index_all(:,W));
    dispersion_all(1,W) = nanmean(xy_dispersion_all(:,W));
end
for I=1:60
    population(I,1) = nanmean(population_all(60*(I-1)+1:60*I,1));
    population(I,2) = nanmean(population_all(60*(I-1)+1:60*I,2));
    population(I,3) = nanmean(population_all(60*(I-1)+1:60*I,3));
    population(I,4) = nanmean(population_all(60*(I-1)+1:60*I,4));
    population(I,5) = nanmean(population_all(60*(I-1)+1:60*I,5));
    population(I,6) = nanmean(population_all(60*(I-1)+1:60*I,6));
    population(I,7) = nanmean(population_all(60*(I-1)+1:60*I,7));
    population(I,8) = nanmean(population_all(60*(I-1)+1:60*I,8));
    TTXindex(I,1) = nanmean(TTXindex_all(1,60*(I-1)+1:60*I));
    dispersion(I,1) = nanmean(dispersion_all(1,60*(I-1)+1:60*I));
end

TTXIndex(n,:) = TTXindex';
Dispersion(n,:) = dispersion';

disp(n);
end

for n = 1:iteration
    for t = 1:60
        Temperature_all(n,t) = Tcent + Tgrad*nanmean(xy_all(2*n-1,60*(t-1)+1:60*t))/10;
    end
end
Temperature_ave = [nanmean(Temperature_all)' nanstd(Temperature_all)'./sqrt(iteration)];
Dispersion_ave = [nanmean(Dispersion)' nanstd(Dispersion)'./sqrt(iteration)];
TTXIndex_ave = [nanmean(TTXIndex)' nanstd(TTXIndex)'./sqrt(iteration)];
TTXIndex = TTXIndex';

xy_all = xy_all';

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'TTXindex','.csv'];
csvwrite(dateAndtime, TTXIndex_ave);
%dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'xy_all','.csv'];
%csvwrite(dateAndtime, xy_all);

figure