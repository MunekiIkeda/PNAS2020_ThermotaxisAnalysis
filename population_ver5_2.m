datFiles = dir('*region*.dat');
numfiles = length(datFiles);
mydata = cell(1,numfiles);

for I = 1:numfiles
  mydata{I} = dlmread(datFiles(I).name);
end

population_all = NaN(60,numfiles+2);
TTXindex_all = NaN(60,1);
Dispersionindex_all = NaN(60,1);

for H = 1:numfiles;
  XY = cell2mat(mydata(1,H));
  time = XY(:,1); 
  N = XY(:,2);
  
  for T = 1:60
      population_all(T,H) = mean(N(time>60*(T-1) & time<=60*T));
  end
end

n_all = nansum(population_all,2);

for I = 1:60
  TTXindex_all(I) = (1*population_all(I,1)+2*population_all(I,2)+3*population_all(I,3)+4*population_all(I,4)...      
      +5*population_all(I,5)+6*population_all(I,6)+7*population_all(I,7)+8*population_all(I,8))/n_all(I);
  Dispersionindex_all(I) = (4*population_all(I,1)+3*population_all(I,2)+2*population_all(I,3)+1*population_all(I,4)...      
      +1*population_all(I,5)+2*population_all(I,6)+3*population_all(I,7)+4*population_all(I,8))/n_all(I);
  population_all(I,:) = population_all(I,:)./n_all(I);
  population_all(I,9) = TTXindex_all(I);
  population_all(I,10) = Dispersionindex_all(I);
end

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'population','.csv'];
csvwrite(dateAndtime, population_all);