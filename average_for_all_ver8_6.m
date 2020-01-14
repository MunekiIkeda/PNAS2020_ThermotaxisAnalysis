AllStruct = dir('*freq_prob_all.csv');
L=length(AllStruct);
  
omega_array_direction_0_600 = NaN(L,16); 
omega_array_direction_600_1200 = NaN(L,16); 
omega_array_direction_1200_1800 = NaN(L,16);  
omega_array_direction_1800_2400 = NaN(L,16); 
omega_array_direction_2400_3000 = NaN(L,16);  
omega_array_direction_3000_3600 = NaN(L,16);

reversal_array_direction_0_600 = NaN(L,16); 
reversal_array_direction_600_1200 = NaN(L,16);  
reversal_array_direction_1200_1800 = NaN(L,16); 
reversal_array_direction_1800_2400 = NaN(L,16);  
reversal_array_direction_2400_3000 = NaN(L,16);  
reversal_array_direction_3000_3600 = NaN(L,16); 
  
revturn_array_direction_0_600 = NaN(L,16);  
revturn_array_direction_600_1200 = NaN(L,16);  
revturn_array_direction_1200_1800 = NaN(L,16); 
revturn_array_direction_1800_2400 = NaN(L,16);
revturn_array_direction_2400_3000 = NaN(L,16); 
revturn_array_direction_3000_3600 = NaN(L,16); 

shallow_array_direction_0_600 = NaN(L,16);  
shallow_array_direction_600_1200 = NaN(L,16);  
shallow_array_direction_1200_1800 = NaN(L,16); 
shallow_array_direction_1800_2400 = NaN(L,16);
shallow_array_direction_2400_3000 = NaN(L,16); 
shallow_array_direction_3000_3600 = NaN(L,16);  
    
curve_array_direction_0_600 = NaN(L,16);
curve_array_direction_600_1200 = NaN(L,16); 
curve_array_direction_1200_1800 = NaN(L,16); 
curve_array_direction_1800_2400 = NaN(L,16);  
curve_array_direction_2400_3000 = NaN(L,16);  
curve_array_direction_3000_3600 = NaN(L,16);
  
speed_array_direction_0_600 = NaN(L,16); 
speed_array_direction_600_1200 = NaN(L,16);  
speed_array_direction_1200_1800 = NaN(L,16); 
speed_array_direction_1800_2400 = NaN(L,16);  
speed_array_direction_2400_3000 = NaN(L,16); 
speed_array_direction_3000_3600 = NaN(L,16); 

Fraction_IT_T_0_600 = NaN(L,16); 
Fraction_IT_T_600_1200 = NaN(L,16);  
Fraction_IT_T_1200_1800 = NaN(L,16); 
Fraction_IT_T_1800_2400 = NaN(L,16);  
Fraction_IT_T_2400_3000 = NaN(L,16); 
Fraction_IT_T_3000_3600 = NaN(L,16);

Frequency_IT_T_0_600 = NaN(L,16); 
Frequency_IT_T_600_1200 = NaN(L,16);  
Frequency_IT_T_1200_1800 = NaN(L,16); 
Frequency_IT_T_1800_2400 = NaN(L,16);  
Frequency_IT_T_2400_3000 = NaN(L,16); 
Frequency_IT_T_3000_3600 = NaN(L,16);

Duration_IT_T_0_600 = NaN(L,16); 
Duration_IT_T_600_1200 = NaN(L,16);  
Duration_IT_T_1200_1800 = NaN(L,16); 
Duration_IT_T_1800_2400 = NaN(L,16);  
Duration_IT_T_2400_3000 = NaN(L,16); 
Duration_IT_T_3000_3600 = NaN(L,16);

for k=1:L
  AllArray_each = load(AllStruct(k,:).name);
  
  omega_array_direction_0_600(k,:) = AllArray_each(1,:);
  omega_array_direction_600_1200(k,:) = AllArray_each(2,:);
  omega_array_direction_1200_1800(k,:) = AllArray_each(3,:);
  omega_array_direction_1800_2400(k,:) = AllArray_each(4,:);
  omega_array_direction_2400_3000(k,:) = AllArray_each(5,:);
  omega_array_direction_3000_3600(k,:) = AllArray_each(6,:);

  reversal_array_direction_0_600(k,:) = AllArray_each(8,:);
  reversal_array_direction_600_1200(k,:) = AllArray_each(9,:);
  reversal_array_direction_1200_1800(k,:) = AllArray_each(10,:);
  reversal_array_direction_1800_2400(k,:) = AllArray_each(11,:);
  reversal_array_direction_2400_3000(k,:) = AllArray_each(12,:);
  reversal_array_direction_3000_3600(k,:) = AllArray_each(13,:);
  
  revturn_array_direction_0_600(k,:) = AllArray_each(15,:);
  revturn_array_direction_600_1200(k,:) = AllArray_each(16,:);
  revturn_array_direction_1200_1800(k,:) = AllArray_each(17,:);
  revturn_array_direction_1800_2400(k,:) = AllArray_each(18,:);
  revturn_array_direction_2400_3000(k,:) = AllArray_each(19,:);
  revturn_array_direction_3000_3600(k,:) = AllArray_each(20,:);

  shallow_array_direction_0_600(k,:) = AllArray_each(22,:);
  shallow_array_direction_600_1200(k,:) = AllArray_each(23,:);
  shallow_array_direction_1200_1800(k,:) = AllArray_each(24,:);
  shallow_array_direction_1800_2400(k,:) = AllArray_each(25,:);
  shallow_array_direction_2400_3000(k,:) = AllArray_each(26,:);
  shallow_array_direction_3000_3600(k,:) = AllArray_each(27,:);
  
  curve_array_direction_0_600(k,:) = AllArray_each(29,:);
  curve_array_direction_600_1200(k,:) = AllArray_each(30,:);
  curve_array_direction_1200_1800(k,:) = AllArray_each(31,:);
  curve_array_direction_1800_2400(k,:) = AllArray_each(32,:);
  curve_array_direction_2400_3000(k,:) = AllArray_each(33,:);
  curve_array_direction_3000_3600(k,:) = AllArray_each(34,:);
  
  speed_array_direction_0_600(k,:) = AllArray_each(36,:);
  speed_array_direction_600_1200(k,:) = AllArray_each(37,:);
  speed_array_direction_1200_1800(k,:) = AllArray_each(38,:);
  speed_array_direction_1800_2400(k,:) = AllArray_each(39,:);
  speed_array_direction_2400_3000(k,:) = AllArray_each(40,:);
  speed_array_direction_3000_3600(k,:) = AllArray_each(41,:);

  Fraction_IT_T_0_600(k,:) = AllArray_each(43,:);
  Fraction_IT_T_600_1200(k,:) = AllArray_each(44,:);
  Fraction_IT_T_1200_1800(k,:) = AllArray_each(45,:);
  Fraction_IT_T_1800_2400(k,:) = AllArray_each(46,:);
  Fraction_IT_T_2400_3000(k,:) = AllArray_each(47,:);
  Fraction_IT_T_3000_3600(k,:) = AllArray_each(48,:);
  
  Frequency_IT_T_0_600(k,:) = AllArray_each(50,:);
  Frequency_IT_T_600_1200(k,:) = AllArray_each(51,:);
  Frequency_IT_T_1200_1800(k,:) = AllArray_each(52,:);
  Frequency_IT_T_1800_2400(k,:) = AllArray_each(53,:);
  Frequency_IT_T_2400_3000(k,:) = AllArray_each(54,:);
  Frequency_IT_T_3000_3600(k,:) = AllArray_each(55,:);
  
  Duration_IT_T_0_600(k,:) = AllArray_each(57,:);
  Duration_IT_T_600_1200(k,:) = AllArray_each(58,:);
  Duration_IT_T_1200_1800(k,:) = AllArray_each(59,:);
  Duration_IT_T_1800_2400(k,:) = AllArray_each(60,:);
  Duration_IT_T_2400_3000(k,:) = AllArray_each(61,:);
  Duration_IT_T_3000_3600(k,:) = AllArray_each(62,:);
end


AllArray_nanmean = [nanmean(omega_array_direction_0_600) ; nanmean(omega_array_direction_600_1200) ; nanmean(omega_array_direction_1200_1800) ; 
    nanmean(omega_array_direction_1800_2400) ; nanmean(omega_array_direction_2400_3000) ; nanmean(omega_array_direction_3000_3600) ; zeros(1,16) ;
    nanmean(reversal_array_direction_0_600) ; nanmean(reversal_array_direction_600_1200) ; nanmean(reversal_array_direction_1200_1800) ; 
    nanmean(reversal_array_direction_1800_2400) ; nanmean(reversal_array_direction_2400_3000) ; nanmean(reversal_array_direction_3000_3600) ; zeros(1,16) ;
    nanmean(revturn_array_direction_0_600) ; nanmean(revturn_array_direction_600_1200) ; nanmean(revturn_array_direction_1200_1800) ; 
    nanmean(revturn_array_direction_1800_2400) ; nanmean(revturn_array_direction_2400_3000) ; nanmean(revturn_array_direction_3000_3600) ; zeros(1,16) ;
    nanmean(shallow_array_direction_0_600) ; nanmean(shallow_array_direction_600_1200) ; nanmean(shallow_array_direction_1200_1800) ; 
    nanmean(shallow_array_direction_1800_2400) ; nanmean(shallow_array_direction_2400_3000) ; nanmean(shallow_array_direction_3000_3600) ; zeros(1,16) ;
    nanmean(curve_array_direction_0_600) ; nanmean(curve_array_direction_600_1200) ; nanmean(curve_array_direction_1200_1800) ; 
    nanmean(curve_array_direction_1800_2400) ; nanmean(curve_array_direction_2400_3000) ; nanmean(curve_array_direction_3000_3600) ; zeros(1,16) ;
    nanmean(speed_array_direction_0_600) ; nanmean(speed_array_direction_600_1200) ; nanmean(speed_array_direction_1200_1800) ; 
    nanmean(speed_array_direction_1800_2400) ; nanmean(speed_array_direction_2400_3000) ; nanmean(speed_array_direction_3000_3600) ; zeros(1,16) ;
    nanmean(Fraction_IT_T_0_600) ; nanmean(Fraction_IT_T_600_1200) ; nanmean(Fraction_IT_T_1200_1800) ;
    nanmean(Fraction_IT_T_1800_2400) ; nanmean(Fraction_IT_T_2400_3000) ; nanmean(Fraction_IT_T_3000_3600) ; zeros(1,16) ;
    nanmean(Frequency_IT_T_0_600) ; nanmean(Frequency_IT_T_600_1200) ; nanmean(Frequency_IT_T_1200_1800) ;
    nanmean(Frequency_IT_T_1800_2400) ; nanmean(Frequency_IT_T_2400_3000) ; nanmean(Frequency_IT_T_3000_3600) ;zeros(1,16) ;
    nanmean(Duration_IT_T_0_600) ; nanmean(Duration_IT_T_600_1200) ; nanmean(Duration_IT_T_1200_1800) ;
    nanmean(Duration_IT_T_1800_2400) ; nanmean(Duration_IT_T_2400_3000) ; nanmean(Duration_IT_T_3000_3600)];

AllArray_nanstd = [nanstd(omega_array_direction_0_600,0,1)./sqrt(L) ; nanstd(omega_array_direction_600_1200,0,1)./sqrt(L) ; nanstd(omega_array_direction_1200_1800,0,1)./sqrt(L) ; 
    nanstd(omega_array_direction_1800_2400,0,1)./sqrt(L) ; nanstd(omega_array_direction_2400_3000,0,1)./sqrt(L) ; nanstd(omega_array_direction_3000_3600,0,1)./sqrt(L) ; zeros(1,16) ;
    nanstd(reversal_array_direction_0_600,0,1)./sqrt(L) ; nanstd(reversal_array_direction_600_1200,0,1)./sqrt(L) ; nanstd(reversal_array_direction_1200_1800,0,1)./sqrt(L) ; 
    nanstd(reversal_array_direction_1800_2400,0,1)./sqrt(L) ; nanstd(reversal_array_direction_2400_3000,0,1)./sqrt(L) ; nanstd(reversal_array_direction_3000_3600,0,1)./sqrt(L) ; zeros(1,16) ;
    nanstd(revturn_array_direction_0_600,0,1)./sqrt(L) ; nanstd(revturn_array_direction_600_1200,0,1)./sqrt(L) ; nanstd(revturn_array_direction_1200_1800,0,1)./sqrt(L) ; 
    nanstd(revturn_array_direction_1800_2400,0,1)./sqrt(L) ; nanstd(revturn_array_direction_2400_3000,0,1)./sqrt(L) ; nanstd(revturn_array_direction_3000_3600,0,1)./sqrt(L) ; zeros(1,16) ;
    nanstd(shallow_array_direction_0_600,0,1)./sqrt(L) ; nanstd(shallow_array_direction_600_1200,0,1)./sqrt(L) ; nanstd(shallow_array_direction_1200_1800,0,1)./sqrt(L) ; 
    nanstd(shallow_array_direction_1800_2400,0,1)./sqrt(L) ; nanstd(shallow_array_direction_2400_3000,0,1)./sqrt(L) ; nanstd(shallow_array_direction_3000_3600,0,1)./sqrt(L) ; zeros(1,16); 
    nanstd(curve_array_direction_0_600,0,1)./sqrt(L) ; nanstd(curve_array_direction_600_1200,0,1)./sqrt(L) ; nanstd(curve_array_direction_1200_1800,0,1)./sqrt(L) ; 
    nanstd(curve_array_direction_1800_2400,0,1)./sqrt(L) ; nanstd(curve_array_direction_2400_3000,0,1)./sqrt(L) ; nanstd(curve_array_direction_3000_3600,0,1)./sqrt(L) ; zeros(1,16) ;
    nanstd(speed_array_direction_0_600,0,1)./sqrt(L) ; nanstd(speed_array_direction_600_1200,0,1)./sqrt(L) ; nanstd(speed_array_direction_1200_1800,0,1)./sqrt(L) ; 
    nanstd(speed_array_direction_1800_2400,0,1)./sqrt(L) ; nanstd(speed_array_direction_2400_3000,0,1)./sqrt(L) ; nanstd(speed_array_direction_3000_3600,0,1)./sqrt(L) ; zeros(1,16) ;
    nanstd(Fraction_IT_T_0_600,0,1)./sqrt(L) ; nanstd(Fraction_IT_T_600_1200,0,1)./sqrt(L) ; nanstd(Fraction_IT_T_1200_1800,0,1)./sqrt(L) ; 
    nanstd(Fraction_IT_T_1800_2400,0,1)./sqrt(L) ; nanstd(Fraction_IT_T_2400_3000,0,1)./sqrt(L) ; nanstd(Fraction_IT_T_3000_3600,0,1)./sqrt(L) ; zeros(1,16) ;
    nanstd(Frequency_IT_T_0_600,0,1)./sqrt(L) ; nanstd(Frequency_IT_T_600_1200,0,1)./sqrt(L) ; nanstd(Frequency_IT_T_1200_1800,0,1)./sqrt(L) ; 
    nanstd(Frequency_IT_T_1800_2400,0,1)./sqrt(L) ; nanstd(Frequency_IT_T_2400_3000,0,1)./sqrt(L) ; nanstd(Frequency_IT_T_3000_3600,0,1)./sqrt(L) ; zeros(1,16) ;
    nanstd(Duration_IT_T_0_600,0,1)./sqrt(L) ; nanstd(Duration_IT_T_600_1200,0,1)./sqrt(L) ; nanstd(Duration_IT_T_1200_1800,0,1)./sqrt(L) ; 
    nanstd(Duration_IT_T_1800_2400,0,1)./sqrt(L) ; nanstd(Duration_IT_T_2400_3000,0,1)./sqrt(L) ; nanstd(Duration_IT_T_3000_3600,0,1)./sqrt(L)];

AllArray = [AllArray_nanmean zeros(62,2) AllArray_nanstd];
AllArray2 = [AllArray(:,1:6) zeros(62,1) AllArray(:,19:24) zeros(62,2) AllArray(:,8:13) zeros(62,1) AllArray(:,26:31)];

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'freq_prob_ave_sem','.csv'];
csvwrite(dateAndtime, AllArray2);

AllArray3 = [AllArray(43:62,1:8) zeros(20,1) AllArray(43:62,19:26)];
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'IT_ave_sem','.csv'];
csvwrite(dateAndtime, AllArray3);


AllArray_sim = [nanmean(omega_array_direction_0_600) nanmean(reversal_array_direction_0_600) nanmean(revturn_array_direction_0_600) nanmean(shallow_array_direction_0_600) nanmean(curve_array_direction_0_600) nanmean(speed_array_direction_0_600);
    nanmean(omega_array_direction_600_1200) nanmean(reversal_array_direction_600_1200) nanmean(revturn_array_direction_600_1200) nanmean(shallow_array_direction_600_1200) nanmean(curve_array_direction_600_1200) nanmean(speed_array_direction_600_1200);
    nanmean(omega_array_direction_1200_1800) nanmean(reversal_array_direction_1200_1800) nanmean(revturn_array_direction_1200_1800) nanmean(shallow_array_direction_1200_1800) nanmean(curve_array_direction_1200_1800) nanmean(speed_array_direction_1200_1800);
    nanmean(omega_array_direction_1800_2400) nanmean(reversal_array_direction_1800_2400) nanmean(revturn_array_direction_1800_2400) nanmean(shallow_array_direction_1800_2400) nanmean(curve_array_direction_1800_2400) nanmean(speed_array_direction_1800_2400);
    nanmean(omega_array_direction_2400_3000) nanmean(reversal_array_direction_2400_3000) nanmean(revturn_array_direction_2400_3000) nanmean(shallow_array_direction_2400_3000) nanmean(curve_array_direction_2400_3000) nanmean(speed_array_direction_2400_3000);
    nanmean(omega_array_direction_3000_3600) nanmean(reversal_array_direction_3000_3600) nanmean(revturn_array_direction_3000_3600) nanmean(shallow_array_direction_3000_3600) nanmean(curve_array_direction_3000_3600) nanmean(speed_array_direction_3000_3600)];

AllArray_sim_freq = [AllArray_sim(:,49:54) AllArray_sim(:,33:38) AllArray_sim(:,17:22) AllArray_sim(:,1:6)];
for I = 1:24
    AllArray_sim_freq2(:,I) = AllArray_sim_freq(:,25-I);
end
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'freq_ave','.csv'];
csvwrite(dateAndtime, AllArray_sim_freq2);

AllArray_sim_freq3 = [AllArray_nanmean(29:34,15) AllArray_nanmean(29:34,15) AllArray_nanmean(29:34,15) AllArray_nanmean(29:34,15) AllArray_nanmean(29:34,15) AllArray_nanmean(29:34,15)...
    AllArray_nanmean(36:41,15) AllArray_nanmean(36:41,15) AllArray_nanmean(36:41,15) AllArray_nanmean(36:41,15) AllArray_nanmean(36:41,15) AllArray_nanmean(36:41,15)...
    AllArray_nanmean(43:48,15) AllArray_nanmean(43:48,15) AllArray_nanmean(43:48,15) AllArray_nanmean(43:48,15) AllArray_nanmean(43:48,15) AllArray_nanmean(43:48,15)...
    AllArray_nanmean(50:55,15) AllArray_nanmean(50:55,15) AllArray_nanmean(50:55,15) AllArray_nanmean(50:55,15) AllArray_nanmean(50:55,15) AllArray_nanmean(50:55,15)];
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'freq_ave_const','.csv'];
csvwrite(dateAndtime, AllArray_sim_freq3);

AllArray_sim_curve = [AllArray_sim(:,65:70)];
for I = 1:6
    AllArray_sim_curve2(:,I) = AllArray_sim_curve(:,7-I);
end
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'curve_ave','.csv'];
csvwrite(dateAndtime, AllArray_sim_curve2);

AllArray_sim_speed = [AllArray_sim(:,81:86)];
for I = 1:6
    AllArray_sim_speed2(:,I) = AllArray_sim_speed(:,7-I);
end
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'speed_ave','.csv'];
csvwrite(dateAndtime, AllArray_sim_speed2);

AllArray_sim_speed3 = [AllArray_nanmean(57:62,15) AllArray_nanmean(57:62,15) AllArray_nanmean(57:62,15) AllArray_nanmean(57:62,15) AllArray_nanmean(57:62,15) AllArray_nanmean(57:62,15)];
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'speed_ave_const','.csv'];
csvwrite(dateAndtime, AllArray_sim_speed3);

AllArray_sim_time_dispersion = [AllArray_sim(:,15:16) AllArray_sim(:,31:32) AllArray_sim(:,47:48) AllArray_sim(:,63:64)];
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'time_dispersion','.csv'];
csvwrite(dateAndtime, AllArray_sim_time_dispersion);