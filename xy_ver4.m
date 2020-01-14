datFiles = dir('*.dat'); 
numfiles = length(datFiles);
mydata = cell(1, numfiles);

for k = 1:numfiles 
  mydata{k} = dlmread(datFiles(k).name); 
end

Tcent = 17;
Tgrad = 0.5;

txy_all = NaN(13*3600, 3*numfiles);
txy_all2 = NaN(13*3600, 3*numfiles);
xy_all = 10000*ones(13*3600, 2*numfiles);
xy_all2 = 10000*ones(3600, 2*numfiles);
xy_all3 = 10000*ones(3600, 2*numfiles);

Time = NaN(13*3600,1);
for I = 1:13*3600
    Time(I,1) = I;
end
     
for w=1:numfiles
  
  XY=cell2mat(mydata(1,w));
  time=XY(:,1);
  X=XY(:,2);
  Y=XY(:,3); 
  
  framelength = length(time);
  Interval = (time(framelength)-time(1))/framelength;
  interval = round(1/Interval);
  half_interval = round(1/(2*Interval));
  start = time(1,1);
  
  speed = NaN(framelength,1); 
  for I = 1+half_interval:framelength-half_interval;
    vector_in = [X(I)-X(I-half_interval) Y(I)-Y(I-half_interval)];
    vector_out = [X(I+half_interval)-X(I) Y(I+half_interval)-Y(I)];
    speed(I) = (norm(vector_in)+norm(vector_out))/(time(I+half_interval)-time(I-half_interval));
  end
  
  if nanmax(speed)<0.05
      continue
  end
  
  txy_all(1:framelength,3*w-2) = time(1:framelength);
  txy_all(1:framelength,3*w-1) = X(1:framelength);
  txy_all(1:framelength,3*w) = Y(1:framelength); 
  
  if w==1
      txy_all2(1:framelength,1) = txy_all(1:framelength, 1);
      txy_all2(1:framelength,2) = txy_all(1:framelength, 2); 
      txy_all2(1:framelength,3) = txy_all(1:framelength, 3);
      xy_all(1:framelength,1) = txy_all(1:framelength, 2);
      xy_all(1:framelength,2) = txy_all(1:framelength, 3);
  elseif w==2
      %I = Time(find(txy_all2(:,3*w-5)==start));
      I = Time(abs(txy_all2(:,3*w-5)-start)<0.01);
      txy_all2(I:I+framelength-1,3*w-2) = txy_all(1:framelength, 3*w-2);
      txy_all2(I:I+framelength-1,3*w-1) = txy_all(1:framelength, 3*w-1); 
      txy_all2(I:I+framelength-1,3*w) = txy_all(1:framelength, 3*w);
      xy_all(I:I+framelength-1,2*w-1) = txy_all(1:framelength, 3*w-1);
      xy_all(I:I+framelength-1,2*w) = txy_all(1:framelength, 3*w);      
  elseif w>=3
      if Time(abs(txy_all2(:,3*w-5)-start)<0.01) <= 13*3600
          I = Time(abs(txy_all2(:,3*w-5)-start)<0.01);
          txy_all2(I:I+framelength-1,3*w-2) = txy_all(1:framelength, 3*w-2);
          txy_all2(I:I+framelength-1,3*w-1) = txy_all(1:framelength, 3*w-1); 
          txy_all2(I:I+framelength-1,3*w) = txy_all(1:framelength, 3*w);
          xy_all(I:I+framelength-1,2*w-1) = txy_all(1:framelength, 3*w-1);
          xy_all(I:I+framelength-1,2*w) = txy_all(1:framelength, 3*w);
      elseif Time(abs(txy_all2(:,3*w-8)-start)<0.01) <= 13*3600
          I = Time(abs(txy_all2(:,3*w-8)-start)<0.01);
          txy_all2(I:I+framelength-1,3*w-2) = txy_all(1:framelength, 3*w-2);
          txy_all2(I:I+framelength-1,3*w-1) = txy_all(1:framelength, 3*w-1); 
          txy_all2(I:I+framelength-1,3*w) = txy_all(1:framelength, 3*w);
          xy_all(I:I+framelength-1,2*w-1) = txy_all(1:framelength, 3*w-1);
          xy_all(I:I+framelength-1,2*w) = txy_all(1:framelength, 3*w);
      else
          txy_all2(I:I+framelength-1,3*w-2) = txy_all(1:framelength, 3*w-2);
          txy_all2(I:I+framelength-1,3*w-1) = txy_all(1:framelength, 3*w-1); 
          txy_all2(I:I+framelength-1,3*w) = txy_all(1:framelength, 3*w);
          xy_all(I:I+framelength-1,2*w-1) = txy_all(1:framelength, 3*w-1);
          xy_all(I:I+framelength-1,2*w) = txy_all(1:framelength, 3*w);
      end
  end
  
  F=I;
  f=length(time);
end

for I = 1:3600
    xy_all2(I,:) = xy_all(13*I-12,:);
    xy_all3(I,:) = xy_all(round(((F+f-1)/3600)*I),:);
end

%dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'xy_all','.csv'];
%csvwrite(dateAndtime, xy_all3);

Temperature_all = NaN(60, numfiles);
for n = 1:numfiles
    for t = 1:60
        if xy_all3(60*(t-1)+1:60*t, 2*n-1) < 1000
            %Temperature_all(t,n) = Tcent -3 + nanmean(xy_all3(60*(t-1)+1:60*t, 2*n))*6/135.168;
            Temperature_all(t,n) = Tcent + Tgrad*(nanmean(xy_all3(60*(t-1)+1:60*t, 2*n))-(135.168/2))/10;
        end
    end
end
Temperature_ave = transpose(nanmean(Temperature_all'));