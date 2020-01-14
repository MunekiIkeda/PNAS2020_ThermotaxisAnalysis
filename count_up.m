% Count up all behavior components

function [all_data, IT_data, freq_data] = count_up(Tcent, INTERVAL, all_data_array, omega_array, reversal_array, revturn_array, shallow_array)

interval = round(1/INTERVAL);
frame_start=find(all_data_array(:,20)==1);
frame_end=find(all_data_array(:,21)==1);
IT_end_point=find(all_data_array(:,5)==-9);
max_IT_duration=nanmax(all_data_array(:,16));
min_IT_duration=nanmin(all_data_array(:,16));

for k=1:length(frame_start(:,1))
    if nanmax(all_data_array(frame_start(k,1):frame_start(k,1)+20*interval,5))==9
        if nanmin(all_data_array(frame_start(k,1):frame_start(k,1)+20*interval,5))==0
            all_data_array(frame_start(k,1):frame_start(k,1)+20*interval,5)=0;
            B=find(IT_end_point(:,1)-frame_start(k,1)<=max_IT_duration & IT_end_point(:,1)-frame_start(k,1)>=min_IT_duration);
            all_data_array(IT_end_point(nanmin(B),1)+1,16)=NaN;
        end
    end
end

for k=1:length(frame_end(:,1))
    if nanmin(all_data_array(frame_end(k,1)-20*interval:frame_end(k,1),5))==-9
        if nanmax(all_data_array(frame_end(k,1)-20*interval:frame_end(k,1),5))==0
            all_data_array(frame_end(k,1)-20*interval:frame_end(k,1),5)=0;
            all_data_array(frame_end(k,1)-20*interval:frame_end(k,1),16)=NaN;
        end
    end
end

all_data_array_155_160 = all_data_array(all_data_array(:,2)>=Tcent-1.5 & all_data_array(:,2)<Tcent-1.0,:);
all_data_array_160_165 = all_data_array(all_data_array(:,2)>=Tcent-1.0 & all_data_array(:,2)<Tcent-0.5,:);
all_data_array_165_170 = all_data_array(all_data_array(:,2)>=Tcent-0.5 & all_data_array(:,2)<Tcent,:);
all_data_array_170_175 = all_data_array(all_data_array(:,2)>=Tcent & all_data_array(:,2)<Tcent+0.5,:);
all_data_array_175_180 = all_data_array(all_data_array(:,2)>=Tcent+0.5 & all_data_array(:,2)<Tcent+1.0,:);
all_data_array_180_185 = all_data_array(all_data_array(:,2)>=Tcent+1.0 & all_data_array(:,2)<Tcent+1.5,:);

n_T = [length(all_data_array_155_160(all_data_array_155_160(:,5)==0,5)) length(all_data_array_160_165(all_data_array_160_165(:,5)==0,5))...
    length(all_data_array_165_170(all_data_array_165_170(:,5)==0,5)) length(all_data_array_170_175(all_data_array_170_175(:,5)==0,5))...
    length(all_data_array_175_180(all_data_array_175_180(:,5)==0,5)) length(all_data_array_180_185(all_data_array_180_185(:,5)==0,5))];

all_data_array_1 = all_data_array(all_data_array(:,2)>=Tcent-12/4 & all_data_array(:,2)<Tcent-9/4,:);
all_data_array_2 = all_data_array(all_data_array(:,2)>=Tcent-9/4 & all_data_array(:,2)<Tcent-6/4,:);
all_data_array_3 = all_data_array(all_data_array(:,2)>=Tcent-6/4 & all_data_array(:,2)<Tcent-3/4,:);
all_data_array_4 = all_data_array(all_data_array(:,2)>=Tcent-3/4 & all_data_array(:,2)<Tcent,:);
all_data_array_5 = all_data_array(all_data_array(:,2)>=Tcent & all_data_array(:,2)<Tcent+3/4,:);
all_data_array_6 = all_data_array(all_data_array(:,2)>=Tcent+3/4 & all_data_array(:,2)<Tcent+6/4,:);
all_data_array_7 = all_data_array(all_data_array(:,2)>=Tcent+6/4 & all_data_array(:,2)<Tcent+9/4,:);
all_data_array_8 = all_data_array(all_data_array(:,2)>=Tcent+9/4 & all_data_array(:,2)<Tcent+12/4,:);

n_T_IT = [length(all_data_array_1(all_data_array_1(:,5)==0,5)) length(all_data_array_2(all_data_array_2(:,5)==0,5))...
    length(all_data_array_3(all_data_array_3(:,5)==0,5)) length(all_data_array_4(all_data_array_4(:,5)==0,5))...
    length(all_data_array_5(all_data_array_5(:,5)==0,5)) length(all_data_array_6(all_data_array_6(:,5)==0,5))...
    length(all_data_array_7(all_data_array_7(:,5)==0,5)) length(all_data_array_8(all_data_array_8(:,5)==0,5))];

all_data_array_0_30 = all_data_array(all_data_array(:,4)>=0 & all_data_array(:,4)<30,:);
all_data_array_30_60 = all_data_array(all_data_array(:,4)>=30 & all_data_array(:,4)<60,:);
all_data_array_60_90 = all_data_array(all_data_array(:,4)>=60 & all_data_array(:,4)<90,:);
all_data_array_90_120 = all_data_array(all_data_array(:,4)>=90 & all_data_array(:,4)<120,:);
all_data_array_120_150 = all_data_array(all_data_array(:,4)>=120 & all_data_array(:,4)<150,:);
all_data_array_150_180 = all_data_array(all_data_array(:,4)>=150 & all_data_array(:,4)<180,:);

n_direction = [length(all_data_array_0_30(all_data_array_0_30(:,5)==0,5)) length(all_data_array_30_60(all_data_array_30_60(:,5)==0,5))...
    length(all_data_array_60_90(all_data_array_60_90(:,5)==0,5)) length(all_data_array_90_120(all_data_array_90_120(:,5)==0,5))...
    length(all_data_array_120_150(all_data_array_120_150(:,5)==0,5)) length(all_data_array_150_180(all_data_array_150_180(:,5)==0,5))];

all_data_out_array_0_30 = all_data_array(all_data_array(:,12)>=0 & all_data_array(:,12)<30,:);
all_data_out_array_30_60 = all_data_array(all_data_array(:,12)>=30 & all_data_array(:,12)<60,:);
all_data_out_array_60_90 = all_data_array(all_data_array(:,12)>=60 & all_data_array(:,12)<90,:);
all_data_out_array_90_120 = all_data_array(all_data_array(:,12)>=90 & all_data_array(:,12)<120,:);
all_data_out_array_120_150 = all_data_array(all_data_array(:,12)>=120 & all_data_array(:,12)<150,:);
all_data_out_array_150_180 = all_data_array(all_data_array(:,12)>=150 & all_data_array(:,12)<180,:);


%% Count up omega turns
omega_array_0_30 = all_data_array_0_30(all_data_array_0_30 (:,5)==1,:);
omega_array_30_60 = all_data_array_30_60(all_data_array_30_60(:,5)==1,:); 
omega_array_60_90 = all_data_array_60_90(all_data_array_60_90(:,5)==1,:); 
omega_array_90_120 = all_data_array_90_120(all_data_array_90_120(:,5)==1,:);
omega_array_120_150 = all_data_array_120_150(all_data_array_120_150(:,5)==1,:); 
omega_array_150_180 = all_data_array_150_180(all_data_array_150_180(:,5)==1,:); 

n_omega_direction = [length(omega_array_0_30(:,4)) length(omega_array_30_60(:,4)) length(omega_array_60_90(:,4))...
    length(omega_array_90_120(:,4)) length(omega_array_120_150(:,4)) length(omega_array_150_180(:,4))];

omega_out_array_0_30 = all_data_out_array_0_30(all_data_out_array_0_30 (:,5)==-1,:);
omega_out_array_30_60 = all_data_out_array_30_60(all_data_out_array_30_60(:,5)==-1,:); 
omega_out_array_60_90 = all_data_out_array_60_90(all_data_out_array_60_90(:,5)==-1,:); 
omega_out_array_90_120 = all_data_out_array_90_120(all_data_out_array_90_120(:,5)==-1,:);
omega_out_array_120_150 = all_data_out_array_120_150(all_data_out_array_120_150(:,5)==-1,:); 
omega_out_array_150_180 = all_data_out_array_150_180(all_data_out_array_150_180(:,5)==-1,:); 

n_omega_out_total = (length(omega_out_array_0_30(:,4))+length(omega_out_array_30_60(:,4))+length(omega_out_array_60_90(:,4))+...
    length(omega_out_array_90_120(:,4))+length(omega_out_array_120_150(:,4))+length(omega_out_array_150_180(:,4)));
n_omega_out_direction = [length(omega_out_array_0_30(:,4)) length(omega_out_array_30_60(:,4)) length(omega_out_array_60_90(:,4))...
    length(omega_out_array_90_120(:,4)) length(omega_out_array_120_150(:,4)) length(omega_out_array_150_180(:,4))];


%% Count up reversals
reversal_array_0_30 = all_data_array_0_30(all_data_array_0_30 (:,5)==3,:);
reversal_array_30_60 = all_data_array_30_60(all_data_array_30_60(:,5)==3,:); 
reversal_array_60_90 = all_data_array_60_90(all_data_array_60_90(:,5)==3,:); 
reversal_array_90_120 = all_data_array_90_120(all_data_array_90_120(:,5)==3,:);
reversal_array_120_150 = all_data_array_120_150(all_data_array_120_150(:,5)==3,:); 
reversal_array_150_180 = all_data_array_150_180(all_data_array_150_180(:,5)==3,:); 

n_reversal_direction = [length(reversal_array_0_30(:,4)) length(reversal_array_30_60(:,4)) length(reversal_array_60_90(:,4))...
    length(reversal_array_90_120(:,4)) length(reversal_array_120_150(:,4)) length(reversal_array_150_180(:,4))];

reversal_out_array_0_30 = all_data_out_array_0_30(all_data_out_array_0_30 (:,5)==-3,:);
reversal_out_array_30_60 = all_data_out_array_30_60(all_data_out_array_30_60(:,5)==-3,:); 
reversal_out_array_60_90 = all_data_out_array_60_90(all_data_out_array_60_90(:,5)==-3,:); 
reversal_out_array_90_120 = all_data_out_array_90_120(all_data_out_array_90_120(:,5)==-3,:);
reversal_out_array_120_150 = all_data_out_array_120_150(all_data_out_array_120_150(:,5)==-3,:); 
reversal_out_array_150_180 = all_data_out_array_150_180(all_data_out_array_150_180(:,5)==-3,:); 

n_reversal_out_total = (length(reversal_out_array_0_30(:,4))+length(reversal_out_array_30_60(:,4))+length(reversal_out_array_60_90(:,4))+...
    length(reversal_out_array_90_120(:,4))+length(reversal_out_array_120_150(:,4))+length(reversal_out_array_150_180(:,4)));
n_reversal_out_direction = [length(reversal_out_array_0_30(:,4)) length(reversal_out_array_30_60(:,4)) length(reversal_out_array_60_90(:,4))...
    length(reversal_out_array_90_120(:,4)) length(reversal_out_array_120_150(:,4)) length(reversal_out_array_150_180(:,4))];


%% Count up reversal turns

revturn_array_0_30 = all_data_array_0_30(all_data_array_0_30 (:,5)==5,:);
revturn_array_30_60 = all_data_array_30_60(all_data_array_30_60(:,5)==5,:); 
revturn_array_60_90 = all_data_array_60_90(all_data_array_60_90(:,5)==5,:); 
revturn_array_90_120 = all_data_array_90_120(all_data_array_90_120(:,5)==5,:);
revturn_array_120_150 = all_data_array_120_150(all_data_array_120_150(:,5)==5,:); 
revturn_array_150_180 = all_data_array_150_180(all_data_array_150_180(:,5)==5,:); 

n_revturn_direction = [length(revturn_array_0_30(:,4)) length(revturn_array_30_60(:,4)) length(revturn_array_60_90(:,4))...
    length(revturn_array_90_120(:,4)) length(revturn_array_120_150(:,4)) length(revturn_array_150_180(:,4))];

revturn_out_array_0_30 = all_data_out_array_0_30(all_data_out_array_0_30 (:,5)==-5,:);
revturn_out_array_30_60 = all_data_out_array_30_60(all_data_out_array_30_60(:,5)==-5,:); 
revturn_out_array_60_90 = all_data_out_array_60_90(all_data_out_array_60_90(:,5)==-5,:); 
revturn_out_array_90_120 = all_data_out_array_90_120(all_data_out_array_90_120(:,5)==-5,:);
revturn_out_array_120_150 = all_data_out_array_120_150(all_data_out_array_120_150(:,5)==-5,:); 
revturn_out_array_150_180 = all_data_out_array_150_180(all_data_out_array_150_180(:,5)==-5,:); 

n_revturn_out_total = (length(revturn_out_array_0_30(:,4))+length(revturn_out_array_30_60(:,4))+length(revturn_out_array_60_90(:,4))+...
    length(revturn_out_array_90_120(:,4))+length(revturn_out_array_120_150(:,4))+length(revturn_out_array_150_180(:,4)));
n_revturn_out_direction = [length(revturn_out_array_0_30(:,4)) length(revturn_out_array_30_60(:,4)) length(revturn_out_array_60_90(:,4))...
    length(revturn_out_array_90_120(:,4)) length(revturn_out_array_120_150(:,4)) length(revturn_out_array_150_180(:,4))];


%% Count up shallow turns
shallow_array_0_30 = all_data_array_0_30(all_data_array_0_30 (:,5)==7,:);
shallow_array_30_60 = all_data_array_30_60(all_data_array_30_60(:,5)==7,:); 
shallow_array_60_90 = all_data_array_60_90(all_data_array_60_90(:,5)==7,:); 
shallow_array_90_120 = all_data_array_90_120(all_data_array_90_120(:,5)==7,:);
shallow_array_120_150 = all_data_array_120_150(all_data_array_120_150(:,5)==7,:); 
shallow_array_150_180 = all_data_array_150_180(all_data_array_150_180(:,5)==7,:); 

n_shallow_direction = [length(shallow_array_0_30(:,4)) length(shallow_array_30_60(:,4)) length(shallow_array_60_90(:,4))...
    length(shallow_array_90_120(:,4)) length(shallow_array_120_150(:,4)) length(shallow_array_150_180(:,4))];

shallow_out_array_0_30 = all_data_out_array_0_30(all_data_out_array_0_30 (:,5)==-7,:);
shallow_out_array_30_60 = all_data_out_array_30_60(all_data_out_array_30_60(:,5)==-7,:); 
shallow_out_array_60_90 = all_data_out_array_60_90(all_data_out_array_60_90(:,5)==-7,:); 
shallow_out_array_90_120 = all_data_out_array_90_120(all_data_out_array_90_120(:,5)==-7,:);
shallow_out_array_120_150 = all_data_out_array_120_150(all_data_out_array_120_150(:,5)==-7,:); 
shallow_out_array_150_180 = all_data_out_array_150_180(all_data_out_array_150_180(:,5)==-7,:); 

n_shallow_out_total = sum(length(shallow_out_array_0_30(:,4))+length(shallow_out_array_30_60(:,4))+length(shallow_out_array_60_90(:,4))+...
    length(shallow_out_array_90_120(:,4))+length(shallow_out_array_120_150(:,4))+length(shallow_out_array_150_180(:,4)));
n_shallow_out_direction = [length(shallow_out_array_0_30(:,4)) length(shallow_out_array_30_60(:,4)) length(shallow_out_array_60_90(:,4))...
    length(shallow_out_array_90_120(:,4)) length(shallow_out_array_120_150(:,4)) length(shallow_out_array_150_180(:,4))];


%% For isothermal tracking

N_IT = length(all_data_array(all_data_array(:,15)==1,5));
N_all = length(all_data_array(all_data_array(:,15)>=0,5));

%{
N_IT_155_160 = length(all_data_array_155_160(all_data_array_155_160(:,15)==1,5));
N_IT_160_165 = length(all_data_array_160_165(all_data_array_160_165(:,15)==1,5));
N_IT_165_170 = length(all_data_array_165_170(all_data_array_165_170(:,15)==1,5));
N_IT_170_175 = length(all_data_array_170_175(all_data_array_170_175(:,15)==1,5));
N_IT_175_180 = length(all_data_array_175_180(all_data_array_175_180(:,15)==1,5));
N_IT_180_185 = length(all_data_array_180_185(all_data_array_180_185(:,15)==1,5));

IT_duration_155_160 = nanmean(all_data_array_155_160(:,16));
IT_duration_160_165 = nanmean(all_data_array_160_165(:,16));
IT_duration_165_170 = nanmean(all_data_array_165_170(:,16));
IT_duration_170_175 = nanmean(all_data_array_170_175(:,16));
IT_duration_175_180 = nanmean(all_data_array_175_180(:,16));
IT_duration_180_185 = nanmean(all_data_array_180_185(:,16));

A_155_160=find(isnan(all_data_array_155_160(:,16))==0);
A_160_165=find(isnan(all_data_array_160_165(:,16))==0);
A_165_170=find(isnan(all_data_array_165_170(:,16))==0);
A_170_175=find(isnan(all_data_array_170_175(:,16))==0);
A_175_180=find(isnan(all_data_array_175_180(:,16))==0);
A_180_185=find(isnan(all_data_array_180_185(:,16))==0);

IT_duration_each_155_160 = all_data_array_155_160(A_155_160,16);
IT_duration_each_160_165 = all_data_array_160_165(A_160_165,16);
IT_duration_each_165_170 = all_data_array_165_170(A_165_170,16);
IT_duration_each_170_175 = all_data_array_170_175(A_170_175,16);
IT_duration_each_175_180 = all_data_array_175_180(A_175_180,16);
IT_duration_each_180_185 = all_data_array_180_185(A_180_185,16);

IT_Duration_total=sum(IT_duration_each_155_160)+sum(IT_duration_each_160_165)+sum(IT_duration_each_165_170)+sum(IT_duration_each_170_175)+sum(IT_duration_each_175_180)+sum(IT_duration_each_180_185);
IT_Duration_Tc=sum(IT_duration_each_165_170)+sum(IT_duration_each_170_175);
IT_tracks_total=length(IT_duration_each_155_160)+length(IT_duration_each_160_165)+length(IT_duration_each_165_170)+length(IT_duration_each_170_175)+length(IT_duration_each_175_180)+length(IT_duration_each_180_185);
IT_tracks_Tc=length(IT_duration_each_165_170)+length(IT_duration_each_170_175);
IT_Duration=IT_Duration_total/IT_tracks_total;
IT_Duration_Tc=IT_Duration_Tc/IT_tracks_Tc;

ITtracks_array_155_160 = all_data_array_155_160(all_data_array_155_160 (:,5)==9,:);
ITtracks_array_160_165 = all_data_array_160_165(all_data_array_160_165(:,5)==9,:); 
ITtracks_array_165_170 = all_data_array_165_170(all_data_array_165_170(:,5)==9,:); 
ITtracks_array_170_175 = all_data_array_170_175(all_data_array_170_175(:,5)==9,:);
ITtracks_array_175_180 = all_data_array_175_180(all_data_array_175_180(:,5)==9,:); 
ITtracks_array_180_185 = all_data_array_180_185(all_data_array_180_185(:,5)==9,:); 

n_ITtracks = [length(ITtracks_array_155_160(:,1)) length(ITtracks_array_160_165(:,1))...
    length(ITtracks_array_165_170(:,1)) length(ITtracks_array_170_175(:,1))...
    length(ITtracks_array_175_180(:,1)) length(ITtracks_array_180_185(:,1))];
%}

N_IT_1 = length(all_data_array_1(all_data_array_1(:,15)==1,5));
N_IT_2 = length(all_data_array_2(all_data_array_2(:,15)==1,5));
N_IT_3 = length(all_data_array_3(all_data_array_3(:,15)==1,5));
N_IT_4 = length(all_data_array_4(all_data_array_4(:,15)==1,5));
N_IT_5 = length(all_data_array_5(all_data_array_5(:,15)==1,5));
N_IT_6 = length(all_data_array_6(all_data_array_6(:,15)==1,5));
N_IT_7 = length(all_data_array_7(all_data_array_7(:,15)==1,5));
N_IT_8 = length(all_data_array_8(all_data_array_8(:,15)==1,5));

IT_duration_1 = nanmean(all_data_array_1(:,16));
IT_duration_2 = nanmean(all_data_array_2(:,16));
IT_duration_3 = nanmean(all_data_array_3(:,16));
IT_duration_4 = nanmean(all_data_array_4(:,16));
IT_duration_5 = nanmean(all_data_array_5(:,16));
IT_duration_6 = nanmean(all_data_array_6(:,16));
IT_duration_7 = nanmean(all_data_array_7(:,16));
IT_duration_8 = nanmean(all_data_array_8(:,16));

IT_duration_each_1 = all_data_array_1(isnan(all_data_array_1(:,16))==0,16);
IT_duration_each_2 = all_data_array_2(isnan(all_data_array_2(:,16))==0,16);
IT_duration_each_3 = all_data_array_3(isnan(all_data_array_3(:,16))==0,16);
IT_duration_each_4 = all_data_array_4(isnan(all_data_array_4(:,16))==0,16);
IT_duration_each_5 = all_data_array_5(isnan(all_data_array_5(:,16))==0,16);
IT_duration_each_6 = all_data_array_6(isnan(all_data_array_6(:,16))==0,16);
IT_duration_each_7 = all_data_array_7(isnan(all_data_array_7(:,16))==0,16);
IT_duration_each_8 = all_data_array_8(isnan(all_data_array_8(:,16))==0,16);

IT_Duration_total=sum(IT_duration_each_1)+sum(IT_duration_each_2)+sum(IT_duration_each_3)+sum(IT_duration_each_4)...
    +sum(IT_duration_each_5)+sum(IT_duration_each_6)+sum(IT_duration_each_7)+sum(IT_duration_each_8);
IT_tracks_total=length(IT_duration_each_1)+length(IT_duration_each_2)+length(IT_duration_each_3)+length(IT_duration_each_4)...
    +length(IT_duration_each_5)+length(IT_duration_each_6)+length(IT_duration_each_7)+length(IT_duration_each_8);
IT_Duration=IT_Duration_total/IT_tracks_total;

ITtracks_array_1 = all_data_array_1(all_data_array_1 (:,5)==9,:);
ITtracks_array_2 = all_data_array_2(all_data_array_2(:,5)==9,:); 
ITtracks_array_3 = all_data_array_3(all_data_array_3(:,5)==9,:); 
ITtracks_array_4 = all_data_array_4(all_data_array_4(:,5)==9,:);
ITtracks_array_5 = all_data_array_5(all_data_array_5(:,5)==9,:); 
ITtracks_array_6 = all_data_array_6(all_data_array_6(:,5)==9,:); 
ITtracks_array_7 = all_data_array_7(all_data_array_7(:,5)==9,:); 
ITtracks_array_8 = all_data_array_8(all_data_array_8(:,5)==9,:); 

n_ITtracks = [length(ITtracks_array_1(:,1)) length(ITtracks_array_2(:,1)) length(ITtracks_array_3(:,1)) length(ITtracks_array_4(:,1))...
    length(ITtracks_array_5(:,1)) length(ITtracks_array_6(:,1)) length(ITtracks_array_7(:,1)) length(ITtracks_array_8(:,1))];

% For tracking is not isothermal
%{
except_IT_array = all_data_array(all_data_array(:,15)==0,:);

except_ITarray_155_160 = except_IT_array(except_IT_array(:,2)>=Tcent-1.5 & except_IT_array(:,2)<Tcent-1.0,:);
except_ITarray_160_165 = except_IT_array(except_IT_array(:,2)>=Tcent-1.0 & except_IT_array(:,2)<Tcent-0.5,:);
except_ITarray_165_170 = except_IT_array(except_IT_array(:,2)>=Tcent-0.5 & except_IT_array(:,2)<Tcent,:);
except_ITarray_170_175 = except_IT_array(except_IT_array(:,2)>=Tcent & except_IT_array(:,2)<Tcent+0.5,:);
except_ITarray_175_180 = except_IT_array(except_IT_array(:,2)>=Tcent+0.5 & except_IT_array(:,2)<Tcent+1.0,:);
except_ITarray_180_185 = except_IT_array(except_IT_array(:,2)>=Tcent+1.0 & except_IT_array(:,2)<Tcent+1.5,:);

n_except_IT_run_only = [length(except_ITarray_155_160(except_ITarray_155_160(:,5)==0,5)) length(except_ITarray_160_165(except_ITarray_160_165(:,5)==0,5))...
    length(except_ITarray_165_170(except_ITarray_165_170(:,5)==0,5)) length(except_ITarray_170_175(except_ITarray_170_175(:,5)==0,5))...
    length(except_ITarray_175_180(except_ITarray_175_180(:,5)==0,5)) length(except_ITarray_180_185(except_ITarray_180_185(:,5)==0,5))];
%}

except_IT_array = all_data_array(all_data_array(:,15)==0,:);

except_ITarray_1 = except_IT_array(except_IT_array(:,2)>=Tcent-12/4 & except_IT_array(:,2)<Tcent-9/4,:);
except_ITarray_2 = except_IT_array(except_IT_array(:,2)>=Tcent-9/4 & except_IT_array(:,2)<Tcent-6/4,:);
except_ITarray_3 = except_IT_array(except_IT_array(:,2)>=Tcent-6/4 & except_IT_array(:,2)<Tcent-3/4,:);
except_ITarray_4 = except_IT_array(except_IT_array(:,2)>=Tcent-3/4 & except_IT_array(:,2)<Tcent,:);
except_ITarray_5 = except_IT_array(except_IT_array(:,2)>=Tcent & except_IT_array(:,2)<Tcent+3/4,:);
except_ITarray_6 = except_IT_array(except_IT_array(:,2)>=Tcent+3/4 & except_IT_array(:,2)<Tcent+6/4,:);
except_ITarray_7 = except_IT_array(except_IT_array(:,2)>=Tcent+6/4 & except_IT_array(:,2)<Tcent+9/4,:);
except_ITarray_8 = except_IT_array(except_IT_array(:,2)>=Tcent+9/4 & except_IT_array(:,2)<Tcent+12/4,:);

n_except_IT_run_only = [length(except_ITarray_1(except_ITarray_1(:,5)==0,5)) length(except_ITarray_2(except_ITarray_2(:,5)==0,5))...
    length(except_ITarray_3(except_ITarray_3(:,5)==0,5)) length(except_ITarray_4(except_ITarray_4(:,5)==0,5))...
    length(except_ITarray_5(except_ITarray_5(:,5)==0,5)) length(except_ITarray_6(except_ITarray_6(:,5)==0,5))...
    length(except_ITarray_7(except_ITarray_7(:,5)==0,5)) length(except_ITarray_8(except_ITarray_8(:,5)==0,5))];

%% Average curves

curve_array = all_data_array(all_data_array(:,8)==0 & all_data_array(:,10)==1,:);

curve_array_0_30 = curve_array(curve_array(:,4)>=0 & curve_array(:,4)<30,:);
curve_array_30_60 = curve_array(curve_array(:,4)>=30 & curve_array(:,4)<60,:);
curve_array_60_90 = curve_array(curve_array(:,4)>=60 & curve_array(:,4)<90,:);
curve_array_90_120 = curve_array(curve_array(:,4)>=90 & curve_array(:,4)<120,:);
curve_array_120_150 = curve_array(curve_array(:,4)>=120 & curve_array(:,4)<150,:);
curve_array_150_180 = curve_array(curve_array(:,4)>=150 & curve_array(:,4)<180,:);

curve_ave = nanmean(curve_array(:,6));
curve_direction_ave = [mean(curve_array_150_180(:,6)) mean(curve_array_120_150(:,6)) mean(curve_array_90_120(:,6))...
    mean(curve_array_60_90(:,6)) mean(curve_array_30_60(:,6)) mean(curve_array_0_30(:,6))];


%% Average speed

speed_array = all_data_array(all_data_array(:,9)==0 & all_data_array(:,11)==1 & all_data_array(:,7)>0,:);

speed_array_0_30 = speed_array(speed_array(:,4)>=0 & speed_array(:,4)<30,:);
speed_array_30_60 = speed_array(speed_array(:,4)>=30 & speed_array(:,4)<60,:);
speed_array_60_90 = speed_array(speed_array(:,4)>=60 & speed_array(:,4)<90,:);
speed_array_90_120 = speed_array(speed_array(:,4)>=90 & speed_array(:,4)<120,:);
speed_array_120_150 = speed_array(speed_array(:,4)>=120 & speed_array(:,4)<150,:);
speed_array_150_180 = speed_array(speed_array(:,4)>=150 & speed_array(:,4)<180,:);
speed_array_0_90 = speed_array(speed_array(:,4)>=0 & speed_array(:,4)<90,:);
speed_array_90_180 = speed_array(speed_array(:,4)>=90 & speed_array(:,4)<180,:);

speed_ave = nanmean(speed_array(:,7));
speed_direction_ave = [mean(speed_array_150_180(:,7)) mean(speed_array_120_150(:,7)) mean(speed_array_90_120(:,7))...
    mean(speed_array_60_90(:,7)) mean(speed_array_30_60(:,7)) mean(speed_array_0_30(:,7))];


%% Average bending

Bend_direction_ave = [nanmean(curve_array_150_180(:,17)) nanmean(curve_array_120_150(:,17)) nanmean(curve_array_90_120(:,17))...
    nanmean(curve_array_60_90(:,17)) nanmean(curve_array_30_60(:,17)) nanmean(curve_array_0_30(:,17));
    nanmean(curve_array_150_180(:,18)) nanmean(curve_array_120_150(:,18)) nanmean(curve_array_90_120(:,18))...
    nanmean(curve_array_60_90(:,18)) nanmean(curve_array_30_60(:,18)) nanmean(curve_array_0_30(:,18))];


%% Calculate time and displacements

  omega_time_ave = nanmean(omega_array(:,6)-omega_array(:,1));
  omega_displace_ave = nanmean(((omega_array(:,7)-omega_array(:,2)).^2+(omega_array(:,8)-omega_array(:,3)).^2).^(1/2));

  reversal_time_ave = nanmean(reversal_array(:,6)-reversal_array(:,1));
  reversal_displace_ave = nanmean(((reversal_array(:,7)-reversal_array(:,2)).^2+(reversal_array(:,8)-reversal_array(:,3)).^2).^(1/2));

  revturn_time_ave = nanmean(revturn_array(:,6)-revturn_array(:,1));
  revturn_displace_ave = nanmean(((revturn_array(:,7)-revturn_array(:,2)).^2+(revturn_array(:,8)-revturn_array(:,3)).^2).^(1/2));

  shallow_time_ave = nanmean(shallow_array(:,6)-shallow_array(:,1));
  shallow_displace_ave = nanmean(((shallow_array(:,7)-shallow_array(:,2)).^2+(shallow_array(:,8)-shallow_array(:,3)).^2).^(1/2));
  
 
%% Data output
run_duration_direction = NaN(1,6);
omega_direction_freq = NaN(1,6);
reversal_direction_freq = NaN(1,6);
revturn_direction_freq = NaN(1,6);
shallow_direction_freq = NaN(1,6);
omega_out_direction_prob = NaN(1,6);
reversal_out_direction_prob = NaN(1,6);
revturn_out_direction_prob = NaN(1,6);
shallow_out_direction_prob = NaN(1,6);

for I=1:6 
  run_duration_direction(1,I) = (n_direction(1,I)*INTERVAL)/(n_omega_direction(1,7-I)+n_reversal_direction(1,7-I)+n_revturn_direction(1,7-I)+n_shallow_direction(1,7-I));
  omega_direction_freq(1,I) = n_omega_direction(1,7-I)/(n_direction(1,7-I)*INTERVAL/60);
  reversal_direction_freq(1,I) = n_reversal_direction(1,7-I)/(n_direction(1,7-I)*INTERVAL/60);
  revturn_direction_freq(1,I) = n_revturn_direction(1,7-I)/(n_direction(1,7-I)*INTERVAL/60);
  shallow_direction_freq(1,I) = n_shallow_direction(1,7-I)/(n_direction(1,7-I)*INTERVAL/60);
  omega_out_direction_prob(1,I) = n_omega_out_direction(1,7-I)/(n_omega_out_total);
  reversal_out_direction_prob(1,I) = n_reversal_out_direction(1,7-I)/(n_reversal_out_total);
  revturn_out_direction_prob(1,I) = n_revturn_out_direction(1,7-I)/(n_revturn_out_total);
  shallow_out_direction_prob(1,I) = n_shallow_out_direction(1,7-I)/(n_shallow_out_total);
end
omega_freq = nansum(n_omega_direction)/(nansum(n_direction)*INTERVAL/60);
reversal_freq = nansum(n_reversal_direction)/(nansum(n_direction)*INTERVAL/60);
revturn_freq = nansum(n_revturn_direction)/(nansum(n_direction)*INTERVAL/60);
shallow_freq = nansum(n_shallow_direction)/(nansum(n_direction)*INTERVAL/60);
omega_freq_low = nansum(n_omega_direction(1,4:6))/(nansum(n_direction(1,4:6))*INTERVAL/60);
reversal_freq_low = nansum(n_reversal_direction(1,4:6))/(nansum(n_direction(1,4:6))*INTERVAL/60);
revturn_freq_low = nansum(n_revturn_direction(1,4:6))/(nansum(n_direction(1,4:6))*INTERVAL/60);
shallow_freq_low = nansum(n_shallow_direction(1,4:6))/(nansum(n_direction(1,4:6))*INTERVAL/60);
omega_freq_high = nansum(n_omega_direction(1,1:3))/(nansum(n_direction(1,1:3))*INTERVAL/60);
reversal_freq_high = nansum(n_reversal_direction(1,1:3))/(nansum(n_direction(1,1:3))*INTERVAL/60);
revturn_freq_high = nansum(n_revturn_direction(1,1:3))/(nansum(n_direction(1,1:3))*INTERVAL/60);
shallow_freq_high = nansum(n_shallow_direction(1,1:3))/(nansum(n_direction(1,1:3))*INTERVAL/60);
speed_ave_low = nanmean(speed_array_90_180(:,7));
speed_ave_high = nanmean(speed_array_0_90(:,7));

omega_out_direction_prob_low = nansum(n_omega_out_direction(1,4:6))/(n_omega_out_total);
reversal_out_direction_prob_low = nansum(n_reversal_out_direction(1,4:6))/(n_reversal_out_total);
revturn_out_direction_prob_low = nansum(n_revturn_out_direction(1,4:6))/(n_revturn_out_total);
shallow_out_direction_prob_low = nansum(n_shallow_out_direction(1,4:6))/(n_shallow_out_total);
omega_out_direction_prob_high = nansum(n_omega_out_direction(1,1:3))/(n_omega_out_total);
reversal_out_direction_prob_high = nansum(n_reversal_out_direction(1,1:3))/(n_reversal_out_total);
revturn_out_direction_prob_high = nansum(n_revturn_out_direction(1,1:3))/(n_revturn_out_total);
shallow_out_direction_prob_high = nansum(n_shallow_out_direction(1,1:3))/(n_shallow_out_total);

%{
Fraction_IT_T = [N_IT_155_160/n_T(1,1) N_IT_160_165/n_T(1,2) N_IT_165_170/n_T(1,3) N_IT_170_175/n_T(1,4) N_IT_175_180/n_T(1,5) N_IT_180_185/n_T(1,6)];
IT_freq2_T = [n_ITtracks(1,1)/(n_except_IT_run_only(1,1)*INTERVAL/60) n_ITtracks(1,2)/(n_except_IT_run_only(1,2)*INTERVAL/60) n_ITtracks(1,3)/(n_except_IT_run_only(1,3)*INTERVAL/60) ...
    n_ITtracks(1,4)/(n_except_IT_run_only(1,4)*INTERVAL/60) n_ITtracks(1,5)/(n_except_IT_run_only(1,5)*INTERVAL/60) n_ITtracks(1,6)/(n_except_IT_run_only(1,6)*INTERVAL/60)];
IT_freq3 =  nansum(n_ITtracks)/(nansum(n_except_IT_run_only)*INTERVAL/60);
Duration_IT_T = [IT_duration_155_160*INTERVAL IT_duration_160_165*INTERVAL IT_duration_165_170*INTERVAL IT_duration_170_175*INTERVAL IT_duration_175_180*INTERVAL IT_duration_180_185*INTERVAL];

all_data= [omega_direction_freq  zeros(1,1) omega_out_direction_prob  zeros(1,1) omega_time_ave omega_displace_ave...
    ; reversal_direction_freq zeros(1,1) reversal_out_direction_prob zeros(1,1) reversal_time_ave reversal_displace_ave...
    ; revturn_direction_freq zeros(1,1) revturn_out_direction_prob zeros(1,1) revturn_time_ave revturn_displace_ave...
    ; shallow_direction_freq zeros(1,1) shallow_out_direction_prob zeros(1,1) shallow_time_ave shallow_displace_ave...
    ; curve_direction_ave zeros(1,3) omega_freq_low omega_freq_high omega_out_direction_prob_low omega_out_direction_prob_high zeros(1,1) omega_freq zeros(1,1)...
    ; speed_direction_ave zeros(1,3) reversal_freq_low reversal_freq_high reversal_out_direction_prob_low reversal_out_direction_prob_high zeros(1,1) reversal_freq zeros(1,1)...
    ; Fraction_IT_T zeros(1,1)  N_IT/N_all (N_IT_165_170+N_IT_170_175)/(n_T(1,3)+n_T(1,4)) revturn_freq_low revturn_freq_high revturn_out_direction_prob_low revturn_out_direction_prob_high zeros(1,1) revturn_freq zeros(1,1)...
    ; IT_freq2_T zeros(1,1) IT_freq3 (n_ITtracks(1,3)+n_ITtracks(1,4))/((n_except_IT_run_only(1,3)+n_except_IT_run_only(1,4))*INTERVAL/60) shallow_freq_low shallow_freq_high shallow_out_direction_prob_low shallow_out_direction_prob_high zeros(1,1) shallow_freq zeros(1,1)...
    ; Duration_IT_T zeros(1,1) IT_Duration*INTERVAL IT_Duration_Tc*INTERVAL speed_ave_low speed_ave_high zeros(1,1) curve_ave zeros(1,1) speed_ave zeros(1,1)];

IT_data= [Fraction_IT_T zeros(1,1)  N_IT/N_all (N_IT_165_170+N_IT_170_175)/(n_T(1,3)+n_T(1,4)) ...
    ; IT_freq2_T zeros(1,1) IT_freq3 (n_ITtracks(1,3)+n_ITtracks(1,4))/((n_except_IT_run_only(1,3)+n_except_IT_run_only(1,4))*INTERVAL/60)...
    ; Duration_IT_T zeros(1,1) IT_Duration*INTERVAL IT_Duration_Tc*INTERVAL];
%}

Fraction_IT_T = [N_IT_1/n_T_IT(1,1) N_IT_2/n_T_IT(1,2) N_IT_3/n_T_IT(1,3) N_IT_4/n_T_IT(1,4) N_IT_5/n_T_IT(1,5) N_IT_6/n_T_IT(1,6)  N_IT_7/n_T_IT(1,7) N_IT_8/n_T_IT(1,8)];
IT_freq2_T = [n_ITtracks(1,1)/(n_except_IT_run_only(1,1)*INTERVAL/60) n_ITtracks(1,2)/(n_except_IT_run_only(1,2)*INTERVAL/60) n_ITtracks(1,3)/(n_except_IT_run_only(1,3)*INTERVAL/60) n_ITtracks(1,4)/(n_except_IT_run_only(1,4)*INTERVAL/60) ...
    n_ITtracks(1,5)/(n_except_IT_run_only(1,5)*INTERVAL/60) n_ITtracks(1,6)/(n_except_IT_run_only(1,6)*INTERVAL/60) n_ITtracks(1,7)/(n_except_IT_run_only(1,7)*INTERVAL/60) n_ITtracks(1,8)/(n_except_IT_run_only(1,8)*INTERVAL/60)];
IT_freq3 =  nansum(n_ITtracks)/(nansum(n_except_IT_run_only)*INTERVAL/60);
Duration_IT_T = [IT_duration_1*INTERVAL IT_duration_2*INTERVAL IT_duration_3*INTERVAL IT_duration_4*INTERVAL IT_duration_5*INTERVAL IT_duration_6*INTERVAL IT_duration_7*INTERVAL IT_duration_8*INTERVAL];

all_data= [omega_direction_freq  zeros(1,1) omega_out_direction_prob  zeros(1,1) omega_time_ave omega_displace_ave...
    ; reversal_direction_freq zeros(1,1) reversal_out_direction_prob zeros(1,1) reversal_time_ave reversal_displace_ave...
    ; revturn_direction_freq zeros(1,1) revturn_out_direction_prob zeros(1,1) revturn_time_ave revturn_displace_ave...
    ; shallow_direction_freq zeros(1,1) shallow_out_direction_prob zeros(1,1) shallow_time_ave shallow_displace_ave...
    ; curve_direction_ave zeros(1,3) omega_freq_low omega_freq_high omega_out_direction_prob_low omega_out_direction_prob_high zeros(1,1) omega_freq zeros(1,1)...
    ; speed_direction_ave zeros(1,3) reversal_freq_low reversal_freq_high reversal_out_direction_prob_low reversal_out_direction_prob_high zeros(1,1) reversal_freq zeros(1,1)...
    ; Fraction_IT_T zeros(1,1) revturn_freq_low revturn_freq_high revturn_out_direction_prob_low revturn_out_direction_prob_high zeros(1,1) revturn_freq zeros(1,1)...
    ; IT_freq2_T zeros(1,1) shallow_freq_low shallow_freq_high shallow_out_direction_prob_low shallow_out_direction_prob_high zeros(1,1) shallow_freq zeros(1,1)...
    ; Duration_IT_T zeros(1,1) speed_ave_low speed_ave_high zeros(1,1) curve_ave zeros(1,1) speed_ave zeros(1,1)];

IT_data= [Fraction_IT_T zeros(1,1) N_IT/N_all; IT_freq2_T zeros(1,1) IT_freq3; Duration_IT_T zeros(1,1) IT_Duration*INTERVAL];

freq_data= [omega_freq_low omega_freq_high zeros(1,1) reversal_freq_low reversal_freq_high zeros(1,1) revturn_freq_low revturn_freq_high zeros(1,1) speed_ave_low speed_ave_high];