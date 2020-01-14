AllStruct = dir('*population.csv');
L=length(AllStruct);

Region1 = NaN(L,60);
Region2 = NaN(L,60);
Region3 = NaN(L,60);
Region4 = NaN(L,60);
Region5 = NaN(L,60);
Region6 = NaN(L,60);
Region7 = NaN(L,60);
Region8 = NaN(L,60);
TTX = NaN(L,60);
Dispersion = NaN(L,60);

for k=1:L
  PopulationArray_each = load(AllStruct(k,:).name);
  
  Region1(k,:) = PopulationArray_each(:,1)';
  Region2(k,:) = PopulationArray_each(:,2)';
  Region3(k,:) = PopulationArray_each(:,3)';
  Region4(k,:) = PopulationArray_each(:,4)';
  Region5(k,:) = PopulationArray_each(:,5)';
  Region6(k,:) = PopulationArray_each(:,6)';
  Region7(k,:) = PopulationArray_each(:,7)';
  Region8(k,:) = PopulationArray_each(:,8)';
  TTX(k,:) = PopulationArray_each(:,9)';
  Dispersion(k,:) = PopulationArray_each(:,10)';
end

PopulationArray_nanmean = [nanmean(Region1)' nanmean(Region2)' nanmean(Region3)' nanmean(Region4)' ...
    nanmean(Region5)' nanmean(Region6)' nanmean(Region7)' nanmean(Region8)' nanmean(TTX)' nanmean(Dispersion)'];

PopulationArray_nanstd = [nanstd(Region1,0,1)'./sqrt(L) nanstd(Region2,0,1)'./sqrt(L)  ...
    nanstd(Region3,0,1)'./sqrt(L)  nanstd(Region4,0,1)'./sqrt(L)  nanstd(Region5,0,1)'./sqrt(L)  ...
    nanstd(Region6,0,1)'./sqrt(L)  nanstd(Region7,0,1)'./sqrt(L)  nanstd(Region8,0,1)'./sqrt(L)  ...
    nanstd(TTX,0,1)'./sqrt(L)  nanstd(Dispersion,0,1)'./sqrt(L)];

PopulationArray = [PopulationArray_nanmean zeros(60,1) PopulationArray_nanstd];
    
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'population_ave_sem','.csv'];
csvwrite(dateAndtime, PopulationArray);