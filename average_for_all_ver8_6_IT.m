AllStruct = dir('*IT.csv');
L=length(AllStruct);
  
Fraction_IT_T_0_1800 = NaN(L,10);
Frequency_IT_T_0_1800 = NaN(L,10);
Duration_IT_T_0_1800 = NaN(L,10);

for k=1:L
  AllArray_each = load(AllStruct(k,:).name);

  Fraction_IT_T_0_1800(k,:) = AllArray_each(1,:);
  Frequency_IT_T_0_1800(k,:) = AllArray_each(2,:);
  Duration_IT_T_0_1800(k,:) = AllArray_each(3,:);
end

ITArray_nanmean = [nanmean(Fraction_IT_T_0_1800); nanmean(Frequency_IT_T_0_1800); nanmean(Duration_IT_T_0_1800)];
ITArray_nanstd = [nanstd(Fraction_IT_T_0_1800,0,1)./sqrt(L); nanstd(Frequency_IT_T_0_1800,0,1)./sqrt(L); nanstd(Duration_IT_T_0_1800,0,1)./sqrt(L)];
ITArray = [ITArray_nanmean zeros(3,2) ITArray_nanstd];

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'IT_ave_sem','.csv'];
csvwrite(dateAndtime, ITArray);