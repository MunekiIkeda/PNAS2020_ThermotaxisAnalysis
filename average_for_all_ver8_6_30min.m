AllStruct = dir('*freq_prob.csv');
L=length(AllStruct);
  
omega_array_direction_0_1800 = NaN(L,16); 
reversal_array_direction_0_1800 = NaN(L,16);   
revturn_array_direction_0_1800 = NaN(L,16);  
shallow_array_direction_0_1800 = NaN(L,16);   
curve_array_direction_0_1800 = NaN(L,16);
speed_array_direction_0_1800 = NaN(L,16); 
Fraction_IT_T_0_1800 = NaN(L,16);
Frequency_IT_T_0_1800 = NaN(L,16);
Duration_IT_T_0_1800 = NaN(L,16);

for k=1:L
  AllArray_each = load(AllStruct(k,:).name);
  
  omega_array_direction_0_1800(k,:) = AllArray_each(1,:);
  reversal_array_direction_0_1800(k,:) = AllArray_each(2,:);
  revturn_array_direction_0_1800(k,:) = AllArray_each(3,:);
  shallow_array_direction_0_1800(k,:) = AllArray_each(4,:);
  curve_array_direction_0_1800(k,:) = AllArray_each(5,:);
  speed_array_direction_0_1800(k,:) = AllArray_each(6,:);
  Fraction_IT_T_0_1800(k,:) = AllArray_each(7,:);
  Frequency_IT_T_0_1800(k,:) = AllArray_each(8,:);
  Duration_IT_T_0_1800(k,:) = AllArray_each(9,:);
end


AllArray_nanmean = [nanmean(omega_array_direction_0_1800); nanmean(reversal_array_direction_0_1800); nanmean(revturn_array_direction_0_1800);
    nanmean(shallow_array_direction_0_1800); nanmean(curve_array_direction_0_1800); nanmean(speed_array_direction_0_1800);
    nanmean(Fraction_IT_T_0_1800); nanmean(Frequency_IT_T_0_1800); nanmean(Duration_IT_T_0_1800)];

AllArray_nanstd = [nanstd(omega_array_direction_0_1800,0,1)./sqrt(L); nanstd(reversal_array_direction_0_1800,0,1)./sqrt(L); 
    nanstd(revturn_array_direction_0_1800,0,1)./sqrt(L); nanstd(shallow_array_direction_0_1800,0,1)./sqrt(L);
    nanstd(curve_array_direction_0_1800,0,1)./sqrt(L); nanstd(speed_array_direction_0_1800,0,1)./sqrt(L);
    nanstd(Fraction_IT_T_0_1800,0,1)./sqrt(L); nanstd(Frequency_IT_T_0_1800,0,1)./sqrt(L); nanstd(Duration_IT_T_0_1800,0,1)./sqrt(L)];

AllArray = [AllArray_nanmean zeros(9,2) AllArray_nanstd];
AllArray2 = [AllArray(:,1:6) zeros(9,1) AllArray(:,19:24) zeros(9,2) AllArray(:,8:13) zeros(9,1) AllArray(:,26:31)];

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'freq_prob_ave_sem','.csv'];
csvwrite(dateAndtime, AllArray2);