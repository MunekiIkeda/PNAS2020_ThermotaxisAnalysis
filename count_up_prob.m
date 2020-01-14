% Count up all behavior elements

function [prob_data] = count_up_prob(omega_array, reversal_array, revturn_array, shallow_array)
%% Count up omega turns
omega_out_0_30 = omega_array(omega_array(:,5)>=0 & omega_array(:,5)<30,:);
omega_out_30_60 = omega_array(omega_array(:,5)>=30 & omega_array(:,5)<60,:);
omega_out_60_90 = omega_array(omega_array(:,5)>=60 & omega_array(:,5)<90,:);
omega_out_90_120 = omega_array(omega_array(:,5)>=90 & omega_array(:,5)<120,:);
omega_out_120_150 = omega_array(omega_array(:,5)>=120 & omega_array(:,5)<150,:);
omega_out_150_180 = omega_array(omega_array(:,5)>=150 & omega_array(:,5)<180,:);
omega_out_30_0 = omega_array(omega_array(:,5)>=-30 & omega_array(:,5)<0,:);
omega_out_60_30 = omega_array(omega_array(:,5)>=-60 & omega_array(:,5)<-30,:);
omega_out_90_60 = omega_array(omega_array(:,5)>=-90 & omega_array(:,5)<-60,:);
omega_out_120_90 = omega_array(omega_array(:,5)>=-120 & omega_array(:,5)<-90,:);
omega_out_150_120 = omega_array(omega_array(:,5)>=-150 & omega_array(:,5)<-120,:);
omega_out_180_150 = omega_array(omega_array(:,5)>=-180 & omega_array(:,5)<-150,:);

n_omega_out_0_30 = length(omega_out_0_30(:,10));
omega_out_prob_0_30_0_30 = length(omega_out_0_30(omega_out_0_30(:,10)>=0 & omega_out_0_30(:,10)<30))/n_omega_out_0_30;
omega_out_prob_0_30_30_60 = length(omega_out_0_30(omega_out_0_30(:,10)>=30 & omega_out_0_30(:,10)<60))/n_omega_out_0_30;
omega_out_prob_0_30_60_90 = length(omega_out_0_30(omega_out_0_30(:,10)>=60 & omega_out_0_30(:,10)<90))/n_omega_out_0_30;
omega_out_prob_0_30_90_120 = length(omega_out_0_30(omega_out_0_30(:,10)>=90 & omega_out_0_30(:,10)<120))/n_omega_out_0_30;
omega_out_prob_0_30_120_150 = length(omega_out_0_30(omega_out_0_30(:,10)>=120 & omega_out_0_30(:,10)<150))/n_omega_out_0_30;
omega_out_prob_0_30_150_180 = length(omega_out_0_30(omega_out_0_30(:,10)>=150 & omega_out_0_30(:,10)<180))/n_omega_out_0_30;
omega_out_prob_0_30_30_0 = length(omega_out_0_30(omega_out_0_30(:,10)>=-30 & omega_out_0_30(:,10)<0))/n_omega_out_0_30;
omega_out_prob_0_30_60_30 = length(omega_out_0_30(omega_out_0_30(:,10)>=-60 & omega_out_0_30(:,10)<-30))/n_omega_out_0_30;
omega_out_prob_0_30_90_60 = length(omega_out_0_30(omega_out_0_30(:,10)>=-90 & omega_out_0_30(:,10)<-60))/n_omega_out_0_30;
omega_out_prob_0_30_120_90 = length(omega_out_0_30(omega_out_0_30(:,10)>=-120 & omega_out_0_30(:,10)<-90))/n_omega_out_0_30;
omega_out_prob_0_30_150_120 = length(omega_out_0_30(omega_out_0_30(:,10)>=-150 & omega_out_0_30(:,10)<-120))/n_omega_out_0_30;
omega_out_prob_0_30_180_150 = length(omega_out_0_30(omega_out_0_30(:,10)>=-180 & omega_out_0_30(:,10)<-150))/n_omega_out_0_30;
omega_out_prob_0_30 = [omega_out_prob_0_30_0_30 omega_out_prob_0_30_30_60 omega_out_prob_0_30_60_90 omega_out_prob_0_30_90_120...
    omega_out_prob_0_30_120_150 omega_out_prob_0_30_150_180 omega_out_prob_0_30_30_0 omega_out_prob_0_30_60_30...
    omega_out_prob_0_30_90_60 omega_out_prob_0_30_120_90 omega_out_prob_0_30_150_120 omega_out_prob_0_30_180_150];

n_omega_out_30_60 = length(omega_out_30_60(:,10));
omega_out_prob_30_60_0_30 = length(omega_out_30_60(omega_out_30_60(:,10)>=0 & omega_out_30_60(:,10)<30))/n_omega_out_30_60;
omega_out_prob_30_60_30_60 = length(omega_out_30_60(omega_out_30_60(:,10)>=30 & omega_out_30_60(:,10)<60))/n_omega_out_30_60;
omega_out_prob_30_60_60_90 = length(omega_out_30_60(omega_out_30_60(:,10)>=60 & omega_out_30_60(:,10)<90))/n_omega_out_30_60;
omega_out_prob_30_60_90_120 = length(omega_out_30_60(omega_out_30_60(:,10)>=90 & omega_out_30_60(:,10)<120))/n_omega_out_30_60;
omega_out_prob_30_60_120_150 = length(omega_out_30_60(omega_out_30_60(:,10)>=120 & omega_out_30_60(:,10)<150))/n_omega_out_30_60;
omega_out_prob_30_60_150_180 = length(omega_out_30_60(omega_out_30_60(:,10)>=150 & omega_out_30_60(:,10)<180))/n_omega_out_30_60;
omega_out_prob_30_60_30_0 = length(omega_out_30_60(omega_out_30_60(:,10)>=-30 & omega_out_30_60(:,10)<0))/n_omega_out_30_60;
omega_out_prob_30_60_60_30 = length(omega_out_30_60(omega_out_30_60(:,10)>=-60 & omega_out_30_60(:,10)<-30))/n_omega_out_30_60;
omega_out_prob_30_60_90_60 = length(omega_out_30_60(omega_out_30_60(:,10)>=-90 & omega_out_30_60(:,10)<-60))/n_omega_out_30_60;
omega_out_prob_30_60_120_90 = length(omega_out_30_60(omega_out_30_60(:,10)>=-120 & omega_out_30_60(:,10)<-90))/n_omega_out_30_60;
omega_out_prob_30_60_150_120 = length(omega_out_30_60(omega_out_30_60(:,10)>=-150 & omega_out_30_60(:,10)<-120))/n_omega_out_30_60;
omega_out_prob_30_60_180_150 = length(omega_out_30_60(omega_out_30_60(:,10)>=-180 & omega_out_30_60(:,10)<-150))/n_omega_out_30_60;
omega_out_prob_30_60 = [omega_out_prob_30_60_0_30 omega_out_prob_30_60_30_60 omega_out_prob_30_60_60_90 omega_out_prob_30_60_90_120...
    omega_out_prob_30_60_120_150 omega_out_prob_30_60_150_180 omega_out_prob_30_60_30_0 omega_out_prob_30_60_60_30...
    omega_out_prob_30_60_90_60 omega_out_prob_30_60_120_90 omega_out_prob_30_60_150_120 omega_out_prob_30_60_180_150];

n_omega_out_60_90 = length(omega_out_60_90(:,10));
omega_out_prob_60_90_0_30 = length(omega_out_60_90(omega_out_60_90(:,10)>=0 & omega_out_60_90(:,10)<30))/n_omega_out_60_90;
omega_out_prob_60_90_30_60 = length(omega_out_60_90(omega_out_60_90(:,10)>=30 & omega_out_60_90(:,10)<60))/n_omega_out_60_90;
omega_out_prob_60_90_60_90 = length(omega_out_60_90(omega_out_60_90(:,10)>=60 & omega_out_60_90(:,10)<90))/n_omega_out_60_90;
omega_out_prob_60_90_90_120 = length(omega_out_60_90(omega_out_60_90(:,10)>=90 & omega_out_60_90(:,10)<120))/n_omega_out_60_90;
omega_out_prob_60_90_120_150 = length(omega_out_60_90(omega_out_60_90(:,10)>=120 & omega_out_60_90(:,10)<150))/n_omega_out_60_90;
omega_out_prob_60_90_150_180 = length(omega_out_60_90(omega_out_60_90(:,10)>=150 & omega_out_60_90(:,10)<180))/n_omega_out_60_90;
omega_out_prob_60_90_30_0 = length(omega_out_60_90(omega_out_60_90(:,10)>=-30 & omega_out_60_90(:,10)<0))/n_omega_out_60_90;
omega_out_prob_60_90_60_30 = length(omega_out_60_90(omega_out_60_90(:,10)>=-60 & omega_out_60_90(:,10)<-30))/n_omega_out_60_90;
omega_out_prob_60_90_90_60 = length(omega_out_60_90(omega_out_60_90(:,10)>=-90 & omega_out_60_90(:,10)<-60))/n_omega_out_60_90;
omega_out_prob_60_90_120_90 = length(omega_out_60_90(omega_out_60_90(:,10)>=-120 & omega_out_60_90(:,10)<-90))/n_omega_out_60_90;
omega_out_prob_60_90_150_120 = length(omega_out_60_90(omega_out_60_90(:,10)>=-150 & omega_out_60_90(:,10)<-120))/n_omega_out_60_90;
omega_out_prob_60_90_180_150 = length(omega_out_60_90(omega_out_60_90(:,10)>=-180 & omega_out_60_90(:,10)<-150))/n_omega_out_60_90;
omega_out_prob_60_90 = [omega_out_prob_60_90_0_30 omega_out_prob_60_90_30_60 omega_out_prob_60_90_60_90 omega_out_prob_60_90_90_120...
    omega_out_prob_60_90_120_150 omega_out_prob_60_90_150_180 omega_out_prob_60_90_30_0 omega_out_prob_60_90_60_30...
    omega_out_prob_60_90_90_60 omega_out_prob_60_90_120_90 omega_out_prob_60_90_150_120 omega_out_prob_60_90_180_150];

n_omega_out_90_120 = length(omega_out_90_120(:,10));
omega_out_prob_90_120_0_30 = length(omega_out_90_120(omega_out_90_120(:,10)>=0 & omega_out_90_120(:,10)<30))/n_omega_out_90_120;
omega_out_prob_90_120_30_60 = length(omega_out_90_120(omega_out_90_120(:,10)>=30 & omega_out_90_120(:,10)<60))/n_omega_out_90_120;
omega_out_prob_90_120_60_90 = length(omega_out_90_120(omega_out_90_120(:,10)>=60 & omega_out_90_120(:,10)<90))/n_omega_out_90_120;
omega_out_prob_90_120_90_120 = length(omega_out_90_120(omega_out_90_120(:,10)>=90 & omega_out_90_120(:,10)<120))/n_omega_out_90_120;
omega_out_prob_90_120_120_150 = length(omega_out_90_120(omega_out_90_120(:,10)>=120 & omega_out_90_120(:,10)<150))/n_omega_out_90_120;
omega_out_prob_90_120_150_180 = length(omega_out_90_120(omega_out_90_120(:,10)>=150 & omega_out_90_120(:,10)<180))/n_omega_out_90_120;
omega_out_prob_90_120_30_0 = length(omega_out_90_120(omega_out_90_120(:,10)>=-30 & omega_out_90_120(:,10)<0))/n_omega_out_90_120;
omega_out_prob_90_120_60_30 = length(omega_out_90_120(omega_out_90_120(:,10)>=-60 & omega_out_90_120(:,10)<-30))/n_omega_out_90_120;
omega_out_prob_90_120_90_60 = length(omega_out_90_120(omega_out_90_120(:,10)>=-90 & omega_out_90_120(:,10)<-60))/n_omega_out_90_120;
omega_out_prob_90_120_120_90 = length(omega_out_90_120(omega_out_90_120(:,10)>=-120 & omega_out_90_120(:,10)<-90))/n_omega_out_90_120;
omega_out_prob_90_120_150_120 = length(omega_out_90_120(omega_out_90_120(:,10)>=-150 & omega_out_90_120(:,10)<-120))/n_omega_out_90_120;
omega_out_prob_90_120_180_150 = length(omega_out_90_120(omega_out_90_120(:,10)>=-180 & omega_out_90_120(:,10)<-150))/n_omega_out_90_120;
omega_out_prob_90_120 = [omega_out_prob_90_120_0_30 omega_out_prob_90_120_30_60 omega_out_prob_90_120_60_90 omega_out_prob_90_120_90_120...
    omega_out_prob_90_120_120_150 omega_out_prob_90_120_150_180 omega_out_prob_90_120_30_0 omega_out_prob_90_120_60_30...
    omega_out_prob_90_120_90_60 omega_out_prob_90_120_120_90 omega_out_prob_90_120_150_120 omega_out_prob_90_120_180_150];

n_omega_out_120_150 = length(omega_out_120_150(:,10));
omega_out_prob_120_150_0_30 = length(omega_out_120_150(omega_out_120_150(:,10)>=0 & omega_out_120_150(:,10)<30))/n_omega_out_120_150;
omega_out_prob_120_150_30_60 = length(omega_out_120_150(omega_out_120_150(:,10)>=30 & omega_out_120_150(:,10)<60))/n_omega_out_120_150;
omega_out_prob_120_150_60_90 = length(omega_out_120_150(omega_out_120_150(:,10)>=60 & omega_out_120_150(:,10)<90))/n_omega_out_120_150;
omega_out_prob_120_150_90_120 = length(omega_out_120_150(omega_out_120_150(:,10)>=90 & omega_out_120_150(:,10)<120))/n_omega_out_120_150;
omega_out_prob_120_150_120_150 = length(omega_out_120_150(omega_out_120_150(:,10)>=120 & omega_out_120_150(:,10)<150))/n_omega_out_120_150;
omega_out_prob_120_150_150_180 = length(omega_out_120_150(omega_out_120_150(:,10)>=150 & omega_out_120_150(:,10)<180))/n_omega_out_120_150;
omega_out_prob_120_150_30_0 = length(omega_out_120_150(omega_out_120_150(:,10)>=-30 & omega_out_120_150(:,10)<0))/n_omega_out_120_150;
omega_out_prob_120_150_60_30 = length(omega_out_120_150(omega_out_120_150(:,10)>=-60 & omega_out_120_150(:,10)<-30))/n_omega_out_120_150;
omega_out_prob_120_150_90_60 = length(omega_out_120_150(omega_out_120_150(:,10)>=-90 & omega_out_120_150(:,10)<-60))/n_omega_out_120_150;
omega_out_prob_120_150_120_90 = length(omega_out_120_150(omega_out_120_150(:,10)>=-120 & omega_out_120_150(:,10)<-90))/n_omega_out_120_150;
omega_out_prob_120_150_150_120 = length(omega_out_120_150(omega_out_120_150(:,10)>=-150 & omega_out_120_150(:,10)<-120))/n_omega_out_120_150;
omega_out_prob_120_150_180_150 = length(omega_out_120_150(omega_out_120_150(:,10)>=-180 & omega_out_120_150(:,10)<-150))/n_omega_out_120_150;
omega_out_prob_120_150 = [omega_out_prob_120_150_0_30 omega_out_prob_120_150_30_60 omega_out_prob_120_150_60_90 omega_out_prob_120_150_90_120...
    omega_out_prob_120_150_120_150 omega_out_prob_120_150_150_180 omega_out_prob_120_150_30_0 omega_out_prob_120_150_60_30...
    omega_out_prob_120_150_90_60 omega_out_prob_120_150_120_90 omega_out_prob_120_150_150_120 omega_out_prob_120_150_180_150];

n_omega_out_150_180 = length(omega_out_150_180(:,10));
omega_out_prob_150_180_0_30 = length(omega_out_150_180(omega_out_150_180(:,10)>=0 & omega_out_150_180(:,10)<30))/n_omega_out_150_180;
omega_out_prob_150_180_30_60 = length(omega_out_150_180(omega_out_150_180(:,10)>=30 & omega_out_150_180(:,10)<60))/n_omega_out_150_180;
omega_out_prob_150_180_60_90 = length(omega_out_150_180(omega_out_150_180(:,10)>=60 & omega_out_150_180(:,10)<90))/n_omega_out_150_180;
omega_out_prob_150_180_90_120 = length(omega_out_150_180(omega_out_150_180(:,10)>=90 & omega_out_150_180(:,10)<120))/n_omega_out_150_180;
omega_out_prob_150_180_120_150 = length(omega_out_150_180(omega_out_150_180(:,10)>=120 & omega_out_150_180(:,10)<150))/n_omega_out_150_180;
omega_out_prob_150_180_150_180 = length(omega_out_150_180(omega_out_150_180(:,10)>=150 & omega_out_150_180(:,10)<180))/n_omega_out_150_180;
omega_out_prob_150_180_30_0 = length(omega_out_150_180(omega_out_150_180(:,10)>=-30 & omega_out_150_180(:,10)<0))/n_omega_out_150_180;
omega_out_prob_150_180_60_30 = length(omega_out_150_180(omega_out_150_180(:,10)>=-60 & omega_out_150_180(:,10)<-30))/n_omega_out_150_180;
omega_out_prob_150_180_90_60 = length(omega_out_150_180(omega_out_150_180(:,10)>=-90 & omega_out_150_180(:,10)<-60))/n_omega_out_150_180;
omega_out_prob_150_180_120_90 = length(omega_out_150_180(omega_out_150_180(:,10)>=-120 & omega_out_150_180(:,10)<-90))/n_omega_out_150_180;
omega_out_prob_150_180_150_120 = length(omega_out_150_180(omega_out_150_180(:,10)>=-150 & omega_out_150_180(:,10)<-120))/n_omega_out_150_180;
omega_out_prob_150_180_180_150 = length(omega_out_150_180(omega_out_150_180(:,10)>=-180 & omega_out_150_180(:,10)<-150))/n_omega_out_150_180;
omega_out_prob_150_180 = [omega_out_prob_150_180_0_30 omega_out_prob_150_180_30_60 omega_out_prob_150_180_60_90 omega_out_prob_150_180_90_120...
    omega_out_prob_150_180_120_150 omega_out_prob_150_180_150_180 omega_out_prob_150_180_30_0 omega_out_prob_150_180_60_30...
    omega_out_prob_150_180_90_60 omega_out_prob_150_180_120_90 omega_out_prob_150_180_150_120 omega_out_prob_150_180_180_150];

n_omega_out_30_0 = length(omega_out_30_0(:,10));
omega_out_prob_30_0_0_30 = length(omega_out_30_0(omega_out_30_0(:,10)>=0 & omega_out_30_0(:,10)<30))/n_omega_out_30_0;
omega_out_prob_30_0_30_60 = length(omega_out_30_0(omega_out_30_0(:,10)>=30 & omega_out_30_0(:,10)<60))/n_omega_out_30_0;
omega_out_prob_30_0_60_90 = length(omega_out_30_0(omega_out_30_0(:,10)>=60 & omega_out_30_0(:,10)<90))/n_omega_out_30_0;
omega_out_prob_30_0_90_120 = length(omega_out_30_0(omega_out_30_0(:,10)>=90 & omega_out_30_0(:,10)<120))/n_omega_out_30_0;
omega_out_prob_30_0_120_150 = length(omega_out_30_0(omega_out_30_0(:,10)>=120 & omega_out_30_0(:,10)<150))/n_omega_out_30_0;
omega_out_prob_30_0_150_180 = length(omega_out_30_0(omega_out_30_0(:,10)>=150 & omega_out_30_0(:,10)<180))/n_omega_out_30_0;
omega_out_prob_30_0_30_0 = length(omega_out_30_0(omega_out_30_0(:,10)>=-30 & omega_out_30_0(:,10)<0))/n_omega_out_30_0;
omega_out_prob_30_0_60_30 = length(omega_out_30_0(omega_out_30_0(:,10)>=-60 & omega_out_30_0(:,10)<-30))/n_omega_out_30_0;
omega_out_prob_30_0_90_60 = length(omega_out_30_0(omega_out_30_0(:,10)>=-90 & omega_out_30_0(:,10)<-60))/n_omega_out_30_0;
omega_out_prob_30_0_120_90 = length(omega_out_30_0(omega_out_30_0(:,10)>=-120 & omega_out_30_0(:,10)<-90))/n_omega_out_30_0;
omega_out_prob_30_0_150_120 = length(omega_out_30_0(omega_out_30_0(:,10)>=-150 & omega_out_30_0(:,10)<-120))/n_omega_out_30_0;
omega_out_prob_30_0_180_150 = length(omega_out_30_0(omega_out_30_0(:,10)>=-180 & omega_out_30_0(:,10)<-150))/n_omega_out_30_0;
omega_out_prob_30_0 = [omega_out_prob_30_0_0_30 omega_out_prob_30_0_30_60 omega_out_prob_30_0_60_90 omega_out_prob_30_0_90_120...
    omega_out_prob_30_0_120_150 omega_out_prob_30_0_150_180 omega_out_prob_30_0_30_0 omega_out_prob_30_0_60_30...
    omega_out_prob_30_0_90_60 omega_out_prob_30_0_120_90 omega_out_prob_30_0_150_120 omega_out_prob_30_0_180_150];

n_omega_out_60_30 = length(omega_out_60_30(:,10));
omega_out_prob_60_30_0_30 = length(omega_out_60_30(omega_out_60_30(:,10)>=0 & omega_out_60_30(:,10)<30))/n_omega_out_60_30;
omega_out_prob_60_30_30_60 = length(omega_out_60_30(omega_out_60_30(:,10)>=30 & omega_out_60_30(:,10)<60))/n_omega_out_60_30;
omega_out_prob_60_30_60_90 = length(omega_out_60_30(omega_out_60_30(:,10)>=60 & omega_out_60_30(:,10)<90))/n_omega_out_60_30;
omega_out_prob_60_30_90_120 = length(omega_out_60_30(omega_out_60_30(:,10)>=90 & omega_out_60_30(:,10)<120))/n_omega_out_60_30;
omega_out_prob_60_30_120_150 = length(omega_out_60_30(omega_out_60_30(:,10)>=120 & omega_out_60_30(:,10)<150))/n_omega_out_60_30;
omega_out_prob_60_30_150_180 = length(omega_out_60_30(omega_out_60_30(:,10)>=150 & omega_out_60_30(:,10)<180))/n_omega_out_60_30;
omega_out_prob_60_30_30_0 = length(omega_out_60_30(omega_out_60_30(:,10)>=-30 & omega_out_60_30(:,10)<0))/n_omega_out_60_30;
omega_out_prob_60_30_60_30 = length(omega_out_60_30(omega_out_60_30(:,10)>=-60 & omega_out_60_30(:,10)<-30))/n_omega_out_60_30;
omega_out_prob_60_30_90_60 = length(omega_out_60_30(omega_out_60_30(:,10)>=-90 & omega_out_60_30(:,10)<-60))/n_omega_out_60_30;
omega_out_prob_60_30_120_90 = length(omega_out_60_30(omega_out_60_30(:,10)>=-120 & omega_out_60_30(:,10)<-90))/n_omega_out_60_30;
omega_out_prob_60_30_150_120 = length(omega_out_60_30(omega_out_60_30(:,10)>=-150 & omega_out_60_30(:,10)<-120))/n_omega_out_60_30;
omega_out_prob_60_30_180_150 = length(omega_out_60_30(omega_out_60_30(:,10)>=-180 & omega_out_60_30(:,10)<-150))/n_omega_out_60_30;
omega_out_prob_60_30 = [omega_out_prob_60_30_0_30 omega_out_prob_60_30_30_60 omega_out_prob_60_30_60_90 omega_out_prob_60_30_90_120...
    omega_out_prob_60_30_120_150 omega_out_prob_60_30_150_180 omega_out_prob_60_30_30_0 omega_out_prob_60_30_60_30...
    omega_out_prob_60_30_90_60 omega_out_prob_60_30_120_90 omega_out_prob_60_30_150_120 omega_out_prob_60_30_180_150];

n_omega_out_90_60 = length(omega_out_90_60(:,10));
omega_out_prob_90_60_0_30 = length(omega_out_90_60(omega_out_90_60(:,10)>=0 & omega_out_90_60(:,10)<30))/n_omega_out_90_60;
omega_out_prob_90_60_30_60 = length(omega_out_90_60(omega_out_90_60(:,10)>=30 & omega_out_90_60(:,10)<60))/n_omega_out_90_60;
omega_out_prob_90_60_60_90 = length(omega_out_90_60(omega_out_90_60(:,10)>=60 & omega_out_90_60(:,10)<90))/n_omega_out_90_60;
omega_out_prob_90_60_90_120 = length(omega_out_90_60(omega_out_90_60(:,10)>=90 & omega_out_90_60(:,10)<120))/n_omega_out_90_60;
omega_out_prob_90_60_120_150 = length(omega_out_90_60(omega_out_90_60(:,10)>=120 & omega_out_90_60(:,10)<150))/n_omega_out_90_60;
omega_out_prob_90_60_150_180 = length(omega_out_90_60(omega_out_90_60(:,10)>=150 & omega_out_90_60(:,10)<180))/n_omega_out_90_60;
omega_out_prob_90_60_30_0 = length(omega_out_90_60(omega_out_90_60(:,10)>=-30 & omega_out_90_60(:,10)<0))/n_omega_out_90_60;
omega_out_prob_90_60_60_30 = length(omega_out_90_60(omega_out_90_60(:,10)>=-60 & omega_out_90_60(:,10)<-30))/n_omega_out_90_60;
omega_out_prob_90_60_90_60 = length(omega_out_90_60(omega_out_90_60(:,10)>=-90 & omega_out_90_60(:,10)<-60))/n_omega_out_90_60;
omega_out_prob_90_60_120_90 = length(omega_out_90_60(omega_out_90_60(:,10)>=-120 & omega_out_90_60(:,10)<-90))/n_omega_out_90_60;
omega_out_prob_90_60_150_120 = length(omega_out_90_60(omega_out_90_60(:,10)>=-150 & omega_out_90_60(:,10)<-120))/n_omega_out_90_60;
omega_out_prob_90_60_180_150 = length(omega_out_90_60(omega_out_90_60(:,10)>=-180 & omega_out_90_60(:,10)<-150))/n_omega_out_90_60;
omega_out_prob_90_60 = [omega_out_prob_90_60_0_30 omega_out_prob_90_60_30_60 omega_out_prob_90_60_60_90 omega_out_prob_90_60_90_120...
    omega_out_prob_90_60_120_150 omega_out_prob_90_60_150_180 omega_out_prob_90_60_30_0 omega_out_prob_90_60_60_30...
    omega_out_prob_90_60_90_60 omega_out_prob_90_60_120_90 omega_out_prob_90_60_150_120 omega_out_prob_90_60_180_150];

n_omega_out_120_90 = length(omega_out_120_90(:,10));
omega_out_prob_120_90_0_30 = length(omega_out_120_90(omega_out_120_90(:,10)>=0 & omega_out_120_90(:,10)<30))/n_omega_out_120_90;
omega_out_prob_120_90_30_60 = length(omega_out_120_90(omega_out_120_90(:,10)>=30 & omega_out_120_90(:,10)<60))/n_omega_out_120_90;
omega_out_prob_120_90_60_90 = length(omega_out_120_90(omega_out_120_90(:,10)>=60 & omega_out_120_90(:,10)<90))/n_omega_out_120_90;
omega_out_prob_120_90_90_120 = length(omega_out_120_90(omega_out_120_90(:,10)>=90 & omega_out_120_90(:,10)<120))/n_omega_out_120_90;
omega_out_prob_120_90_120_150 = length(omega_out_120_90(omega_out_120_90(:,10)>=120 & omega_out_120_90(:,10)<150))/n_omega_out_120_90;
omega_out_prob_120_90_150_180 = length(omega_out_120_90(omega_out_120_90(:,10)>=150 & omega_out_120_90(:,10)<180))/n_omega_out_120_90;
omega_out_prob_120_90_30_0 = length(omega_out_120_90(omega_out_120_90(:,10)>=-30 & omega_out_120_90(:,10)<0))/n_omega_out_120_90;
omega_out_prob_120_90_60_30 = length(omega_out_120_90(omega_out_120_90(:,10)>=-60 & omega_out_120_90(:,10)<-30))/n_omega_out_120_90;
omega_out_prob_120_90_90_60 = length(omega_out_120_90(omega_out_120_90(:,10)>=-90 & omega_out_120_90(:,10)<-60))/n_omega_out_120_90;
omega_out_prob_120_90_120_90 = length(omega_out_120_90(omega_out_120_90(:,10)>=-120 & omega_out_120_90(:,10)<-90))/n_omega_out_120_90;
omega_out_prob_120_90_150_120 = length(omega_out_120_90(omega_out_120_90(:,10)>=-150 & omega_out_120_90(:,10)<-120))/n_omega_out_120_90;
omega_out_prob_120_90_180_150 = length(omega_out_120_90(omega_out_120_90(:,10)>=-180 & omega_out_120_90(:,10)<-150))/n_omega_out_120_90;
omega_out_prob_120_90 = [omega_out_prob_120_90_0_30 omega_out_prob_120_90_30_60 omega_out_prob_120_90_60_90 omega_out_prob_120_90_90_120...
    omega_out_prob_120_90_120_150 omega_out_prob_120_90_150_180 omega_out_prob_120_90_30_0 omega_out_prob_120_90_60_30...
    omega_out_prob_120_90_90_60 omega_out_prob_120_90_120_90 omega_out_prob_120_90_150_120 omega_out_prob_120_90_180_150];

n_omega_out_150_120 = length(omega_out_150_120(:,10));
omega_out_prob_150_120_0_30 = length(omega_out_150_120(omega_out_150_120(:,10)>=0 & omega_out_150_120(:,10)<30))/n_omega_out_150_120;
omega_out_prob_150_120_30_60 = length(omega_out_150_120(omega_out_150_120(:,10)>=30 & omega_out_150_120(:,10)<60))/n_omega_out_150_120;
omega_out_prob_150_120_60_90 = length(omega_out_150_120(omega_out_150_120(:,10)>=60 & omega_out_150_120(:,10)<90))/n_omega_out_150_120;
omega_out_prob_150_120_90_120 = length(omega_out_150_120(omega_out_150_120(:,10)>=90 & omega_out_150_120(:,10)<120))/n_omega_out_150_120;
omega_out_prob_150_120_120_150 = length(omega_out_150_120(omega_out_150_120(:,10)>=120 & omega_out_150_120(:,10)<150))/n_omega_out_150_120;
omega_out_prob_150_120_150_180 = length(omega_out_150_120(omega_out_150_120(:,10)>=150 & omega_out_150_120(:,10)<180))/n_omega_out_150_120;
omega_out_prob_150_120_30_0 = length(omega_out_150_120(omega_out_150_120(:,10)>=-30 & omega_out_150_120(:,10)<0))/n_omega_out_150_120;
omega_out_prob_150_120_60_30 = length(omega_out_150_120(omega_out_150_120(:,10)>=-60 & omega_out_150_120(:,10)<-30))/n_omega_out_150_120;
omega_out_prob_150_120_90_60 = length(omega_out_150_120(omega_out_150_120(:,10)>=-90 & omega_out_150_120(:,10)<-60))/n_omega_out_150_120;
omega_out_prob_150_120_120_90 = length(omega_out_150_120(omega_out_150_120(:,10)>=-120 & omega_out_150_120(:,10)<-90))/n_omega_out_150_120;
omega_out_prob_150_120_150_120 = length(omega_out_150_120(omega_out_150_120(:,10)>=-150 & omega_out_150_120(:,10)<-120))/n_omega_out_150_120;
omega_out_prob_150_120_180_150 = length(omega_out_150_120(omega_out_150_120(:,10)>=-180 & omega_out_150_120(:,10)<-150))/n_omega_out_150_120;
omega_out_prob_150_120 = [omega_out_prob_150_120_0_30 omega_out_prob_150_120_30_60 omega_out_prob_150_120_60_90 omega_out_prob_150_120_90_120...
    omega_out_prob_150_120_120_150 omega_out_prob_150_120_150_180 omega_out_prob_150_120_30_0 omega_out_prob_150_120_60_30...
    omega_out_prob_150_120_90_60 omega_out_prob_150_120_120_90 omega_out_prob_150_120_150_120 omega_out_prob_150_120_180_150];

n_omega_out_180_150 = length(omega_out_180_150(:,10));
omega_out_prob_180_150_0_30 = length(omega_out_180_150(omega_out_180_150(:,10)>=0 & omega_out_180_150(:,10)<30))/n_omega_out_180_150;
omega_out_prob_180_150_30_60 = length(omega_out_180_150(omega_out_180_150(:,10)>=30 & omega_out_180_150(:,10)<60))/n_omega_out_180_150;
omega_out_prob_180_150_60_90 = length(omega_out_180_150(omega_out_180_150(:,10)>=60 & omega_out_180_150(:,10)<90))/n_omega_out_180_150;
omega_out_prob_180_150_90_120 = length(omega_out_180_150(omega_out_180_150(:,10)>=90 & omega_out_180_150(:,10)<120))/n_omega_out_180_150;
omega_out_prob_180_150_120_150 = length(omega_out_180_150(omega_out_180_150(:,10)>=120 & omega_out_180_150(:,10)<150))/n_omega_out_180_150;
omega_out_prob_180_150_150_180 = length(omega_out_180_150(omega_out_180_150(:,10)>=150 & omega_out_180_150(:,10)<180))/n_omega_out_180_150;
omega_out_prob_180_150_30_0 = length(omega_out_180_150(omega_out_180_150(:,10)>=-30 & omega_out_180_150(:,10)<0))/n_omega_out_180_150;
omega_out_prob_180_150_60_30 = length(omega_out_180_150(omega_out_180_150(:,10)>=-60 & omega_out_180_150(:,10)<-30))/n_omega_out_180_150;
omega_out_prob_180_150_90_60 = length(omega_out_180_150(omega_out_180_150(:,10)>=-90 & omega_out_180_150(:,10)<-60))/n_omega_out_180_150;
omega_out_prob_180_150_120_90 = length(omega_out_180_150(omega_out_180_150(:,10)>=-120 & omega_out_180_150(:,10)<-90))/n_omega_out_180_150;
omega_out_prob_180_150_150_120 = length(omega_out_180_150(omega_out_180_150(:,10)>=-150 & omega_out_180_150(:,10)<-120))/n_omega_out_180_150;
omega_out_prob_180_150_180_150 = length(omega_out_180_150(omega_out_180_150(:,10)>=-180 & omega_out_180_150(:,10)<-150))/n_omega_out_180_150;
omega_out_prob_180_150 = [omega_out_prob_180_150_0_30 omega_out_prob_180_150_30_60 omega_out_prob_180_150_60_90 omega_out_prob_180_150_90_120...
    omega_out_prob_180_150_120_150 omega_out_prob_180_150_150_180 omega_out_prob_180_150_30_0 omega_out_prob_180_150_60_30...
    omega_out_prob_180_150_90_60 omega_out_prob_180_150_120_90 omega_out_prob_180_150_150_120 omega_out_prob_180_150_180_150];

omega_out_prob = [omega_out_prob_0_30 ; omega_out_prob_30_60 ; omega_out_prob_60_90 ; omega_out_prob_90_120 ; omega_out_prob_120_150 ; omega_out_prob_150_180...
    ;omega_out_prob_30_0 ; omega_out_prob_60_30 ; omega_out_prob_90_60 ; omega_out_prob_120_90 ; omega_out_prob_150_120 ; omega_out_prob_180_150];

omega_out_prob = [omega_out_prob(6:-1:1,:);omega_out_prob(7:12,:)];        
omega_out_prob = [omega_out_prob(:,6:-1:1) omega_out_prob(:,7:12)]';

omega_prob_bias = NaN(2,12);
omega_prob_bias(1,1) = nansum(omega_out_prob(8:12,1));
omega_prob_bias(2,1) = nansum(omega_out_prob(2:6,1));
omega_prob_bias(1,2) = nansum(omega_out_prob(1,2)) + nansum(omega_out_prob(9:12,2));
omega_prob_bias(2,2) = nansum(omega_out_prob(3:7,2));
omega_prob_bias(1,3) = nansum(omega_out_prob(1:2,3)) + nansum(omega_out_prob(10:12,3));
omega_prob_bias(2,3) = nansum(omega_out_prob(4:8,3));
omega_prob_bias(1,4) = nansum(omega_out_prob(1:3,4)) + nansum(omega_out_prob(11:12,4));
omega_prob_bias(2,4) = nansum(omega_out_prob(5:9,4));
omega_prob_bias(1,5) = nansum(omega_out_prob(1:4,5)) + nansum(omega_out_prob(12,5));
omega_prob_bias(2,5) = nansum(omega_out_prob(6:10,5));
omega_prob_bias(1,6) = nansum(omega_out_prob(1:5,6));
omega_prob_bias(2,6) = nansum(omega_out_prob(7:11,6));
omega_prob_bias(1,7) = nansum(omega_out_prob(8:12,7));
omega_prob_bias(2,7) = nansum(omega_out_prob(2:6,7));
omega_prob_bias(1,8) = nansum(omega_out_prob(1,8)) + nansum(omega_out_prob(9:12,8));
omega_prob_bias(2,8) = nansum(omega_out_prob(3:7,8));
omega_prob_bias(1,9) = nansum(omega_out_prob(1:2,9)) + nansum(omega_out_prob(10:12,9));
omega_prob_bias(2,9) = nansum(omega_out_prob(4:8,9));
omega_prob_bias(1,10) = nansum(omega_out_prob(1:3,10)) + nansum(omega_out_prob(11:12,10));
omega_prob_bias(2,10) = nansum(omega_out_prob(5:9,10));
omega_prob_bias(1,11) = nansum(omega_out_prob(1:4,11)) + nansum(omega_out_prob(12,11));
omega_prob_bias(2,11) = nansum(omega_out_prob(6:10,11));
omega_prob_bias(1,12) = nansum(omega_out_prob(1:5,12));
omega_prob_bias(2,12) = nansum(omega_out_prob(7:11,12));

omega_prob_Bias = NaN(2,6);
omega_prob_Bias(1,1) = (omega_prob_bias(1,1)+omega_prob_bias(1,12))/2;
omega_prob_Bias(1,2) = (omega_prob_bias(1,2)+omega_prob_bias(1,11))/2;
omega_prob_Bias(1,3) = (omega_prob_bias(1,3)+omega_prob_bias(1,10))/2;
omega_prob_Bias(1,4) = (omega_prob_bias(1,4)+omega_prob_bias(1,9))/2;
omega_prob_Bias(1,5) = (omega_prob_bias(1,5)+omega_prob_bias(1,8))/2;
omega_prob_Bias(1,6) = (omega_prob_bias(1,6)+omega_prob_bias(1,7))/2;
omega_prob_Bias(2,1) = (omega_prob_bias(2,1)+omega_prob_bias(2,12))/2;
omega_prob_Bias(2,2) = (omega_prob_bias(2,2)+omega_prob_bias(2,11))/2;
omega_prob_Bias(2,3) = (omega_prob_bias(2,3)+omega_prob_bias(2,10))/2;
omega_prob_Bias(2,4) = (omega_prob_bias(2,4)+omega_prob_bias(2,9))/2;
omega_prob_Bias(2,5) = (omega_prob_bias(2,5)+omega_prob_bias(2,8))/2;
omega_prob_Bias(2,6) = (omega_prob_bias(2,6)+omega_prob_bias(2,7))/2;


%% Count up reversal
reversal_out_0_30 = reversal_array(reversal_array(:,5)>=0 & reversal_array(:,5)<30,:);
reversal_out_30_60 = reversal_array(reversal_array(:,5)>=30 & reversal_array(:,5)<60,:);
reversal_out_60_90 = reversal_array(reversal_array(:,5)>=60 & reversal_array(:,5)<90,:);
reversal_out_90_120 = reversal_array(reversal_array(:,5)>=90 & reversal_array(:,5)<120,:);
reversal_out_120_150 = reversal_array(reversal_array(:,5)>=120 & reversal_array(:,5)<150,:);
reversal_out_150_180 = reversal_array(reversal_array(:,5)>=150 & reversal_array(:,5)<180,:);
reversal_out_30_0 = reversal_array(reversal_array(:,5)>=-30 & reversal_array(:,5)<0,:);
reversal_out_60_30 = reversal_array(reversal_array(:,5)>=-60 & reversal_array(:,5)<-30,:);
reversal_out_90_60 = reversal_array(reversal_array(:,5)>=-90 & reversal_array(:,5)<-60,:);
reversal_out_120_90 = reversal_array(reversal_array(:,5)>=-120 & reversal_array(:,5)<-90,:);
reversal_out_150_120 = reversal_array(reversal_array(:,5)>=-150 & reversal_array(:,5)<-120,:);
reversal_out_180_150 = reversal_array(reversal_array(:,5)>=-180 & reversal_array(:,5)<-150,:);

n_reversal_out_0_30 = length(reversal_out_0_30(:,10));
reversal_out_prob_0_30_0_30 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=0 & reversal_out_0_30(:,10)<30))/n_reversal_out_0_30;
reversal_out_prob_0_30_30_60 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=30 & reversal_out_0_30(:,10)<60))/n_reversal_out_0_30;
reversal_out_prob_0_30_60_90 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=60 & reversal_out_0_30(:,10)<90))/n_reversal_out_0_30;
reversal_out_prob_0_30_90_120 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=90 & reversal_out_0_30(:,10)<120))/n_reversal_out_0_30;
reversal_out_prob_0_30_120_150 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=120 & reversal_out_0_30(:,10)<150))/n_reversal_out_0_30;
reversal_out_prob_0_30_150_180 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=150 & reversal_out_0_30(:,10)<180))/n_reversal_out_0_30;
reversal_out_prob_0_30_30_0 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=-30 & reversal_out_0_30(:,10)<0))/n_reversal_out_0_30;
reversal_out_prob_0_30_60_30 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=-60 & reversal_out_0_30(:,10)<-30))/n_reversal_out_0_30;
reversal_out_prob_0_30_90_60 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=-90 & reversal_out_0_30(:,10)<-60))/n_reversal_out_0_30;
reversal_out_prob_0_30_120_90 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=-120 & reversal_out_0_30(:,10)<-90))/n_reversal_out_0_30;
reversal_out_prob_0_30_150_120 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=-150 & reversal_out_0_30(:,10)<-120))/n_reversal_out_0_30;
reversal_out_prob_0_30_180_150 = length(reversal_out_0_30(reversal_out_0_30(:,10)>=-180 & reversal_out_0_30(:,10)<-150))/n_reversal_out_0_30;
reversal_out_prob_0_30 = [reversal_out_prob_0_30_0_30 reversal_out_prob_0_30_30_60 reversal_out_prob_0_30_60_90 reversal_out_prob_0_30_90_120...
    reversal_out_prob_0_30_120_150 reversal_out_prob_0_30_150_180 reversal_out_prob_0_30_30_0 reversal_out_prob_0_30_60_30...
    reversal_out_prob_0_30_90_60 reversal_out_prob_0_30_120_90 reversal_out_prob_0_30_150_120 reversal_out_prob_0_30_180_150];

n_reversal_out_30_60 = length(reversal_out_30_60(:,10));
reversal_out_prob_30_60_0_30 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=0 & reversal_out_30_60(:,10)<30))/n_reversal_out_30_60;
reversal_out_prob_30_60_30_60 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=30 & reversal_out_30_60(:,10)<60))/n_reversal_out_30_60;
reversal_out_prob_30_60_60_90 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=60 & reversal_out_30_60(:,10)<90))/n_reversal_out_30_60;
reversal_out_prob_30_60_90_120 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=90 & reversal_out_30_60(:,10)<120))/n_reversal_out_30_60;
reversal_out_prob_30_60_120_150 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=120 & reversal_out_30_60(:,10)<150))/n_reversal_out_30_60;
reversal_out_prob_30_60_150_180 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=150 & reversal_out_30_60(:,10)<180))/n_reversal_out_30_60;
reversal_out_prob_30_60_30_0 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=-30 & reversal_out_30_60(:,10)<0))/n_reversal_out_30_60;
reversal_out_prob_30_60_60_30 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=-60 & reversal_out_30_60(:,10)<-30))/n_reversal_out_30_60;
reversal_out_prob_30_60_90_60 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=-90 & reversal_out_30_60(:,10)<-60))/n_reversal_out_30_60;
reversal_out_prob_30_60_120_90 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=-120 & reversal_out_30_60(:,10)<-90))/n_reversal_out_30_60;
reversal_out_prob_30_60_150_120 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=-150 & reversal_out_30_60(:,10)<-120))/n_reversal_out_30_60;
reversal_out_prob_30_60_180_150 = length(reversal_out_30_60(reversal_out_30_60(:,10)>=-180 & reversal_out_30_60(:,10)<-150))/n_reversal_out_30_60;
reversal_out_prob_30_60 = [reversal_out_prob_30_60_0_30 reversal_out_prob_30_60_30_60 reversal_out_prob_30_60_60_90 reversal_out_prob_30_60_90_120...
    reversal_out_prob_30_60_120_150 reversal_out_prob_30_60_150_180 reversal_out_prob_30_60_30_0 reversal_out_prob_30_60_60_30...
    reversal_out_prob_30_60_90_60 reversal_out_prob_30_60_120_90 reversal_out_prob_30_60_150_120 reversal_out_prob_30_60_180_150];

n_reversal_out_60_90 = length(reversal_out_60_90(:,10));
reversal_out_prob_60_90_0_30 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=0 & reversal_out_60_90(:,10)<30))/n_reversal_out_60_90;
reversal_out_prob_60_90_30_60 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=30 & reversal_out_60_90(:,10)<60))/n_reversal_out_60_90;
reversal_out_prob_60_90_60_90 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=60 & reversal_out_60_90(:,10)<90))/n_reversal_out_60_90;
reversal_out_prob_60_90_90_120 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=90 & reversal_out_60_90(:,10)<120))/n_reversal_out_60_90;
reversal_out_prob_60_90_120_150 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=120 & reversal_out_60_90(:,10)<150))/n_reversal_out_60_90;
reversal_out_prob_60_90_150_180 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=150 & reversal_out_60_90(:,10)<180))/n_reversal_out_60_90;
reversal_out_prob_60_90_30_0 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=-30 & reversal_out_60_90(:,10)<0))/n_reversal_out_60_90;
reversal_out_prob_60_90_60_30 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=-60 & reversal_out_60_90(:,10)<-30))/n_reversal_out_60_90;
reversal_out_prob_60_90_90_60 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=-90 & reversal_out_60_90(:,10)<-60))/n_reversal_out_60_90;
reversal_out_prob_60_90_120_90 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=-120 & reversal_out_60_90(:,10)<-90))/n_reversal_out_60_90;
reversal_out_prob_60_90_150_120 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=-150 & reversal_out_60_90(:,10)<-120))/n_reversal_out_60_90;
reversal_out_prob_60_90_180_150 = length(reversal_out_60_90(reversal_out_60_90(:,10)>=-180 & reversal_out_60_90(:,10)<-150))/n_reversal_out_60_90;
reversal_out_prob_60_90 = [reversal_out_prob_60_90_0_30 reversal_out_prob_60_90_30_60 reversal_out_prob_60_90_60_90 reversal_out_prob_60_90_90_120...
    reversal_out_prob_60_90_120_150 reversal_out_prob_60_90_150_180 reversal_out_prob_60_90_30_0 reversal_out_prob_60_90_60_30...
    reversal_out_prob_60_90_90_60 reversal_out_prob_60_90_120_90 reversal_out_prob_60_90_150_120 reversal_out_prob_60_90_180_150];

n_reversal_out_90_120 = length(reversal_out_90_120(:,10));
reversal_out_prob_90_120_0_30 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=0 & reversal_out_90_120(:,10)<30))/n_reversal_out_90_120;
reversal_out_prob_90_120_30_60 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=30 & reversal_out_90_120(:,10)<60))/n_reversal_out_90_120;
reversal_out_prob_90_120_60_90 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=60 & reversal_out_90_120(:,10)<90))/n_reversal_out_90_120;
reversal_out_prob_90_120_90_120 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=90 & reversal_out_90_120(:,10)<120))/n_reversal_out_90_120;
reversal_out_prob_90_120_120_150 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=120 & reversal_out_90_120(:,10)<150))/n_reversal_out_90_120;
reversal_out_prob_90_120_150_180 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=150 & reversal_out_90_120(:,10)<180))/n_reversal_out_90_120;
reversal_out_prob_90_120_30_0 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=-30 & reversal_out_90_120(:,10)<0))/n_reversal_out_90_120;
reversal_out_prob_90_120_60_30 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=-60 & reversal_out_90_120(:,10)<-30))/n_reversal_out_90_120;
reversal_out_prob_90_120_90_60 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=-90 & reversal_out_90_120(:,10)<-60))/n_reversal_out_90_120;
reversal_out_prob_90_120_120_90 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=-120 & reversal_out_90_120(:,10)<-90))/n_reversal_out_90_120;
reversal_out_prob_90_120_150_120 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=-150 & reversal_out_90_120(:,10)<-120))/n_reversal_out_90_120;
reversal_out_prob_90_120_180_150 = length(reversal_out_90_120(reversal_out_90_120(:,10)>=-180 & reversal_out_90_120(:,10)<-150))/n_reversal_out_90_120;
reversal_out_prob_90_120 = [reversal_out_prob_90_120_0_30 reversal_out_prob_90_120_30_60 reversal_out_prob_90_120_60_90 reversal_out_prob_90_120_90_120...
    reversal_out_prob_90_120_120_150 reversal_out_prob_90_120_150_180 reversal_out_prob_90_120_30_0 reversal_out_prob_90_120_60_30...
    reversal_out_prob_90_120_90_60 reversal_out_prob_90_120_120_90 reversal_out_prob_90_120_150_120 reversal_out_prob_90_120_180_150];

n_reversal_out_120_150 = length(reversal_out_120_150(:,10));
reversal_out_prob_120_150_0_30 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=0 & reversal_out_120_150(:,10)<30))/n_reversal_out_120_150;
reversal_out_prob_120_150_30_60 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=30 & reversal_out_120_150(:,10)<60))/n_reversal_out_120_150;
reversal_out_prob_120_150_60_90 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=60 & reversal_out_120_150(:,10)<90))/n_reversal_out_120_150;
reversal_out_prob_120_150_90_120 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=90 & reversal_out_120_150(:,10)<120))/n_reversal_out_120_150;
reversal_out_prob_120_150_120_150 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=120 & reversal_out_120_150(:,10)<150))/n_reversal_out_120_150;
reversal_out_prob_120_150_150_180 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=150 & reversal_out_120_150(:,10)<180))/n_reversal_out_120_150;
reversal_out_prob_120_150_30_0 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=-30 & reversal_out_120_150(:,10)<0))/n_reversal_out_120_150;
reversal_out_prob_120_150_60_30 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=-60 & reversal_out_120_150(:,10)<-30))/n_reversal_out_120_150;
reversal_out_prob_120_150_90_60 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=-90 & reversal_out_120_150(:,10)<-60))/n_reversal_out_120_150;
reversal_out_prob_120_150_120_90 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=-120 & reversal_out_120_150(:,10)<-90))/n_reversal_out_120_150;
reversal_out_prob_120_150_150_120 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=-150 & reversal_out_120_150(:,10)<-120))/n_reversal_out_120_150;
reversal_out_prob_120_150_180_150 = length(reversal_out_120_150(reversal_out_120_150(:,10)>=-180 & reversal_out_120_150(:,10)<-150))/n_reversal_out_120_150;
reversal_out_prob_120_150 = [reversal_out_prob_120_150_0_30 reversal_out_prob_120_150_30_60 reversal_out_prob_120_150_60_90 reversal_out_prob_120_150_90_120...
    reversal_out_prob_120_150_120_150 reversal_out_prob_120_150_150_180 reversal_out_prob_120_150_30_0 reversal_out_prob_120_150_60_30...
    reversal_out_prob_120_150_90_60 reversal_out_prob_120_150_120_90 reversal_out_prob_120_150_150_120 reversal_out_prob_120_150_180_150];

n_reversal_out_150_180 = length(reversal_out_150_180(:,10));
reversal_out_prob_150_180_0_30 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=0 & reversal_out_150_180(:,10)<30))/n_reversal_out_150_180;
reversal_out_prob_150_180_30_60 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=30 & reversal_out_150_180(:,10)<60))/n_reversal_out_150_180;
reversal_out_prob_150_180_60_90 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=60 & reversal_out_150_180(:,10)<90))/n_reversal_out_150_180;
reversal_out_prob_150_180_90_120 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=90 & reversal_out_150_180(:,10)<120))/n_reversal_out_150_180;
reversal_out_prob_150_180_120_150 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=120 & reversal_out_150_180(:,10)<150))/n_reversal_out_150_180;
reversal_out_prob_150_180_150_180 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=150 & reversal_out_150_180(:,10)<180))/n_reversal_out_150_180;
reversal_out_prob_150_180_30_0 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=-30 & reversal_out_150_180(:,10)<0))/n_reversal_out_150_180;
reversal_out_prob_150_180_60_30 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=-60 & reversal_out_150_180(:,10)<-30))/n_reversal_out_150_180;
reversal_out_prob_150_180_90_60 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=-90 & reversal_out_150_180(:,10)<-60))/n_reversal_out_150_180;
reversal_out_prob_150_180_120_90 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=-120 & reversal_out_150_180(:,10)<-90))/n_reversal_out_150_180;
reversal_out_prob_150_180_150_120 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=-150 & reversal_out_150_180(:,10)<-120))/n_reversal_out_150_180;
reversal_out_prob_150_180_180_150 = length(reversal_out_150_180(reversal_out_150_180(:,10)>=-180 & reversal_out_150_180(:,10)<-150))/n_reversal_out_150_180;
reversal_out_prob_150_180 = [reversal_out_prob_150_180_0_30 reversal_out_prob_150_180_30_60 reversal_out_prob_150_180_60_90 reversal_out_prob_150_180_90_120...
    reversal_out_prob_150_180_120_150 reversal_out_prob_150_180_150_180 reversal_out_prob_150_180_30_0 reversal_out_prob_150_180_60_30...
    reversal_out_prob_150_180_90_60 reversal_out_prob_150_180_120_90 reversal_out_prob_150_180_150_120 reversal_out_prob_150_180_180_150];

n_reversal_out_30_0 = length(reversal_out_30_0(:,10));
reversal_out_prob_30_0_0_30 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=0 & reversal_out_30_0(:,10)<30))/n_reversal_out_30_0;
reversal_out_prob_30_0_30_60 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=30 & reversal_out_30_0(:,10)<60))/n_reversal_out_30_0;
reversal_out_prob_30_0_60_90 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=60 & reversal_out_30_0(:,10)<90))/n_reversal_out_30_0;
reversal_out_prob_30_0_90_120 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=90 & reversal_out_30_0(:,10)<120))/n_reversal_out_30_0;
reversal_out_prob_30_0_120_150 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=120 & reversal_out_30_0(:,10)<150))/n_reversal_out_30_0;
reversal_out_prob_30_0_150_180 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=150 & reversal_out_30_0(:,10)<180))/n_reversal_out_30_0;
reversal_out_prob_30_0_30_0 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=-30 & reversal_out_30_0(:,10)<0))/n_reversal_out_30_0;
reversal_out_prob_30_0_60_30 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=-60 & reversal_out_30_0(:,10)<-30))/n_reversal_out_30_0;
reversal_out_prob_30_0_90_60 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=-90 & reversal_out_30_0(:,10)<-60))/n_reversal_out_30_0;
reversal_out_prob_30_0_120_90 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=-120 & reversal_out_30_0(:,10)<-90))/n_reversal_out_30_0;
reversal_out_prob_30_0_150_120 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=-150 & reversal_out_30_0(:,10)<-120))/n_reversal_out_30_0;
reversal_out_prob_30_0_180_150 = length(reversal_out_30_0(reversal_out_30_0(:,10)>=-180 & reversal_out_30_0(:,10)<-150))/n_reversal_out_30_0;
reversal_out_prob_30_0 = [reversal_out_prob_30_0_0_30 reversal_out_prob_30_0_30_60 reversal_out_prob_30_0_60_90 reversal_out_prob_30_0_90_120...
    reversal_out_prob_30_0_120_150 reversal_out_prob_30_0_150_180 reversal_out_prob_30_0_30_0 reversal_out_prob_30_0_60_30...
    reversal_out_prob_30_0_90_60 reversal_out_prob_30_0_120_90 reversal_out_prob_30_0_150_120 reversal_out_prob_30_0_180_150];

n_reversal_out_60_30 = length(reversal_out_60_30(:,10));
reversal_out_prob_60_30_0_30 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=0 & reversal_out_60_30(:,10)<30))/n_reversal_out_60_30;
reversal_out_prob_60_30_30_60 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=30 & reversal_out_60_30(:,10)<60))/n_reversal_out_60_30;
reversal_out_prob_60_30_60_90 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=60 & reversal_out_60_30(:,10)<90))/n_reversal_out_60_30;
reversal_out_prob_60_30_90_120 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=90 & reversal_out_60_30(:,10)<120))/n_reversal_out_60_30;
reversal_out_prob_60_30_120_150 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=120 & reversal_out_60_30(:,10)<150))/n_reversal_out_60_30;
reversal_out_prob_60_30_150_180 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=150 & reversal_out_60_30(:,10)<180))/n_reversal_out_60_30;
reversal_out_prob_60_30_30_0 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=-30 & reversal_out_60_30(:,10)<0))/n_reversal_out_60_30;
reversal_out_prob_60_30_60_30 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=-60 & reversal_out_60_30(:,10)<-30))/n_reversal_out_60_30;
reversal_out_prob_60_30_90_60 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=-90 & reversal_out_60_30(:,10)<-60))/n_reversal_out_60_30;
reversal_out_prob_60_30_120_90 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=-120 & reversal_out_60_30(:,10)<-90))/n_reversal_out_60_30;
reversal_out_prob_60_30_150_120 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=-150 & reversal_out_60_30(:,10)<-120))/n_reversal_out_60_30;
reversal_out_prob_60_30_180_150 = length(reversal_out_60_30(reversal_out_60_30(:,10)>=-180 & reversal_out_60_30(:,10)<-150))/n_reversal_out_60_30;
reversal_out_prob_60_30 = [reversal_out_prob_60_30_0_30 reversal_out_prob_60_30_30_60 reversal_out_prob_60_30_60_90 reversal_out_prob_60_30_90_120...
    reversal_out_prob_60_30_120_150 reversal_out_prob_60_30_150_180 reversal_out_prob_60_30_30_0 reversal_out_prob_60_30_60_30...
    reversal_out_prob_60_30_90_60 reversal_out_prob_60_30_120_90 reversal_out_prob_60_30_150_120 reversal_out_prob_60_30_180_150];

n_reversal_out_90_60 = length(reversal_out_90_60(:,10));
reversal_out_prob_90_60_0_30 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=0 & reversal_out_90_60(:,10)<30))/n_reversal_out_90_60;
reversal_out_prob_90_60_30_60 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=30 & reversal_out_90_60(:,10)<60))/n_reversal_out_90_60;
reversal_out_prob_90_60_60_90 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=60 & reversal_out_90_60(:,10)<90))/n_reversal_out_90_60;
reversal_out_prob_90_60_90_120 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=90 & reversal_out_90_60(:,10)<120))/n_reversal_out_90_60;
reversal_out_prob_90_60_120_150 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=120 & reversal_out_90_60(:,10)<150))/n_reversal_out_90_60;
reversal_out_prob_90_60_150_180 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=150 & reversal_out_90_60(:,10)<180))/n_reversal_out_90_60;
reversal_out_prob_90_60_30_0 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=-30 & reversal_out_90_60(:,10)<0))/n_reversal_out_90_60;
reversal_out_prob_90_60_60_30 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=-60 & reversal_out_90_60(:,10)<-30))/n_reversal_out_90_60;
reversal_out_prob_90_60_90_60 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=-90 & reversal_out_90_60(:,10)<-60))/n_reversal_out_90_60;
reversal_out_prob_90_60_120_90 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=-120 & reversal_out_90_60(:,10)<-90))/n_reversal_out_90_60;
reversal_out_prob_90_60_150_120 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=-150 & reversal_out_90_60(:,10)<-120))/n_reversal_out_90_60;
reversal_out_prob_90_60_180_150 = length(reversal_out_90_60(reversal_out_90_60(:,10)>=-180 & reversal_out_90_60(:,10)<-150))/n_reversal_out_90_60;
reversal_out_prob_90_60 = [reversal_out_prob_90_60_0_30 reversal_out_prob_90_60_30_60 reversal_out_prob_90_60_60_90 reversal_out_prob_90_60_90_120...
    reversal_out_prob_90_60_120_150 reversal_out_prob_90_60_150_180 reversal_out_prob_90_60_30_0 reversal_out_prob_90_60_60_30...
    reversal_out_prob_90_60_90_60 reversal_out_prob_90_60_120_90 reversal_out_prob_90_60_150_120 reversal_out_prob_90_60_180_150];

n_reversal_out_120_90 = length(reversal_out_120_90(:,10));
reversal_out_prob_120_90_0_30 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=0 & reversal_out_120_90(:,10)<30))/n_reversal_out_120_90;
reversal_out_prob_120_90_30_60 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=30 & reversal_out_120_90(:,10)<60))/n_reversal_out_120_90;
reversal_out_prob_120_90_60_90 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=60 & reversal_out_120_90(:,10)<90))/n_reversal_out_120_90;
reversal_out_prob_120_90_90_120 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=90 & reversal_out_120_90(:,10)<120))/n_reversal_out_120_90;
reversal_out_prob_120_90_120_150 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=120 & reversal_out_120_90(:,10)<150))/n_reversal_out_120_90;
reversal_out_prob_120_90_150_180 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=150 & reversal_out_120_90(:,10)<180))/n_reversal_out_120_90;
reversal_out_prob_120_90_30_0 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=-30 & reversal_out_120_90(:,10)<0))/n_reversal_out_120_90;
reversal_out_prob_120_90_60_30 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=-60 & reversal_out_120_90(:,10)<-30))/n_reversal_out_120_90;
reversal_out_prob_120_90_90_60 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=-90 & reversal_out_120_90(:,10)<-60))/n_reversal_out_120_90;
reversal_out_prob_120_90_120_90 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=-120 & reversal_out_120_90(:,10)<-90))/n_reversal_out_120_90;
reversal_out_prob_120_90_150_120 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=-150 & reversal_out_120_90(:,10)<-120))/n_reversal_out_120_90;
reversal_out_prob_120_90_180_150 = length(reversal_out_120_90(reversal_out_120_90(:,10)>=-180 & reversal_out_120_90(:,10)<-150))/n_reversal_out_120_90;
reversal_out_prob_120_90 = [reversal_out_prob_120_90_0_30 reversal_out_prob_120_90_30_60 reversal_out_prob_120_90_60_90 reversal_out_prob_120_90_90_120...
    reversal_out_prob_120_90_120_150 reversal_out_prob_120_90_150_180 reversal_out_prob_120_90_30_0 reversal_out_prob_120_90_60_30...
    reversal_out_prob_120_90_90_60 reversal_out_prob_120_90_120_90 reversal_out_prob_120_90_150_120 reversal_out_prob_120_90_180_150];

n_reversal_out_150_120 = length(reversal_out_150_120(:,10));
reversal_out_prob_150_120_0_30 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=0 & reversal_out_150_120(:,10)<30))/n_reversal_out_150_120;
reversal_out_prob_150_120_30_60 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=30 & reversal_out_150_120(:,10)<60))/n_reversal_out_150_120;
reversal_out_prob_150_120_60_90 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=60 & reversal_out_150_120(:,10)<90))/n_reversal_out_150_120;
reversal_out_prob_150_120_90_120 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=90 & reversal_out_150_120(:,10)<120))/n_reversal_out_150_120;
reversal_out_prob_150_120_120_150 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=120 & reversal_out_150_120(:,10)<150))/n_reversal_out_150_120;
reversal_out_prob_150_120_150_180 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=150 & reversal_out_150_120(:,10)<180))/n_reversal_out_150_120;
reversal_out_prob_150_120_30_0 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=-30 & reversal_out_150_120(:,10)<0))/n_reversal_out_150_120;
reversal_out_prob_150_120_60_30 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=-60 & reversal_out_150_120(:,10)<-30))/n_reversal_out_150_120;
reversal_out_prob_150_120_90_60 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=-90 & reversal_out_150_120(:,10)<-60))/n_reversal_out_150_120;
reversal_out_prob_150_120_120_90 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=-120 & reversal_out_150_120(:,10)<-90))/n_reversal_out_150_120;
reversal_out_prob_150_120_150_120 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=-150 & reversal_out_150_120(:,10)<-120))/n_reversal_out_150_120;
reversal_out_prob_150_120_180_150 = length(reversal_out_150_120(reversal_out_150_120(:,10)>=-180 & reversal_out_150_120(:,10)<-150))/n_reversal_out_150_120;
reversal_out_prob_150_120 = [reversal_out_prob_150_120_0_30 reversal_out_prob_150_120_30_60 reversal_out_prob_150_120_60_90 reversal_out_prob_150_120_90_120...
    reversal_out_prob_150_120_120_150 reversal_out_prob_150_120_150_180 reversal_out_prob_150_120_30_0 reversal_out_prob_150_120_60_30...
    reversal_out_prob_150_120_90_60 reversal_out_prob_150_120_120_90 reversal_out_prob_150_120_150_120 reversal_out_prob_150_120_180_150];

n_reversal_out_180_150 = length(reversal_out_180_150(:,10));
reversal_out_prob_180_150_0_30 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=0 & reversal_out_180_150(:,10)<30))/n_reversal_out_180_150;
reversal_out_prob_180_150_30_60 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=30 & reversal_out_180_150(:,10)<60))/n_reversal_out_180_150;
reversal_out_prob_180_150_60_90 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=60 & reversal_out_180_150(:,10)<90))/n_reversal_out_180_150;
reversal_out_prob_180_150_90_120 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=90 & reversal_out_180_150(:,10)<120))/n_reversal_out_180_150;
reversal_out_prob_180_150_120_150 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=120 & reversal_out_180_150(:,10)<150))/n_reversal_out_180_150;
reversal_out_prob_180_150_150_180 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=150 & reversal_out_180_150(:,10)<180))/n_reversal_out_180_150;
reversal_out_prob_180_150_30_0 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=-30 & reversal_out_180_150(:,10)<0))/n_reversal_out_180_150;
reversal_out_prob_180_150_60_30 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=-60 & reversal_out_180_150(:,10)<-30))/n_reversal_out_180_150;
reversal_out_prob_180_150_90_60 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=-90 & reversal_out_180_150(:,10)<-60))/n_reversal_out_180_150;
reversal_out_prob_180_150_120_90 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=-120 & reversal_out_180_150(:,10)<-90))/n_reversal_out_180_150;
reversal_out_prob_180_150_150_120 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=-150 & reversal_out_180_150(:,10)<-120))/n_reversal_out_180_150;
reversal_out_prob_180_150_180_150 = length(reversal_out_180_150(reversal_out_180_150(:,10)>=-180 & reversal_out_180_150(:,10)<-150))/n_reversal_out_180_150;
reversal_out_prob_180_150 = [reversal_out_prob_180_150_0_30 reversal_out_prob_180_150_30_60 reversal_out_prob_180_150_60_90 reversal_out_prob_180_150_90_120...
    reversal_out_prob_180_150_120_150 reversal_out_prob_180_150_150_180 reversal_out_prob_180_150_30_0 reversal_out_prob_180_150_60_30...
    reversal_out_prob_180_150_90_60 reversal_out_prob_180_150_120_90 reversal_out_prob_180_150_150_120 reversal_out_prob_180_150_180_150];

reversal_out_prob = [reversal_out_prob_0_30 ; reversal_out_prob_30_60 ; reversal_out_prob_60_90 ; reversal_out_prob_90_120 ; reversal_out_prob_120_150 ; reversal_out_prob_150_180...
    ;reversal_out_prob_30_0 ; reversal_out_prob_60_30 ; reversal_out_prob_90_60 ; reversal_out_prob_120_90 ; reversal_out_prob_150_120 ; reversal_out_prob_180_150];

reversal_out_prob = [reversal_out_prob(6:-1:1,:);reversal_out_prob(7:12,:)];        
reversal_out_prob = [reversal_out_prob(:,6:-1:1) reversal_out_prob(:,7:12)]';

reversal_prob_bias = NaN(2,12);
reversal_prob_bias(1,1) = nansum(reversal_out_prob(8:12,1));
reversal_prob_bias(2,1) = nansum(reversal_out_prob(2:6,1));
reversal_prob_bias(1,2) = nansum(reversal_out_prob(1,2)) + nansum(reversal_out_prob(9:12,2));
reversal_prob_bias(2,2) = nansum(reversal_out_prob(3:7,2));
reversal_prob_bias(1,3) = nansum(reversal_out_prob(1:2,3)) + nansum(reversal_out_prob(10:12,3));
reversal_prob_bias(2,3) = nansum(reversal_out_prob(4:8,3));
reversal_prob_bias(1,4) = nansum(reversal_out_prob(1:3,4)) + nansum(reversal_out_prob(11:12,4));
reversal_prob_bias(2,4) = nansum(reversal_out_prob(5:9,4));
reversal_prob_bias(1,5) = nansum(reversal_out_prob(1:4,5)) + nansum(reversal_out_prob(12,5));
reversal_prob_bias(2,5) = nansum(reversal_out_prob(6:10,5));
reversal_prob_bias(1,6) = nansum(reversal_out_prob(1:5,6));
reversal_prob_bias(2,6) = nansum(reversal_out_prob(7:11,6));
reversal_prob_bias(1,7) = nansum(reversal_out_prob(8:12,7));
reversal_prob_bias(2,7) = nansum(reversal_out_prob(2:6,7));
reversal_prob_bias(1,8) = nansum(reversal_out_prob(1,8)) + nansum(reversal_out_prob(9:12,8));
reversal_prob_bias(2,8) = nansum(reversal_out_prob(3:7,8));
reversal_prob_bias(1,9) = nansum(reversal_out_prob(1:2,9)) + nansum(reversal_out_prob(10:12,9));
reversal_prob_bias(2,9) = nansum(reversal_out_prob(4:8,9));
reversal_prob_bias(1,10) = nansum(reversal_out_prob(1:3,10)) + nansum(reversal_out_prob(11:12,10));
reversal_prob_bias(2,10) = nansum(reversal_out_prob(5:9,10));
reversal_prob_bias(1,11) = nansum(reversal_out_prob(1:4,11)) + nansum(reversal_out_prob(12,11));
reversal_prob_bias(2,11) = nansum(reversal_out_prob(6:10,11));
reversal_prob_bias(1,12) = nansum(reversal_out_prob(1:5,12));
reversal_prob_bias(2,12) = nansum(reversal_out_prob(7:11,12));

reversal_prob_Bias = NaN(2,6);
reversal_prob_Bias(1,1) = (reversal_prob_bias(1,1)+reversal_prob_bias(1,12))/2;
reversal_prob_Bias(1,2) = (reversal_prob_bias(1,2)+reversal_prob_bias(1,11))/2;
reversal_prob_Bias(1,3) = (reversal_prob_bias(1,3)+reversal_prob_bias(1,10))/2;
reversal_prob_Bias(1,4) = (reversal_prob_bias(1,4)+reversal_prob_bias(1,9))/2;
reversal_prob_Bias(1,5) = (reversal_prob_bias(1,5)+reversal_prob_bias(1,8))/2;
reversal_prob_Bias(1,6) = (reversal_prob_bias(1,6)+reversal_prob_bias(1,7))/2;
reversal_prob_Bias(2,1) = (reversal_prob_bias(2,1)+reversal_prob_bias(2,12))/2;
reversal_prob_Bias(2,2) = (reversal_prob_bias(2,2)+reversal_prob_bias(2,11))/2;
reversal_prob_Bias(2,3) = (reversal_prob_bias(2,3)+reversal_prob_bias(2,10))/2;
reversal_prob_Bias(2,4) = (reversal_prob_bias(2,4)+reversal_prob_bias(2,9))/2;
reversal_prob_Bias(2,5) = (reversal_prob_bias(2,5)+reversal_prob_bias(2,8))/2;
reversal_prob_Bias(2,6) = (reversal_prob_bias(2,6)+reversal_prob_bias(2,7))/2;


%% Count up reversal turn
revturn_out_0_30 = revturn_array(revturn_array(:,5)>=0 & revturn_array(:,5)<30,:);
revturn_out_30_60 = revturn_array(revturn_array(:,5)>=30 & revturn_array(:,5)<60,:);
revturn_out_60_90 = revturn_array(revturn_array(:,5)>=60 & revturn_array(:,5)<90,:);
revturn_out_90_120 = revturn_array(revturn_array(:,5)>=90 & revturn_array(:,5)<120,:);
revturn_out_120_150 = revturn_array(revturn_array(:,5)>=120 & revturn_array(:,5)<150,:);
revturn_out_150_180 = revturn_array(revturn_array(:,5)>=150 & revturn_array(:,5)<180,:);
revturn_out_30_0 = revturn_array(revturn_array(:,5)>=-30 & revturn_array(:,5)<0,:);
revturn_out_60_30 = revturn_array(revturn_array(:,5)>=-60 & revturn_array(:,5)<-30,:);
revturn_out_90_60 = revturn_array(revturn_array(:,5)>=-90 & revturn_array(:,5)<-60,:);
revturn_out_120_90 = revturn_array(revturn_array(:,5)>=-120 & revturn_array(:,5)<-90,:);
revturn_out_150_120 = revturn_array(revturn_array(:,5)>=-150 & revturn_array(:,5)<-120,:);
revturn_out_180_150 = revturn_array(revturn_array(:,5)>=-180 & revturn_array(:,5)<-150,:);

n_revturn_out_0_30 = length(revturn_out_0_30(:,10));
revturn_out_prob_0_30_0_30 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=0 & revturn_out_0_30(:,10)<30))/n_revturn_out_0_30;
revturn_out_prob_0_30_30_60 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=30 & revturn_out_0_30(:,10)<60))/n_revturn_out_0_30;
revturn_out_prob_0_30_60_90 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=60 & revturn_out_0_30(:,10)<90))/n_revturn_out_0_30;
revturn_out_prob_0_30_90_120 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=90 & revturn_out_0_30(:,10)<120))/n_revturn_out_0_30;
revturn_out_prob_0_30_120_150 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=120 & revturn_out_0_30(:,10)<150))/n_revturn_out_0_30;
revturn_out_prob_0_30_150_180 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=150 & revturn_out_0_30(:,10)<180))/n_revturn_out_0_30;
revturn_out_prob_0_30_30_0 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=-30 & revturn_out_0_30(:,10)<0))/n_revturn_out_0_30;
revturn_out_prob_0_30_60_30 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=-60 & revturn_out_0_30(:,10)<-30))/n_revturn_out_0_30;
revturn_out_prob_0_30_90_60 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=-90 & revturn_out_0_30(:,10)<-60))/n_revturn_out_0_30;
revturn_out_prob_0_30_120_90 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=-120 & revturn_out_0_30(:,10)<-90))/n_revturn_out_0_30;
revturn_out_prob_0_30_150_120 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=-150 & revturn_out_0_30(:,10)<-120))/n_revturn_out_0_30;
revturn_out_prob_0_30_180_150 = length(revturn_out_0_30(revturn_out_0_30(:,10)>=-180 & revturn_out_0_30(:,10)<-150))/n_revturn_out_0_30;
revturn_out_prob_0_30 = [revturn_out_prob_0_30_0_30 revturn_out_prob_0_30_30_60 revturn_out_prob_0_30_60_90 revturn_out_prob_0_30_90_120...
    revturn_out_prob_0_30_120_150 revturn_out_prob_0_30_150_180 revturn_out_prob_0_30_30_0 revturn_out_prob_0_30_60_30...
    revturn_out_prob_0_30_90_60 revturn_out_prob_0_30_120_90 revturn_out_prob_0_30_150_120 revturn_out_prob_0_30_180_150];

n_revturn_out_30_60 = length(revturn_out_30_60(:,10));
revturn_out_prob_30_60_0_30 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=0 & revturn_out_30_60(:,10)<30))/n_revturn_out_30_60;
revturn_out_prob_30_60_30_60 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=30 & revturn_out_30_60(:,10)<60))/n_revturn_out_30_60;
revturn_out_prob_30_60_60_90 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=60 & revturn_out_30_60(:,10)<90))/n_revturn_out_30_60;
revturn_out_prob_30_60_90_120 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=90 & revturn_out_30_60(:,10)<120))/n_revturn_out_30_60;
revturn_out_prob_30_60_120_150 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=120 & revturn_out_30_60(:,10)<150))/n_revturn_out_30_60;
revturn_out_prob_30_60_150_180 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=150 & revturn_out_30_60(:,10)<180))/n_revturn_out_30_60;
revturn_out_prob_30_60_30_0 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=-30 & revturn_out_30_60(:,10)<0))/n_revturn_out_30_60;
revturn_out_prob_30_60_60_30 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=-60 & revturn_out_30_60(:,10)<-30))/n_revturn_out_30_60;
revturn_out_prob_30_60_90_60 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=-90 & revturn_out_30_60(:,10)<-60))/n_revturn_out_30_60;
revturn_out_prob_30_60_120_90 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=-120 & revturn_out_30_60(:,10)<-90))/n_revturn_out_30_60;
revturn_out_prob_30_60_150_120 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=-150 & revturn_out_30_60(:,10)<-120))/n_revturn_out_30_60;
revturn_out_prob_30_60_180_150 = length(revturn_out_30_60(revturn_out_30_60(:,10)>=-180 & revturn_out_30_60(:,10)<-150))/n_revturn_out_30_60;
revturn_out_prob_30_60 = [revturn_out_prob_30_60_0_30 revturn_out_prob_30_60_30_60 revturn_out_prob_30_60_60_90 revturn_out_prob_30_60_90_120...
    revturn_out_prob_30_60_120_150 revturn_out_prob_30_60_150_180 revturn_out_prob_30_60_30_0 revturn_out_prob_30_60_60_30...
    revturn_out_prob_30_60_90_60 revturn_out_prob_30_60_120_90 revturn_out_prob_30_60_150_120 revturn_out_prob_30_60_180_150];

n_revturn_out_60_90 = length(revturn_out_60_90(:,10));
revturn_out_prob_60_90_0_30 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=0 & revturn_out_60_90(:,10)<30))/n_revturn_out_60_90;
revturn_out_prob_60_90_30_60 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=30 & revturn_out_60_90(:,10)<60))/n_revturn_out_60_90;
revturn_out_prob_60_90_60_90 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=60 & revturn_out_60_90(:,10)<90))/n_revturn_out_60_90;
revturn_out_prob_60_90_90_120 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=90 & revturn_out_60_90(:,10)<120))/n_revturn_out_60_90;
revturn_out_prob_60_90_120_150 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=120 & revturn_out_60_90(:,10)<150))/n_revturn_out_60_90;
revturn_out_prob_60_90_150_180 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=150 & revturn_out_60_90(:,10)<180))/n_revturn_out_60_90;
revturn_out_prob_60_90_30_0 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=-30 & revturn_out_60_90(:,10)<0))/n_revturn_out_60_90;
revturn_out_prob_60_90_60_30 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=-60 & revturn_out_60_90(:,10)<-30))/n_revturn_out_60_90;
revturn_out_prob_60_90_90_60 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=-90 & revturn_out_60_90(:,10)<-60))/n_revturn_out_60_90;
revturn_out_prob_60_90_120_90 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=-120 & revturn_out_60_90(:,10)<-90))/n_revturn_out_60_90;
revturn_out_prob_60_90_150_120 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=-150 & revturn_out_60_90(:,10)<-120))/n_revturn_out_60_90;
revturn_out_prob_60_90_180_150 = length(revturn_out_60_90(revturn_out_60_90(:,10)>=-180 & revturn_out_60_90(:,10)<-150))/n_revturn_out_60_90;
revturn_out_prob_60_90 = [revturn_out_prob_60_90_0_30 revturn_out_prob_60_90_30_60 revturn_out_prob_60_90_60_90 revturn_out_prob_60_90_90_120...
    revturn_out_prob_60_90_120_150 revturn_out_prob_60_90_150_180 revturn_out_prob_60_90_30_0 revturn_out_prob_60_90_60_30...
    revturn_out_prob_60_90_90_60 revturn_out_prob_60_90_120_90 revturn_out_prob_60_90_150_120 revturn_out_prob_60_90_180_150];

n_revturn_out_90_120 = length(revturn_out_90_120(:,10));
revturn_out_prob_90_120_0_30 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=0 & revturn_out_90_120(:,10)<30))/n_revturn_out_90_120;
revturn_out_prob_90_120_30_60 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=30 & revturn_out_90_120(:,10)<60))/n_revturn_out_90_120;
revturn_out_prob_90_120_60_90 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=60 & revturn_out_90_120(:,10)<90))/n_revturn_out_90_120;
revturn_out_prob_90_120_90_120 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=90 & revturn_out_90_120(:,10)<120))/n_revturn_out_90_120;
revturn_out_prob_90_120_120_150 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=120 & revturn_out_90_120(:,10)<150))/n_revturn_out_90_120;
revturn_out_prob_90_120_150_180 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=150 & revturn_out_90_120(:,10)<180))/n_revturn_out_90_120;
revturn_out_prob_90_120_30_0 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=-30 & revturn_out_90_120(:,10)<0))/n_revturn_out_90_120;
revturn_out_prob_90_120_60_30 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=-60 & revturn_out_90_120(:,10)<-30))/n_revturn_out_90_120;
revturn_out_prob_90_120_90_60 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=-90 & revturn_out_90_120(:,10)<-60))/n_revturn_out_90_120;
revturn_out_prob_90_120_120_90 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=-120 & revturn_out_90_120(:,10)<-90))/n_revturn_out_90_120;
revturn_out_prob_90_120_150_120 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=-150 & revturn_out_90_120(:,10)<-120))/n_revturn_out_90_120;
revturn_out_prob_90_120_180_150 = length(revturn_out_90_120(revturn_out_90_120(:,10)>=-180 & revturn_out_90_120(:,10)<-150))/n_revturn_out_90_120;
revturn_out_prob_90_120 = [revturn_out_prob_90_120_0_30 revturn_out_prob_90_120_30_60 revturn_out_prob_90_120_60_90 revturn_out_prob_90_120_90_120...
    revturn_out_prob_90_120_120_150 revturn_out_prob_90_120_150_180 revturn_out_prob_90_120_30_0 revturn_out_prob_90_120_60_30...
    revturn_out_prob_90_120_90_60 revturn_out_prob_90_120_120_90 revturn_out_prob_90_120_150_120 revturn_out_prob_90_120_180_150];

n_revturn_out_120_150 = length(revturn_out_120_150(:,10));
revturn_out_prob_120_150_0_30 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=0 & revturn_out_120_150(:,10)<30))/n_revturn_out_120_150;
revturn_out_prob_120_150_30_60 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=30 & revturn_out_120_150(:,10)<60))/n_revturn_out_120_150;
revturn_out_prob_120_150_60_90 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=60 & revturn_out_120_150(:,10)<90))/n_revturn_out_120_150;
revturn_out_prob_120_150_90_120 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=90 & revturn_out_120_150(:,10)<120))/n_revturn_out_120_150;
revturn_out_prob_120_150_120_150 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=120 & revturn_out_120_150(:,10)<150))/n_revturn_out_120_150;
revturn_out_prob_120_150_150_180 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=150 & revturn_out_120_150(:,10)<180))/n_revturn_out_120_150;
revturn_out_prob_120_150_30_0 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=-30 & revturn_out_120_150(:,10)<0))/n_revturn_out_120_150;
revturn_out_prob_120_150_60_30 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=-60 & revturn_out_120_150(:,10)<-30))/n_revturn_out_120_150;
revturn_out_prob_120_150_90_60 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=-90 & revturn_out_120_150(:,10)<-60))/n_revturn_out_120_150;
revturn_out_prob_120_150_120_90 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=-120 & revturn_out_120_150(:,10)<-90))/n_revturn_out_120_150;
revturn_out_prob_120_150_150_120 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=-150 & revturn_out_120_150(:,10)<-120))/n_revturn_out_120_150;
revturn_out_prob_120_150_180_150 = length(revturn_out_120_150(revturn_out_120_150(:,10)>=-180 & revturn_out_120_150(:,10)<-150))/n_revturn_out_120_150;
revturn_out_prob_120_150 = [revturn_out_prob_120_150_0_30 revturn_out_prob_120_150_30_60 revturn_out_prob_120_150_60_90 revturn_out_prob_120_150_90_120...
    revturn_out_prob_120_150_120_150 revturn_out_prob_120_150_150_180 revturn_out_prob_120_150_30_0 revturn_out_prob_120_150_60_30...
    revturn_out_prob_120_150_90_60 revturn_out_prob_120_150_120_90 revturn_out_prob_120_150_150_120 revturn_out_prob_120_150_180_150];

n_revturn_out_150_180 = length(revturn_out_150_180(:,10));
revturn_out_prob_150_180_0_30 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=0 & revturn_out_150_180(:,10)<30))/n_revturn_out_150_180;
revturn_out_prob_150_180_30_60 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=30 & revturn_out_150_180(:,10)<60))/n_revturn_out_150_180;
revturn_out_prob_150_180_60_90 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=60 & revturn_out_150_180(:,10)<90))/n_revturn_out_150_180;
revturn_out_prob_150_180_90_120 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=90 & revturn_out_150_180(:,10)<120))/n_revturn_out_150_180;
revturn_out_prob_150_180_120_150 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=120 & revturn_out_150_180(:,10)<150))/n_revturn_out_150_180;
revturn_out_prob_150_180_150_180 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=150 & revturn_out_150_180(:,10)<180))/n_revturn_out_150_180;
revturn_out_prob_150_180_30_0 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=-30 & revturn_out_150_180(:,10)<0))/n_revturn_out_150_180;
revturn_out_prob_150_180_60_30 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=-60 & revturn_out_150_180(:,10)<-30))/n_revturn_out_150_180;
revturn_out_prob_150_180_90_60 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=-90 & revturn_out_150_180(:,10)<-60))/n_revturn_out_150_180;
revturn_out_prob_150_180_120_90 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=-120 & revturn_out_150_180(:,10)<-90))/n_revturn_out_150_180;
revturn_out_prob_150_180_150_120 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=-150 & revturn_out_150_180(:,10)<-120))/n_revturn_out_150_180;
revturn_out_prob_150_180_180_150 = length(revturn_out_150_180(revturn_out_150_180(:,10)>=-180 & revturn_out_150_180(:,10)<-150))/n_revturn_out_150_180;
revturn_out_prob_150_180 = [revturn_out_prob_150_180_0_30 revturn_out_prob_150_180_30_60 revturn_out_prob_150_180_60_90 revturn_out_prob_150_180_90_120...
    revturn_out_prob_150_180_120_150 revturn_out_prob_150_180_150_180 revturn_out_prob_150_180_30_0 revturn_out_prob_150_180_60_30...
    revturn_out_prob_150_180_90_60 revturn_out_prob_150_180_120_90 revturn_out_prob_150_180_150_120 revturn_out_prob_150_180_180_150];

n_revturn_out_30_0 = length(revturn_out_30_0(:,10));
revturn_out_prob_30_0_0_30 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=0 & revturn_out_30_0(:,10)<30))/n_revturn_out_30_0;
revturn_out_prob_30_0_30_60 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=30 & revturn_out_30_0(:,10)<60))/n_revturn_out_30_0;
revturn_out_prob_30_0_60_90 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=60 & revturn_out_30_0(:,10)<90))/n_revturn_out_30_0;
revturn_out_prob_30_0_90_120 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=90 & revturn_out_30_0(:,10)<120))/n_revturn_out_30_0;
revturn_out_prob_30_0_120_150 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=120 & revturn_out_30_0(:,10)<150))/n_revturn_out_30_0;
revturn_out_prob_30_0_150_180 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=150 & revturn_out_30_0(:,10)<180))/n_revturn_out_30_0;
revturn_out_prob_30_0_30_0 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=-30 & revturn_out_30_0(:,10)<0))/n_revturn_out_30_0;
revturn_out_prob_30_0_60_30 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=-60 & revturn_out_30_0(:,10)<-30))/n_revturn_out_30_0;
revturn_out_prob_30_0_90_60 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=-90 & revturn_out_30_0(:,10)<-60))/n_revturn_out_30_0;
revturn_out_prob_30_0_120_90 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=-120 & revturn_out_30_0(:,10)<-90))/n_revturn_out_30_0;
revturn_out_prob_30_0_150_120 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=-150 & revturn_out_30_0(:,10)<-120))/n_revturn_out_30_0;
revturn_out_prob_30_0_180_150 = length(revturn_out_30_0(revturn_out_30_0(:,10)>=-180 & revturn_out_30_0(:,10)<-150))/n_revturn_out_30_0;
revturn_out_prob_30_0 = [revturn_out_prob_30_0_0_30 revturn_out_prob_30_0_30_60 revturn_out_prob_30_0_60_90 revturn_out_prob_30_0_90_120...
    revturn_out_prob_30_0_120_150 revturn_out_prob_30_0_150_180 revturn_out_prob_30_0_30_0 revturn_out_prob_30_0_60_30...
    revturn_out_prob_30_0_90_60 revturn_out_prob_30_0_120_90 revturn_out_prob_30_0_150_120 revturn_out_prob_30_0_180_150];

n_revturn_out_60_30 = length(revturn_out_60_30(:,10));
revturn_out_prob_60_30_0_30 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=0 & revturn_out_60_30(:,10)<30))/n_revturn_out_60_30;
revturn_out_prob_60_30_30_60 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=30 & revturn_out_60_30(:,10)<60))/n_revturn_out_60_30;
revturn_out_prob_60_30_60_90 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=60 & revturn_out_60_30(:,10)<90))/n_revturn_out_60_30;
revturn_out_prob_60_30_90_120 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=90 & revturn_out_60_30(:,10)<120))/n_revturn_out_60_30;
revturn_out_prob_60_30_120_150 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=120 & revturn_out_60_30(:,10)<150))/n_revturn_out_60_30;
revturn_out_prob_60_30_150_180 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=150 & revturn_out_60_30(:,10)<180))/n_revturn_out_60_30;
revturn_out_prob_60_30_30_0 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=-30 & revturn_out_60_30(:,10)<0))/n_revturn_out_60_30;
revturn_out_prob_60_30_60_30 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=-60 & revturn_out_60_30(:,10)<-30))/n_revturn_out_60_30;
revturn_out_prob_60_30_90_60 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=-90 & revturn_out_60_30(:,10)<-60))/n_revturn_out_60_30;
revturn_out_prob_60_30_120_90 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=-120 & revturn_out_60_30(:,10)<-90))/n_revturn_out_60_30;
revturn_out_prob_60_30_150_120 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=-150 & revturn_out_60_30(:,10)<-120))/n_revturn_out_60_30;
revturn_out_prob_60_30_180_150 = length(revturn_out_60_30(revturn_out_60_30(:,10)>=-180 & revturn_out_60_30(:,10)<-150))/n_revturn_out_60_30;
revturn_out_prob_60_30 = [revturn_out_prob_60_30_0_30 revturn_out_prob_60_30_30_60 revturn_out_prob_60_30_60_90 revturn_out_prob_60_30_90_120...
    revturn_out_prob_60_30_120_150 revturn_out_prob_60_30_150_180 revturn_out_prob_60_30_30_0 revturn_out_prob_60_30_60_30...
    revturn_out_prob_60_30_90_60 revturn_out_prob_60_30_120_90 revturn_out_prob_60_30_150_120 revturn_out_prob_60_30_180_150];

n_revturn_out_90_60 = length(revturn_out_90_60(:,10));
revturn_out_prob_90_60_0_30 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=0 & revturn_out_90_60(:,10)<30))/n_revturn_out_90_60;
revturn_out_prob_90_60_30_60 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=30 & revturn_out_90_60(:,10)<60))/n_revturn_out_90_60;
revturn_out_prob_90_60_60_90 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=60 & revturn_out_90_60(:,10)<90))/n_revturn_out_90_60;
revturn_out_prob_90_60_90_120 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=90 & revturn_out_90_60(:,10)<120))/n_revturn_out_90_60;
revturn_out_prob_90_60_120_150 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=120 & revturn_out_90_60(:,10)<150))/n_revturn_out_90_60;
revturn_out_prob_90_60_150_180 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=150 & revturn_out_90_60(:,10)<180))/n_revturn_out_90_60;
revturn_out_prob_90_60_30_0 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=-30 & revturn_out_90_60(:,10)<0))/n_revturn_out_90_60;
revturn_out_prob_90_60_60_30 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=-60 & revturn_out_90_60(:,10)<-30))/n_revturn_out_90_60;
revturn_out_prob_90_60_90_60 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=-90 & revturn_out_90_60(:,10)<-60))/n_revturn_out_90_60;
revturn_out_prob_90_60_120_90 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=-120 & revturn_out_90_60(:,10)<-90))/n_revturn_out_90_60;
revturn_out_prob_90_60_150_120 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=-150 & revturn_out_90_60(:,10)<-120))/n_revturn_out_90_60;
revturn_out_prob_90_60_180_150 = length(revturn_out_90_60(revturn_out_90_60(:,10)>=-180 & revturn_out_90_60(:,10)<-150))/n_revturn_out_90_60;
revturn_out_prob_90_60 = [revturn_out_prob_90_60_0_30 revturn_out_prob_90_60_30_60 revturn_out_prob_90_60_60_90 revturn_out_prob_90_60_90_120...
    revturn_out_prob_90_60_120_150 revturn_out_prob_90_60_150_180 revturn_out_prob_90_60_30_0 revturn_out_prob_90_60_60_30...
    revturn_out_prob_90_60_90_60 revturn_out_prob_90_60_120_90 revturn_out_prob_90_60_150_120 revturn_out_prob_90_60_180_150];

n_revturn_out_120_90 = length(revturn_out_120_90(:,10));
revturn_out_prob_120_90_0_30 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=0 & revturn_out_120_90(:,10)<30))/n_revturn_out_120_90;
revturn_out_prob_120_90_30_60 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=30 & revturn_out_120_90(:,10)<60))/n_revturn_out_120_90;
revturn_out_prob_120_90_60_90 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=60 & revturn_out_120_90(:,10)<90))/n_revturn_out_120_90;
revturn_out_prob_120_90_90_120 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=90 & revturn_out_120_90(:,10)<120))/n_revturn_out_120_90;
revturn_out_prob_120_90_120_150 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=120 & revturn_out_120_90(:,10)<150))/n_revturn_out_120_90;
revturn_out_prob_120_90_150_180 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=150 & revturn_out_120_90(:,10)<180))/n_revturn_out_120_90;
revturn_out_prob_120_90_30_0 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=-30 & revturn_out_120_90(:,10)<0))/n_revturn_out_120_90;
revturn_out_prob_120_90_60_30 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=-60 & revturn_out_120_90(:,10)<-30))/n_revturn_out_120_90;
revturn_out_prob_120_90_90_60 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=-90 & revturn_out_120_90(:,10)<-60))/n_revturn_out_120_90;
revturn_out_prob_120_90_120_90 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=-120 & revturn_out_120_90(:,10)<-90))/n_revturn_out_120_90;
revturn_out_prob_120_90_150_120 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=-150 & revturn_out_120_90(:,10)<-120))/n_revturn_out_120_90;
revturn_out_prob_120_90_180_150 = length(revturn_out_120_90(revturn_out_120_90(:,10)>=-180 & revturn_out_120_90(:,10)<-150))/n_revturn_out_120_90;
revturn_out_prob_120_90 = [revturn_out_prob_120_90_0_30 revturn_out_prob_120_90_30_60 revturn_out_prob_120_90_60_90 revturn_out_prob_120_90_90_120...
    revturn_out_prob_120_90_120_150 revturn_out_prob_120_90_150_180 revturn_out_prob_120_90_30_0 revturn_out_prob_120_90_60_30...
    revturn_out_prob_120_90_90_60 revturn_out_prob_120_90_120_90 revturn_out_prob_120_90_150_120 revturn_out_prob_120_90_180_150];

n_revturn_out_150_120 = length(revturn_out_150_120(:,10));
revturn_out_prob_150_120_0_30 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=0 & revturn_out_150_120(:,10)<30))/n_revturn_out_150_120;
revturn_out_prob_150_120_30_60 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=30 & revturn_out_150_120(:,10)<60))/n_revturn_out_150_120;
revturn_out_prob_150_120_60_90 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=60 & revturn_out_150_120(:,10)<90))/n_revturn_out_150_120;
revturn_out_prob_150_120_90_120 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=90 & revturn_out_150_120(:,10)<120))/n_revturn_out_150_120;
revturn_out_prob_150_120_120_150 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=120 & revturn_out_150_120(:,10)<150))/n_revturn_out_150_120;
revturn_out_prob_150_120_150_180 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=150 & revturn_out_150_120(:,10)<180))/n_revturn_out_150_120;
revturn_out_prob_150_120_30_0 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=-30 & revturn_out_150_120(:,10)<0))/n_revturn_out_150_120;
revturn_out_prob_150_120_60_30 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=-60 & revturn_out_150_120(:,10)<-30))/n_revturn_out_150_120;
revturn_out_prob_150_120_90_60 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=-90 & revturn_out_150_120(:,10)<-60))/n_revturn_out_150_120;
revturn_out_prob_150_120_120_90 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=-120 & revturn_out_150_120(:,10)<-90))/n_revturn_out_150_120;
revturn_out_prob_150_120_150_120 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=-150 & revturn_out_150_120(:,10)<-120))/n_revturn_out_150_120;
revturn_out_prob_150_120_180_150 = length(revturn_out_150_120(revturn_out_150_120(:,10)>=-180 & revturn_out_150_120(:,10)<-150))/n_revturn_out_150_120;
revturn_out_prob_150_120 = [revturn_out_prob_150_120_0_30 revturn_out_prob_150_120_30_60 revturn_out_prob_150_120_60_90 revturn_out_prob_150_120_90_120...
    revturn_out_prob_150_120_120_150 revturn_out_prob_150_120_150_180 revturn_out_prob_150_120_30_0 revturn_out_prob_150_120_60_30...
    revturn_out_prob_150_120_90_60 revturn_out_prob_150_120_120_90 revturn_out_prob_150_120_150_120 revturn_out_prob_150_120_180_150];

n_revturn_out_180_150 = length(revturn_out_180_150(:,10));
revturn_out_prob_180_150_0_30 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=0 & revturn_out_180_150(:,10)<30))/n_revturn_out_180_150;
revturn_out_prob_180_150_30_60 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=30 & revturn_out_180_150(:,10)<60))/n_revturn_out_180_150;
revturn_out_prob_180_150_60_90 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=60 & revturn_out_180_150(:,10)<90))/n_revturn_out_180_150;
revturn_out_prob_180_150_90_120 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=90 & revturn_out_180_150(:,10)<120))/n_revturn_out_180_150;
revturn_out_prob_180_150_120_150 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=120 & revturn_out_180_150(:,10)<150))/n_revturn_out_180_150;
revturn_out_prob_180_150_150_180 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=150 & revturn_out_180_150(:,10)<180))/n_revturn_out_180_150;
revturn_out_prob_180_150_30_0 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=-30 & revturn_out_180_150(:,10)<0))/n_revturn_out_180_150;
revturn_out_prob_180_150_60_30 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=-60 & revturn_out_180_150(:,10)<-30))/n_revturn_out_180_150;
revturn_out_prob_180_150_90_60 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=-90 & revturn_out_180_150(:,10)<-60))/n_revturn_out_180_150;
revturn_out_prob_180_150_120_90 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=-120 & revturn_out_180_150(:,10)<-90))/n_revturn_out_180_150;
revturn_out_prob_180_150_150_120 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=-150 & revturn_out_180_150(:,10)<-120))/n_revturn_out_180_150;
revturn_out_prob_180_150_180_150 = length(revturn_out_180_150(revturn_out_180_150(:,10)>=-180 & revturn_out_180_150(:,10)<-150))/n_revturn_out_180_150;
revturn_out_prob_180_150 = [revturn_out_prob_180_150_0_30 revturn_out_prob_180_150_30_60 revturn_out_prob_180_150_60_90 revturn_out_prob_180_150_90_120...
    revturn_out_prob_180_150_120_150 revturn_out_prob_180_150_150_180 revturn_out_prob_180_150_30_0 revturn_out_prob_180_150_60_30...
    revturn_out_prob_180_150_90_60 revturn_out_prob_180_150_120_90 revturn_out_prob_180_150_150_120 revturn_out_prob_180_150_180_150];

revturn_out_prob = [revturn_out_prob_0_30 ; revturn_out_prob_30_60 ; revturn_out_prob_60_90 ; revturn_out_prob_90_120 ; revturn_out_prob_120_150 ; revturn_out_prob_150_180...
    ;revturn_out_prob_30_0 ; revturn_out_prob_60_30 ; revturn_out_prob_90_60 ; revturn_out_prob_120_90 ; revturn_out_prob_150_120 ; revturn_out_prob_180_150];

revturn_out_prob = [revturn_out_prob(6:-1:1,:);revturn_out_prob(7:12,:)];        
revturn_out_prob = [revturn_out_prob(:,6:-1:1) revturn_out_prob(:,7:12)]';

revturn_prob_bias = NaN(2,12);
revturn_prob_bias(1,1) = nansum(revturn_out_prob(8:12,1));
revturn_prob_bias(2,1) = nansum(revturn_out_prob(2:6,1));
revturn_prob_bias(1,2) = nansum(revturn_out_prob(1,2)) + nansum(revturn_out_prob(9:12,2));
revturn_prob_bias(2,2) = nansum(revturn_out_prob(3:7,2));
revturn_prob_bias(1,3) = nansum(revturn_out_prob(1:2,3)) + nansum(revturn_out_prob(10:12,3));
revturn_prob_bias(2,3) = nansum(revturn_out_prob(4:8,3));
revturn_prob_bias(1,4) = nansum(revturn_out_prob(1:3,4)) + nansum(revturn_out_prob(11:12,4));
revturn_prob_bias(2,4) = nansum(revturn_out_prob(5:9,4));
revturn_prob_bias(1,5) = nansum(revturn_out_prob(1:4,5)) + nansum(revturn_out_prob(12,5));
revturn_prob_bias(2,5) = nansum(revturn_out_prob(6:10,5));
revturn_prob_bias(1,6) = nansum(revturn_out_prob(1:5,6));
revturn_prob_bias(2,6) = nansum(revturn_out_prob(7:11,6));
revturn_prob_bias(1,7) = nansum(revturn_out_prob(8:12,7));
revturn_prob_bias(2,7) = nansum(revturn_out_prob(2:6,7));
revturn_prob_bias(1,8) = nansum(revturn_out_prob(1,8)) + nansum(revturn_out_prob(9:12,8));
revturn_prob_bias(2,8) = nansum(revturn_out_prob(3:7,8));
revturn_prob_bias(1,9) = nansum(revturn_out_prob(1:2,9)) + nansum(revturn_out_prob(10:12,9));
revturn_prob_bias(2,9) = nansum(revturn_out_prob(4:8,9));
revturn_prob_bias(1,10) = nansum(revturn_out_prob(1:3,10)) + nansum(revturn_out_prob(11:12,10));
revturn_prob_bias(2,10) = nansum(revturn_out_prob(5:9,10));
revturn_prob_bias(1,11) = nansum(revturn_out_prob(1:4,11)) + nansum(revturn_out_prob(12,11));
revturn_prob_bias(2,11) = nansum(revturn_out_prob(6:10,11));
revturn_prob_bias(1,12) = nansum(revturn_out_prob(1:5,12));
revturn_prob_bias(2,12) = nansum(revturn_out_prob(7:11,12));

revturn_prob_Bias = NaN(2,6);
revturn_prob_Bias(1,1) = (revturn_prob_bias(1,1)+revturn_prob_bias(1,12))/2;
revturn_prob_Bias(1,2) = (revturn_prob_bias(1,2)+revturn_prob_bias(1,11))/2;
revturn_prob_Bias(1,3) = (revturn_prob_bias(1,3)+revturn_prob_bias(1,10))/2;
revturn_prob_Bias(1,4) = (revturn_prob_bias(1,4)+revturn_prob_bias(1,9))/2;
revturn_prob_Bias(1,5) = (revturn_prob_bias(1,5)+revturn_prob_bias(1,8))/2;
revturn_prob_Bias(1,6) = (revturn_prob_bias(1,6)+revturn_prob_bias(1,7))/2;
revturn_prob_Bias(2,1) = (revturn_prob_bias(2,1)+revturn_prob_bias(2,12))/2;
revturn_prob_Bias(2,2) = (revturn_prob_bias(2,2)+revturn_prob_bias(2,11))/2;
revturn_prob_Bias(2,3) = (revturn_prob_bias(2,3)+revturn_prob_bias(2,10))/2;
revturn_prob_Bias(2,4) = (revturn_prob_bias(2,4)+revturn_prob_bias(2,9))/2;
revturn_prob_Bias(2,5) = (revturn_prob_bias(2,5)+revturn_prob_bias(2,8))/2;
revturn_prob_Bias(2,6) = (revturn_prob_bias(2,6)+revturn_prob_bias(2,7))/2;


%% Count up shallow turn
shallow_out_0_30 = shallow_array(shallow_array(:,5)>=0 & shallow_array(:,5)<30,:);
shallow_out_30_60 = shallow_array(shallow_array(:,5)>=30 & shallow_array(:,5)<60,:);
shallow_out_60_90 = shallow_array(shallow_array(:,5)>=60 & shallow_array(:,5)<90,:);
shallow_out_90_120 = shallow_array(shallow_array(:,5)>=90 & shallow_array(:,5)<120,:);
shallow_out_120_150 = shallow_array(shallow_array(:,5)>=120 & shallow_array(:,5)<150,:);
shallow_out_150_180 = shallow_array(shallow_array(:,5)>=150 & shallow_array(:,5)<180,:);
shallow_out_30_0 = shallow_array(shallow_array(:,5)>=-30 & shallow_array(:,5)<0,:);
shallow_out_60_30 = shallow_array(shallow_array(:,5)>=-60 & shallow_array(:,5)<-30,:);
shallow_out_90_60 = shallow_array(shallow_array(:,5)>=-90 & shallow_array(:,5)<-60,:);
shallow_out_120_90 = shallow_array(shallow_array(:,5)>=-120 & shallow_array(:,5)<-90,:);
shallow_out_150_120 = shallow_array(shallow_array(:,5)>=-150 & shallow_array(:,5)<-120,:);
shallow_out_180_150 = shallow_array(shallow_array(:,5)>=-180 & shallow_array(:,5)<-150,:);

n_shallow_out_0_30 = length(shallow_out_0_30(:,10));
shallow_out_prob_0_30_0_30 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=0 & shallow_out_0_30(:,10)<30))/n_shallow_out_0_30;
shallow_out_prob_0_30_30_60 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=30 & shallow_out_0_30(:,10)<60))/n_shallow_out_0_30;
shallow_out_prob_0_30_60_90 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=60 & shallow_out_0_30(:,10)<90))/n_shallow_out_0_30;
shallow_out_prob_0_30_90_120 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=90 & shallow_out_0_30(:,10)<120))/n_shallow_out_0_30;
shallow_out_prob_0_30_120_150 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=120 & shallow_out_0_30(:,10)<150))/n_shallow_out_0_30;
shallow_out_prob_0_30_150_180 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=150 & shallow_out_0_30(:,10)<180))/n_shallow_out_0_30;
shallow_out_prob_0_30_30_0 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=-30 & shallow_out_0_30(:,10)<0))/n_shallow_out_0_30;
shallow_out_prob_0_30_60_30 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=-60 & shallow_out_0_30(:,10)<-30))/n_shallow_out_0_30;
shallow_out_prob_0_30_90_60 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=-90 & shallow_out_0_30(:,10)<-60))/n_shallow_out_0_30;
shallow_out_prob_0_30_120_90 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=-120 & shallow_out_0_30(:,10)<-90))/n_shallow_out_0_30;
shallow_out_prob_0_30_150_120 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=-150 & shallow_out_0_30(:,10)<-120))/n_shallow_out_0_30;
shallow_out_prob_0_30_180_150 = length(shallow_out_0_30(shallow_out_0_30(:,10)>=-180 & shallow_out_0_30(:,10)<-150))/n_shallow_out_0_30;
shallow_out_prob_0_30 = [shallow_out_prob_0_30_0_30 shallow_out_prob_0_30_30_60 shallow_out_prob_0_30_60_90 shallow_out_prob_0_30_90_120...
    shallow_out_prob_0_30_120_150 shallow_out_prob_0_30_150_180 shallow_out_prob_0_30_30_0 shallow_out_prob_0_30_60_30...
    shallow_out_prob_0_30_90_60 shallow_out_prob_0_30_120_90 shallow_out_prob_0_30_150_120 shallow_out_prob_0_30_180_150];

n_shallow_out_30_60 = length(shallow_out_30_60(:,10));
shallow_out_prob_30_60_0_30 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=0 & shallow_out_30_60(:,10)<30))/n_shallow_out_30_60;
shallow_out_prob_30_60_30_60 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=30 & shallow_out_30_60(:,10)<60))/n_shallow_out_30_60;
shallow_out_prob_30_60_60_90 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=60 & shallow_out_30_60(:,10)<90))/n_shallow_out_30_60;
shallow_out_prob_30_60_90_120 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=90 & shallow_out_30_60(:,10)<120))/n_shallow_out_30_60;
shallow_out_prob_30_60_120_150 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=120 & shallow_out_30_60(:,10)<150))/n_shallow_out_30_60;
shallow_out_prob_30_60_150_180 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=150 & shallow_out_30_60(:,10)<180))/n_shallow_out_30_60;
shallow_out_prob_30_60_30_0 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=-30 & shallow_out_30_60(:,10)<0))/n_shallow_out_30_60;
shallow_out_prob_30_60_60_30 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=-60 & shallow_out_30_60(:,10)<-30))/n_shallow_out_30_60;
shallow_out_prob_30_60_90_60 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=-90 & shallow_out_30_60(:,10)<-60))/n_shallow_out_30_60;
shallow_out_prob_30_60_120_90 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=-120 & shallow_out_30_60(:,10)<-90))/n_shallow_out_30_60;
shallow_out_prob_30_60_150_120 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=-150 & shallow_out_30_60(:,10)<-120))/n_shallow_out_30_60;
shallow_out_prob_30_60_180_150 = length(shallow_out_30_60(shallow_out_30_60(:,10)>=-180 & shallow_out_30_60(:,10)<-150))/n_shallow_out_30_60;
shallow_out_prob_30_60 = [shallow_out_prob_30_60_0_30 shallow_out_prob_30_60_30_60 shallow_out_prob_30_60_60_90 shallow_out_prob_30_60_90_120...
    shallow_out_prob_30_60_120_150 shallow_out_prob_30_60_150_180 shallow_out_prob_30_60_30_0 shallow_out_prob_30_60_60_30...
    shallow_out_prob_30_60_90_60 shallow_out_prob_30_60_120_90 shallow_out_prob_30_60_150_120 shallow_out_prob_30_60_180_150];

n_shallow_out_60_90 = length(shallow_out_60_90(:,10));
shallow_out_prob_60_90_0_30 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=0 & shallow_out_60_90(:,10)<30))/n_shallow_out_60_90;
shallow_out_prob_60_90_30_60 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=30 & shallow_out_60_90(:,10)<60))/n_shallow_out_60_90;
shallow_out_prob_60_90_60_90 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=60 & shallow_out_60_90(:,10)<90))/n_shallow_out_60_90;
shallow_out_prob_60_90_90_120 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=90 & shallow_out_60_90(:,10)<120))/n_shallow_out_60_90;
shallow_out_prob_60_90_120_150 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=120 & shallow_out_60_90(:,10)<150))/n_shallow_out_60_90;
shallow_out_prob_60_90_150_180 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=150 & shallow_out_60_90(:,10)<180))/n_shallow_out_60_90;
shallow_out_prob_60_90_30_0 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=-30 & shallow_out_60_90(:,10)<0))/n_shallow_out_60_90;
shallow_out_prob_60_90_60_30 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=-60 & shallow_out_60_90(:,10)<-30))/n_shallow_out_60_90;
shallow_out_prob_60_90_90_60 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=-90 & shallow_out_60_90(:,10)<-60))/n_shallow_out_60_90;
shallow_out_prob_60_90_120_90 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=-120 & shallow_out_60_90(:,10)<-90))/n_shallow_out_60_90;
shallow_out_prob_60_90_150_120 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=-150 & shallow_out_60_90(:,10)<-120))/n_shallow_out_60_90;
shallow_out_prob_60_90_180_150 = length(shallow_out_60_90(shallow_out_60_90(:,10)>=-180 & shallow_out_60_90(:,10)<-150))/n_shallow_out_60_90;
shallow_out_prob_60_90 = [shallow_out_prob_60_90_0_30 shallow_out_prob_60_90_30_60 shallow_out_prob_60_90_60_90 shallow_out_prob_60_90_90_120...
    shallow_out_prob_60_90_120_150 shallow_out_prob_60_90_150_180 shallow_out_prob_60_90_30_0 shallow_out_prob_60_90_60_30...
    shallow_out_prob_60_90_90_60 shallow_out_prob_60_90_120_90 shallow_out_prob_60_90_150_120 shallow_out_prob_60_90_180_150];

n_shallow_out_90_120 = length(shallow_out_90_120(:,10));
shallow_out_prob_90_120_0_30 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=0 & shallow_out_90_120(:,10)<30))/n_shallow_out_90_120;
shallow_out_prob_90_120_30_60 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=30 & shallow_out_90_120(:,10)<60))/n_shallow_out_90_120;
shallow_out_prob_90_120_60_90 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=60 & shallow_out_90_120(:,10)<90))/n_shallow_out_90_120;
shallow_out_prob_90_120_90_120 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=90 & shallow_out_90_120(:,10)<120))/n_shallow_out_90_120;
shallow_out_prob_90_120_120_150 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=120 & shallow_out_90_120(:,10)<150))/n_shallow_out_90_120;
shallow_out_prob_90_120_150_180 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=150 & shallow_out_90_120(:,10)<180))/n_shallow_out_90_120;
shallow_out_prob_90_120_30_0 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=-30 & shallow_out_90_120(:,10)<0))/n_shallow_out_90_120;
shallow_out_prob_90_120_60_30 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=-60 & shallow_out_90_120(:,10)<-30))/n_shallow_out_90_120;
shallow_out_prob_90_120_90_60 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=-90 & shallow_out_90_120(:,10)<-60))/n_shallow_out_90_120;
shallow_out_prob_90_120_120_90 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=-120 & shallow_out_90_120(:,10)<-90))/n_shallow_out_90_120;
shallow_out_prob_90_120_150_120 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=-150 & shallow_out_90_120(:,10)<-120))/n_shallow_out_90_120;
shallow_out_prob_90_120_180_150 = length(shallow_out_90_120(shallow_out_90_120(:,10)>=-180 & shallow_out_90_120(:,10)<-150))/n_shallow_out_90_120;
shallow_out_prob_90_120 = [shallow_out_prob_90_120_0_30 shallow_out_prob_90_120_30_60 shallow_out_prob_90_120_60_90 shallow_out_prob_90_120_90_120...
    shallow_out_prob_90_120_120_150 shallow_out_prob_90_120_150_180 shallow_out_prob_90_120_30_0 shallow_out_prob_90_120_60_30...
    shallow_out_prob_90_120_90_60 shallow_out_prob_90_120_120_90 shallow_out_prob_90_120_150_120 shallow_out_prob_90_120_180_150];

n_shallow_out_120_150 = length(shallow_out_120_150(:,10));
shallow_out_prob_120_150_0_30 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=0 & shallow_out_120_150(:,10)<30))/n_shallow_out_120_150;
shallow_out_prob_120_150_30_60 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=30 & shallow_out_120_150(:,10)<60))/n_shallow_out_120_150;
shallow_out_prob_120_150_60_90 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=60 & shallow_out_120_150(:,10)<90))/n_shallow_out_120_150;
shallow_out_prob_120_150_90_120 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=90 & shallow_out_120_150(:,10)<120))/n_shallow_out_120_150;
shallow_out_prob_120_150_120_150 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=120 & shallow_out_120_150(:,10)<150))/n_shallow_out_120_150;
shallow_out_prob_120_150_150_180 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=150 & shallow_out_120_150(:,10)<180))/n_shallow_out_120_150;
shallow_out_prob_120_150_30_0 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=-30 & shallow_out_120_150(:,10)<0))/n_shallow_out_120_150;
shallow_out_prob_120_150_60_30 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=-60 & shallow_out_120_150(:,10)<-30))/n_shallow_out_120_150;
shallow_out_prob_120_150_90_60 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=-90 & shallow_out_120_150(:,10)<-60))/n_shallow_out_120_150;
shallow_out_prob_120_150_120_90 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=-120 & shallow_out_120_150(:,10)<-90))/n_shallow_out_120_150;
shallow_out_prob_120_150_150_120 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=-150 & shallow_out_120_150(:,10)<-120))/n_shallow_out_120_150;
shallow_out_prob_120_150_180_150 = length(shallow_out_120_150(shallow_out_120_150(:,10)>=-180 & shallow_out_120_150(:,10)<-150))/n_shallow_out_120_150;
shallow_out_prob_120_150 = [shallow_out_prob_120_150_0_30 shallow_out_prob_120_150_30_60 shallow_out_prob_120_150_60_90 shallow_out_prob_120_150_90_120...
    shallow_out_prob_120_150_120_150 shallow_out_prob_120_150_150_180 shallow_out_prob_120_150_30_0 shallow_out_prob_120_150_60_30...
    shallow_out_prob_120_150_90_60 shallow_out_prob_120_150_120_90 shallow_out_prob_120_150_150_120 shallow_out_prob_120_150_180_150];

n_shallow_out_150_180 = length(shallow_out_150_180(:,10));
shallow_out_prob_150_180_0_30 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=0 & shallow_out_150_180(:,10)<30))/n_shallow_out_150_180;
shallow_out_prob_150_180_30_60 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=30 & shallow_out_150_180(:,10)<60))/n_shallow_out_150_180;
shallow_out_prob_150_180_60_90 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=60 & shallow_out_150_180(:,10)<90))/n_shallow_out_150_180;
shallow_out_prob_150_180_90_120 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=90 & shallow_out_150_180(:,10)<120))/n_shallow_out_150_180;
shallow_out_prob_150_180_120_150 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=120 & shallow_out_150_180(:,10)<150))/n_shallow_out_150_180;
shallow_out_prob_150_180_150_180 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=150 & shallow_out_150_180(:,10)<180))/n_shallow_out_150_180;
shallow_out_prob_150_180_30_0 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=-30 & shallow_out_150_180(:,10)<0))/n_shallow_out_150_180;
shallow_out_prob_150_180_60_30 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=-60 & shallow_out_150_180(:,10)<-30))/n_shallow_out_150_180;
shallow_out_prob_150_180_90_60 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=-90 & shallow_out_150_180(:,10)<-60))/n_shallow_out_150_180;
shallow_out_prob_150_180_120_90 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=-120 & shallow_out_150_180(:,10)<-90))/n_shallow_out_150_180;
shallow_out_prob_150_180_150_120 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=-150 & shallow_out_150_180(:,10)<-120))/n_shallow_out_150_180;
shallow_out_prob_150_180_180_150 = length(shallow_out_150_180(shallow_out_150_180(:,10)>=-180 & shallow_out_150_180(:,10)<-150))/n_shallow_out_150_180;
shallow_out_prob_150_180 = [shallow_out_prob_150_180_0_30 shallow_out_prob_150_180_30_60 shallow_out_prob_150_180_60_90 shallow_out_prob_150_180_90_120...
    shallow_out_prob_150_180_120_150 shallow_out_prob_150_180_150_180 shallow_out_prob_150_180_30_0 shallow_out_prob_150_180_60_30...
    shallow_out_prob_150_180_90_60 shallow_out_prob_150_180_120_90 shallow_out_prob_150_180_150_120 shallow_out_prob_150_180_180_150];

n_shallow_out_30_0 = length(shallow_out_30_0(:,10));
shallow_out_prob_30_0_0_30 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=0 & shallow_out_30_0(:,10)<30))/n_shallow_out_30_0;
shallow_out_prob_30_0_30_60 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=30 & shallow_out_30_0(:,10)<60))/n_shallow_out_30_0;
shallow_out_prob_30_0_60_90 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=60 & shallow_out_30_0(:,10)<90))/n_shallow_out_30_0;
shallow_out_prob_30_0_90_120 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=90 & shallow_out_30_0(:,10)<120))/n_shallow_out_30_0;
shallow_out_prob_30_0_120_150 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=120 & shallow_out_30_0(:,10)<150))/n_shallow_out_30_0;
shallow_out_prob_30_0_150_180 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=150 & shallow_out_30_0(:,10)<180))/n_shallow_out_30_0;
shallow_out_prob_30_0_30_0 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=-30 & shallow_out_30_0(:,10)<0))/n_shallow_out_30_0;
shallow_out_prob_30_0_60_30 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=-60 & shallow_out_30_0(:,10)<-30))/n_shallow_out_30_0;
shallow_out_prob_30_0_90_60 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=-90 & shallow_out_30_0(:,10)<-60))/n_shallow_out_30_0;
shallow_out_prob_30_0_120_90 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=-120 & shallow_out_30_0(:,10)<-90))/n_shallow_out_30_0;
shallow_out_prob_30_0_150_120 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=-150 & shallow_out_30_0(:,10)<-120))/n_shallow_out_30_0;
shallow_out_prob_30_0_180_150 = length(shallow_out_30_0(shallow_out_30_0(:,10)>=-180 & shallow_out_30_0(:,10)<-150))/n_shallow_out_30_0;
shallow_out_prob_30_0 = [shallow_out_prob_30_0_0_30 shallow_out_prob_30_0_30_60 shallow_out_prob_30_0_60_90 shallow_out_prob_30_0_90_120...
    shallow_out_prob_30_0_120_150 shallow_out_prob_30_0_150_180 shallow_out_prob_30_0_30_0 shallow_out_prob_30_0_60_30...
    shallow_out_prob_30_0_90_60 shallow_out_prob_30_0_120_90 shallow_out_prob_30_0_150_120 shallow_out_prob_30_0_180_150];

n_shallow_out_60_30 = length(shallow_out_60_30(:,10));
shallow_out_prob_60_30_0_30 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=0 & shallow_out_60_30(:,10)<30))/n_shallow_out_60_30;
shallow_out_prob_60_30_30_60 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=30 & shallow_out_60_30(:,10)<60))/n_shallow_out_60_30;
shallow_out_prob_60_30_60_90 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=60 & shallow_out_60_30(:,10)<90))/n_shallow_out_60_30;
shallow_out_prob_60_30_90_120 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=90 & shallow_out_60_30(:,10)<120))/n_shallow_out_60_30;
shallow_out_prob_60_30_120_150 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=120 & shallow_out_60_30(:,10)<150))/n_shallow_out_60_30;
shallow_out_prob_60_30_150_180 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=150 & shallow_out_60_30(:,10)<180))/n_shallow_out_60_30;
shallow_out_prob_60_30_30_0 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=-30 & shallow_out_60_30(:,10)<0))/n_shallow_out_60_30;
shallow_out_prob_60_30_60_30 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=-60 & shallow_out_60_30(:,10)<-30))/n_shallow_out_60_30;
shallow_out_prob_60_30_90_60 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=-90 & shallow_out_60_30(:,10)<-60))/n_shallow_out_60_30;
shallow_out_prob_60_30_120_90 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=-120 & shallow_out_60_30(:,10)<-90))/n_shallow_out_60_30;
shallow_out_prob_60_30_150_120 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=-150 & shallow_out_60_30(:,10)<-120))/n_shallow_out_60_30;
shallow_out_prob_60_30_180_150 = length(shallow_out_60_30(shallow_out_60_30(:,10)>=-180 & shallow_out_60_30(:,10)<-150))/n_shallow_out_60_30;
shallow_out_prob_60_30 = [shallow_out_prob_60_30_0_30 shallow_out_prob_60_30_30_60 shallow_out_prob_60_30_60_90 shallow_out_prob_60_30_90_120...
    shallow_out_prob_60_30_120_150 shallow_out_prob_60_30_150_180 shallow_out_prob_60_30_30_0 shallow_out_prob_60_30_60_30...
    shallow_out_prob_60_30_90_60 shallow_out_prob_60_30_120_90 shallow_out_prob_60_30_150_120 shallow_out_prob_60_30_180_150];

n_shallow_out_90_60 = length(shallow_out_90_60(:,10));
shallow_out_prob_90_60_0_30 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=0 & shallow_out_90_60(:,10)<30))/n_shallow_out_90_60;
shallow_out_prob_90_60_30_60 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=30 & shallow_out_90_60(:,10)<60))/n_shallow_out_90_60;
shallow_out_prob_90_60_60_90 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=60 & shallow_out_90_60(:,10)<90))/n_shallow_out_90_60;
shallow_out_prob_90_60_90_120 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=90 & shallow_out_90_60(:,10)<120))/n_shallow_out_90_60;
shallow_out_prob_90_60_120_150 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=120 & shallow_out_90_60(:,10)<150))/n_shallow_out_90_60;
shallow_out_prob_90_60_150_180 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=150 & shallow_out_90_60(:,10)<180))/n_shallow_out_90_60;
shallow_out_prob_90_60_30_0 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=-30 & shallow_out_90_60(:,10)<0))/n_shallow_out_90_60;
shallow_out_prob_90_60_60_30 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=-60 & shallow_out_90_60(:,10)<-30))/n_shallow_out_90_60;
shallow_out_prob_90_60_90_60 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=-90 & shallow_out_90_60(:,10)<-60))/n_shallow_out_90_60;
shallow_out_prob_90_60_120_90 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=-120 & shallow_out_90_60(:,10)<-90))/n_shallow_out_90_60;
shallow_out_prob_90_60_150_120 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=-150 & shallow_out_90_60(:,10)<-120))/n_shallow_out_90_60;
shallow_out_prob_90_60_180_150 = length(shallow_out_90_60(shallow_out_90_60(:,10)>=-180 & shallow_out_90_60(:,10)<-150))/n_shallow_out_90_60;
shallow_out_prob_90_60 = [shallow_out_prob_90_60_0_30 shallow_out_prob_90_60_30_60 shallow_out_prob_90_60_60_90 shallow_out_prob_90_60_90_120...
    shallow_out_prob_90_60_120_150 shallow_out_prob_90_60_150_180 shallow_out_prob_90_60_30_0 shallow_out_prob_90_60_60_30...
    shallow_out_prob_90_60_90_60 shallow_out_prob_90_60_120_90 shallow_out_prob_90_60_150_120 shallow_out_prob_90_60_180_150];

n_shallow_out_120_90 = length(shallow_out_120_90(:,10));
shallow_out_prob_120_90_0_30 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=0 & shallow_out_120_90(:,10)<30))/n_shallow_out_120_90;
shallow_out_prob_120_90_30_60 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=30 & shallow_out_120_90(:,10)<60))/n_shallow_out_120_90;
shallow_out_prob_120_90_60_90 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=60 & shallow_out_120_90(:,10)<90))/n_shallow_out_120_90;
shallow_out_prob_120_90_90_120 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=90 & shallow_out_120_90(:,10)<120))/n_shallow_out_120_90;
shallow_out_prob_120_90_120_150 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=120 & shallow_out_120_90(:,10)<150))/n_shallow_out_120_90;
shallow_out_prob_120_90_150_180 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=150 & shallow_out_120_90(:,10)<180))/n_shallow_out_120_90;
shallow_out_prob_120_90_30_0 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=-30 & shallow_out_120_90(:,10)<0))/n_shallow_out_120_90;
shallow_out_prob_120_90_60_30 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=-60 & shallow_out_120_90(:,10)<-30))/n_shallow_out_120_90;
shallow_out_prob_120_90_90_60 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=-90 & shallow_out_120_90(:,10)<-60))/n_shallow_out_120_90;
shallow_out_prob_120_90_120_90 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=-120 & shallow_out_120_90(:,10)<-90))/n_shallow_out_120_90;
shallow_out_prob_120_90_150_120 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=-150 & shallow_out_120_90(:,10)<-120))/n_shallow_out_120_90;
shallow_out_prob_120_90_180_150 = length(shallow_out_120_90(shallow_out_120_90(:,10)>=-180 & shallow_out_120_90(:,10)<-150))/n_shallow_out_120_90;
shallow_out_prob_120_90 = [shallow_out_prob_120_90_0_30 shallow_out_prob_120_90_30_60 shallow_out_prob_120_90_60_90 shallow_out_prob_120_90_90_120...
    shallow_out_prob_120_90_120_150 shallow_out_prob_120_90_150_180 shallow_out_prob_120_90_30_0 shallow_out_prob_120_90_60_30...
    shallow_out_prob_120_90_90_60 shallow_out_prob_120_90_120_90 shallow_out_prob_120_90_150_120 shallow_out_prob_120_90_180_150];

n_shallow_out_150_120 = length(shallow_out_150_120(:,10));
shallow_out_prob_150_120_0_30 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=0 & shallow_out_150_120(:,10)<30))/n_shallow_out_150_120;
shallow_out_prob_150_120_30_60 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=30 & shallow_out_150_120(:,10)<60))/n_shallow_out_150_120;
shallow_out_prob_150_120_60_90 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=60 & shallow_out_150_120(:,10)<90))/n_shallow_out_150_120;
shallow_out_prob_150_120_90_120 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=90 & shallow_out_150_120(:,10)<120))/n_shallow_out_150_120;
shallow_out_prob_150_120_120_150 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=120 & shallow_out_150_120(:,10)<150))/n_shallow_out_150_120;
shallow_out_prob_150_120_150_180 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=150 & shallow_out_150_120(:,10)<180))/n_shallow_out_150_120;
shallow_out_prob_150_120_30_0 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=-30 & shallow_out_150_120(:,10)<0))/n_shallow_out_150_120;
shallow_out_prob_150_120_60_30 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=-60 & shallow_out_150_120(:,10)<-30))/n_shallow_out_150_120;
shallow_out_prob_150_120_90_60 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=-90 & shallow_out_150_120(:,10)<-60))/n_shallow_out_150_120;
shallow_out_prob_150_120_120_90 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=-120 & shallow_out_150_120(:,10)<-90))/n_shallow_out_150_120;
shallow_out_prob_150_120_150_120 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=-150 & shallow_out_150_120(:,10)<-120))/n_shallow_out_150_120;
shallow_out_prob_150_120_180_150 = length(shallow_out_150_120(shallow_out_150_120(:,10)>=-180 & shallow_out_150_120(:,10)<-150))/n_shallow_out_150_120;
shallow_out_prob_150_120 = [shallow_out_prob_150_120_0_30 shallow_out_prob_150_120_30_60 shallow_out_prob_150_120_60_90 shallow_out_prob_150_120_90_120...
    shallow_out_prob_150_120_120_150 shallow_out_prob_150_120_150_180 shallow_out_prob_150_120_30_0 shallow_out_prob_150_120_60_30...
    shallow_out_prob_150_120_90_60 shallow_out_prob_150_120_120_90 shallow_out_prob_150_120_150_120 shallow_out_prob_150_120_180_150];

n_shallow_out_180_150 = length(shallow_out_180_150(:,10));
shallow_out_prob_180_150_0_30 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=0 & shallow_out_180_150(:,10)<30))/n_shallow_out_180_150;
shallow_out_prob_180_150_30_60 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=30 & shallow_out_180_150(:,10)<60))/n_shallow_out_180_150;
shallow_out_prob_180_150_60_90 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=60 & shallow_out_180_150(:,10)<90))/n_shallow_out_180_150;
shallow_out_prob_180_150_90_120 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=90 & shallow_out_180_150(:,10)<120))/n_shallow_out_180_150;
shallow_out_prob_180_150_120_150 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=120 & shallow_out_180_150(:,10)<150))/n_shallow_out_180_150;
shallow_out_prob_180_150_150_180 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=150 & shallow_out_180_150(:,10)<180))/n_shallow_out_180_150;
shallow_out_prob_180_150_30_0 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=-30 & shallow_out_180_150(:,10)<0))/n_shallow_out_180_150;
shallow_out_prob_180_150_60_30 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=-60 & shallow_out_180_150(:,10)<-30))/n_shallow_out_180_150;
shallow_out_prob_180_150_90_60 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=-90 & shallow_out_180_150(:,10)<-60))/n_shallow_out_180_150;
shallow_out_prob_180_150_120_90 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=-120 & shallow_out_180_150(:,10)<-90))/n_shallow_out_180_150;
shallow_out_prob_180_150_150_120 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=-150 & shallow_out_180_150(:,10)<-120))/n_shallow_out_180_150;
shallow_out_prob_180_150_180_150 = length(shallow_out_180_150(shallow_out_180_150(:,10)>=-180 & shallow_out_180_150(:,10)<-150))/n_shallow_out_180_150;
shallow_out_prob_180_150 = [shallow_out_prob_180_150_0_30 shallow_out_prob_180_150_30_60 shallow_out_prob_180_150_60_90 shallow_out_prob_180_150_90_120...
    shallow_out_prob_180_150_120_150 shallow_out_prob_180_150_150_180 shallow_out_prob_180_150_30_0 shallow_out_prob_180_150_60_30...
    shallow_out_prob_180_150_90_60 shallow_out_prob_180_150_120_90 shallow_out_prob_180_150_150_120 shallow_out_prob_180_150_180_150];

shallow_out_prob = [shallow_out_prob_0_30 ; shallow_out_prob_30_60 ; shallow_out_prob_60_90 ; shallow_out_prob_90_120 ; shallow_out_prob_120_150 ; shallow_out_prob_150_180...
    ;shallow_out_prob_30_0 ; shallow_out_prob_60_30 ; shallow_out_prob_90_60 ; shallow_out_prob_120_90 ; shallow_out_prob_150_120 ; shallow_out_prob_180_150];

shallow_out_prob = [shallow_out_prob(6:-1:1,:);shallow_out_prob(7:12,:)];        
shallow_out_prob = [shallow_out_prob(:,6:-1:1) shallow_out_prob(:,7:12)]';

shallow_prob_bias = NaN(2,12);
shallow_prob_bias(1,1) = nansum(shallow_out_prob(8:12,1));
shallow_prob_bias(2,1) = nansum(shallow_out_prob(2:6,1));
shallow_prob_bias(1,2) = nansum(shallow_out_prob(1,2)) + nansum(shallow_out_prob(9:12,2));
shallow_prob_bias(2,2) = nansum(shallow_out_prob(3:7,2));
shallow_prob_bias(1,3) = nansum(shallow_out_prob(1:2,3)) + nansum(shallow_out_prob(10:12,3));
shallow_prob_bias(2,3) = nansum(shallow_out_prob(4:8,3));
shallow_prob_bias(1,4) = nansum(shallow_out_prob(1:3,4)) + nansum(shallow_out_prob(11:12,4));
shallow_prob_bias(2,4) = nansum(shallow_out_prob(5:9,4));
shallow_prob_bias(1,5) = nansum(shallow_out_prob(1:4,5)) + nansum(shallow_out_prob(12,5));
shallow_prob_bias(2,5) = nansum(shallow_out_prob(6:10,5));
shallow_prob_bias(1,6) = nansum(shallow_out_prob(1:5,6));
shallow_prob_bias(2,6) = nansum(shallow_out_prob(7:11,6));
shallow_prob_bias(1,7) = nansum(shallow_out_prob(8:12,7));
shallow_prob_bias(2,7) = nansum(shallow_out_prob(2:6,7));
shallow_prob_bias(1,8) = nansum(shallow_out_prob(1,8)) + nansum(shallow_out_prob(9:12,8));
shallow_prob_bias(2,8) = nansum(shallow_out_prob(3:7,8));
shallow_prob_bias(1,9) = nansum(shallow_out_prob(1:2,9)) + nansum(shallow_out_prob(10:12,9));
shallow_prob_bias(2,9) = nansum(shallow_out_prob(4:8,9));
shallow_prob_bias(1,10) = nansum(shallow_out_prob(1:3,10)) + nansum(shallow_out_prob(11:12,10));
shallow_prob_bias(2,10) = nansum(shallow_out_prob(5:9,10));
shallow_prob_bias(1,11) = nansum(shallow_out_prob(1:4,11)) + nansum(shallow_out_prob(12,11));
shallow_prob_bias(2,11) = nansum(shallow_out_prob(6:10,11));
shallow_prob_bias(1,12) = nansum(shallow_out_prob(1:5,12));
shallow_prob_bias(2,12) = nansum(shallow_out_prob(7:11,12));

shallow_prob_Bias = NaN(2,6);
shallow_prob_Bias(1,1) = (shallow_prob_bias(1,1)+shallow_prob_bias(1,12))/2;
shallow_prob_Bias(1,2) = (shallow_prob_bias(1,2)+shallow_prob_bias(1,11))/2;
shallow_prob_Bias(1,3) = (shallow_prob_bias(1,3)+shallow_prob_bias(1,10))/2;
shallow_prob_Bias(1,4) = (shallow_prob_bias(1,4)+shallow_prob_bias(1,9))/2;
shallow_prob_Bias(1,5) = (shallow_prob_bias(1,5)+shallow_prob_bias(1,8))/2;
shallow_prob_Bias(1,6) = (shallow_prob_bias(1,6)+shallow_prob_bias(1,7))/2;
shallow_prob_Bias(2,1) = (shallow_prob_bias(2,1)+shallow_prob_bias(2,12))/2;
shallow_prob_Bias(2,2) = (shallow_prob_bias(2,2)+shallow_prob_bias(2,11))/2;
shallow_prob_Bias(2,3) = (shallow_prob_bias(2,3)+shallow_prob_bias(2,10))/2;
shallow_prob_Bias(2,4) = (shallow_prob_bias(2,4)+shallow_prob_bias(2,9))/2;
shallow_prob_Bias(2,5) = (shallow_prob_bias(2,5)+shallow_prob_bias(2,8))/2;
shallow_prob_Bias(2,6) = (shallow_prob_bias(2,6)+shallow_prob_bias(2,7))/2;


%% Data output
prob_data= [omega_prob_Bias zeros(2,1) nanmean(omega_prob_Bias')'; zeros(1,8);
    reversal_prob_Bias zeros(2,1) nanmean(reversal_prob_Bias')'; zeros(1,8);
    revturn_prob_Bias zeros(2,1) nanmean(revturn_prob_Bias')'; zeros(1,8);
    shallow_prob_Bias zeros(2,1) nanmean(shallow_prob_Bias')'];