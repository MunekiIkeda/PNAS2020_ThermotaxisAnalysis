%% Import data

datFiles = dir('*.dat'); 
numfiles = length(datFiles);
mydata = cell(1, numfiles);
for k = 1:numfiles 
  mydata{k} = dlmread(datFiles(k).name); 
end

spineFiles = dir('*.spine'); 
numfiles_spine = length(spineFiles);
my_spine_data = cell(1, numfiles_spine);
for k = 1:numfiles 
  my_spine_data{k} = dlmread(spineFiles(k).name); 
end  

Tcent = 20;
vector_warm = [0 1];
INTERVAL = 0;

count = 0;
count_all = 0;
all_data_array = NaN(13*600*numfiles,22); 
count_omega = 0;
omega_array = NaN(500, 11);
count_reversal = 0;
reversal_array = NaN(500, 11);
count_revturn = 0;
revturn_array = NaN(500, 11);
count_shallow = 0;
shallow_array = NaN(500, 11);
     
for w=1:numfiles
  
  XY=cell2mat(mydata(1,w));
  time=XY(:,1);
  X=XY(:,2);
  Y=XY(:,3); 
  %speed=XY(:,4);
  %midline=XY(:,5);
  bias=XY(:,6);
  %aspect=XY(:,7);
  xy=[XY(:,2) XY(:,3)];
  
  spine=cell2mat(my_spine_data(1,w));
  HX=spine(:,2);
  HY=spine(:,3);
  H1X=spine(:,4);
  H1Y=spine(:,5);
  H2X=spine(:,6);
  H2Y=spine(:,7);
  H3X=spine(:,8);
  H3Y=spine(:,9);
  H4X=spine(:,10);
  H4Y=spine(:,11);
  MX=spine(:,12);
  MY=spine(:,13);
  T1X=spine(:,14);
  T1Y=spine(:,15);
  T2X=spine(:,16);
  T2Y=spine(:,17);
  T3X=spine(:,18);
  T3Y=spine(:,19);
  T4X=spine(:,20);
  T4Y=spine(:,21);
  TX=spine(:,22);
  TY=spine(:,23);
  
  framelength = length(time);
  Interval = (time(framelength)-time(1))/framelength;
  INTERVAL = INTERVAL + Interval;
  interval = round(1/Interval);
  half_interval = round(1/(2*Interval));
  
  
  %% Set and caluculate parameters
  
  T = NaN(framelength,1);
  for I = 1:framelength-interval;
    T(I) = (Tcent-3)+6*(HY(I)/135.168); 
  end
  
  dTdt = NaN(framelength,1);
  for I = 5*interval+1:framelength-interval;
    dTdt(I) = (T(I-4*interval)-T(I-5*interval))/(time(I-4*interval)-time(I-5*interval));
  end  
  
  running = NaN(framelength,2);
  Running = NaN(framelength,3);
  for I = 1+interval:framelength-interval;
    running(I,:) = [X(I+interval)-X(I-interval) Y(I+interval)-Y(I-interval)];
  end
  for I = 3:framelength-interval;
    Running(I,:) = [X(I+2)-X(I-2) Y(I+2)-Y(I-2) 0];
  end
  
  speed = NaN(framelength,1); 
  for I = 1+half_interval:framelength-half_interval;
    vector_in = [X(I)-X(I-half_interval) Y(I)-Y(I-half_interval)];
    vector_out = [X(I+half_interval)-X(I) Y(I+half_interval)-Y(I)];
    speed(I) = (norm(vector_in)+norm(vector_out))/(time(I+half_interval)-time(I-half_interval));
  end
  
  if nanmax(speed)<0.05
      continue
  end
  
  midline = NaN(framelength,1);
  middle = NaN(framelength,3);
  for I = 1:framelength-interval;
    mid_1 = [HX(I)-H1X(I) HY(I)-H1Y(I) 0];
    mid_2 = [H1X(I)-H2X(I) H1Y(I)-H2Y(I) 0];
    mid_3 = [H2X(I)-H3X(I) H2Y(I)-H3Y(I) 0];
    mid_4 = [H3X(I)-H4X(I) H3Y(I)-H4Y(I) 0];
    mid_5 = [H4X(I)-MX(I) H4Y(I)-MY(I) 0];
    mid_6 = [MX(I)-T1X(I) MY(I)-T1Y(I) 0];
    mid_7 = [T1X(I)-T2X(I) T1Y(I)-T2Y(I) 0];
    mid_8 = [T2X(I)-T3X(I) T2Y(I)-T3Y(I) 0];
    mid_9 = [T3X(I)-T4X(I) T3Y(I)-T4Y(I) 0];
    mid_10 = [T4X(I)-TX(I) T4Y(I)-TY(I) 0];
    midline(I) = norm(mid_1)+norm(mid_2)+norm(mid_3)+norm(mid_4)+norm(mid_5)+...
        norm(mid_6)+norm(mid_7)+norm(mid_8)+norm(mid_9)+norm(mid_10);
    middle(I,:) = [HX(I)-TX(I) HY(I)-TY(I) 0];
  end
  
  Vector_in = NaN(framelength,2);
  Vector_out = NaN(framelength,2);
  for I = 1+interval:framelength-interval;
    Vector_in(I,:) = [X(I)-X(I-interval) Y(I)-Y(I-interval)];
    Vector_out(I,:) = [X(I+interval)-X(I) Y(I+interval)-Y(I)];
  end
    
  direction_in = NaN(framelength,1);
  direction_out = NaN(framelength,1);
  Direction_in = NaN(framelength,1);
  Direction_out = NaN(framelength,1);  
  run_direction = NaN(framelength,1);
  curve = NaN(framelength,1);
  curve_direction = NaN(framelength,1);
  for I = 1+interval:framelength-interval;
    vector_in = [X(I)-X(I-interval) Y(I)-Y(I-interval)];
    vector_out = [X(I+interval)-X(I) Y(I+interval)-Y(I)];
    direction_in(I) = acos(dot(vector_warm, vector_in)./norm(vector_warm)./norm(vector_in)).*180./pi;
    direction_out(I) = acos(dot(vector_warm, vector_out)./norm(vector_warm)./norm(vector_out)).*180./pi;
    Direction_in(I) = direction_in(I)*sign(vector_in(1,1));
    Direction_out(I) = direction_out(I)*sign(vector_out(1,1));
    Run = [X(I+interval)-X(I-interval) Y(I+interval)-Y(I-interval)];
    run_direction(I) = (acos(dot(vector_warm, Run)./norm(vector_warm)./norm(Run)).*180./pi)*sign(Run(1,1));
    curve(I) = acos(dot(vector_in, vector_out)./norm(vector_in)./norm(vector_out)).*180./pi;
    vector_change = (vector_out./norm(vector_out))-(vector_in./norm(vector_in));
    if direction_in(I)<=45 || direction_in(I)>135
      if vector_in(1,1)*vector_in(1,2)*vector_change(1,1) >= 0
        curve_direction(I) = -1;
      else
        curve_direction(I) = 1;
      end
    else
      if vector_change(1,2) > 0
        curve_direction(I) = 1;
      else
        curve_direction(I) = -1;
      end
    end
  end
  
  Run_direction = NaN(framelength,1);
  for I = 1+interval:framelength-interval;
    Run_direction(I) = mean(run_direction(I-interval:I+interval));
  end
  
  swingH=NaN(framelength,1);
  swingT=NaN(framelength,1);
  for I = 1:framelength-interval;
    vectorH2_H = [H2X(I)-HX(I) H2Y(I)-HY(I)];
    vectorT1_H4 = [T1X(I)-H4X(I) T1Y(I)-H4Y(I)];
    vectorT_T3 = [TX(I)-T3X(I) TY(I)-T3Y(I)];
    swingH(I) = acos(dot(vectorH2_H, vectorT1_H4)./norm(vectorH2_H)./norm(vectorT1_H4)).*180./pi;       
    swingT(I) = acos(dot(vectorT_T3, vectorT1_H4)./norm(vectorT_T3)./norm(vectorT1_H4)).*180./pi;
  end
  
  
  headbend = NaN(framelength,1);
  tailbend = NaN(framelength,1);
  for I = 1:framelength-interval;
    head = [HX(I)-H1X(I) HY(I)-H1Y(I) 0];
    tail = [TX(I)-T4X(I) TY(I)-T4Y(I) 0];
      headangle = cross(middle(I,:), head);
      tailangle = cross(-middle(I,:), tail);    
      headbend(I) = sign(headangle(1,3))*acos(dot(middle(I,:), head)./norm(middle(I,:))./norm(head)).*180./pi;
      tailbend(I) = sign(tailangle(1,3))*acos(dot(-middle(I,:), tail)./norm(-middle(I,:))./norm(tail)).*180./pi;
  end
   
   
 %% Identify behavior components
  
 state = zeros(framelength,1);
 
  % Identify reversals
  rev_array = reversal(time, bias, curve, state);
  % Write in the state array. put '3' for entry, '-3' for exit and '4' for during reversal
  flag=0;
  for K=2:length(rev_array)
    if rev_array(K)==1 && rev_array(K-1)==0 && flag==0
      state(K)=3;
      flag=1;
    elseif rev_array(K)==1 && rev_array(K-1)==1 && flag==1
      state(K)=4;
    elseif rev_array(K)==0 && rev_array(K-1)==1 && flag==1
      state(K-1)=-3;
      flag=0;
    end
  end 

  % Identigy omega turns
  [omega_in_frame, omega_out_frame] = omega_turn(interval, time, midline, curve);
  % Mark the state with 1 for entry and -1 for exit of omega turns
  for I = 1:length(omega_in_frame)
      if state(omega_in_frame(I)) ~= 3 && state(omega_in_frame(I)) ~= -3      
          state(omega_in_frame(I)) = 1;  
      else          
          state(omega_in_frame(I)+1) = 1;
      end
  end
  for I = 1:length(omega_out_frame)
      if state(omega_out_frame(I)) ~= 3 && state(omega_out_frame(I)) ~= -3      
          state(omega_out_frame(I)) = -1;  
      else          
          state(omega_out_frame(I)-1) = -1;
      end
  end
  % Eliminate state value 1 and -1 if they are not coupled each other
  flag=0;
  for K = 1:length(state)
    if state(K)==-1 && flag==0
      state(K)=0;
    elseif state(K)==1 && flag==0
      flag=1;
    elseif state(K)==-1 && flag==1
      flag=0;
    end
  end
  flag=0;
  for K = length(state):-1:1
    if state(K)==1 && flag==0
      state(K)=0;
    elseif state(K)==-1 && flag==0
      flag=1;
    elseif state(K)==1 && flag==1
      flag=0;
    end
  end
  % Then fill the state array with '2' if they are flanked by 1 and -1.
  flag=0;
  for K = 1:length(state)
    if state(K)==1 && flag==0
       flag=1; 
    elseif state(K)==0 && flag==1
      state(K)=2;
    elseif state(K)==4 && flag==1
      state(K)=2;
    elseif state(K)==-1 && flag==1
      flag=0;
    end
  end
  % Then refill the state array with '4' if they are flanked by 3 and -3.
  flag=0;
  for K = 1:length(state)
    if state(K)==3 && flag==0
       flag=1; 
    elseif state(K)==0 && flag==1
      state(K)=4;
    elseif state(K)==-3 && flag==1
      flag=0;
    end
  end
  
  % Identify reversal turns
  state = reversal_turn(time, state);
  
  % Identify shallow turns
  % Transfer the values in the Jposture array into the state array
  Jposture = shallow_turn(Vector_in, Vector_out, curve, swingH, swingT, state);
  for I=1:length(Jposture)
    if Jposture(I)==7
      state(I)=7;
    elseif Jposture(I)==8
      state(I)=8;
    elseif Jposture(I)==-7
      state(I)=-7;
    end
  end
  
  % Identify isothermal tracking
  [state, ITstate, notITstate, ITLength, torestart_length] = IT(interval, X, Run_direction, state);
  
  % Calculate bending
  for I = interval+1:framelength-interval;
    if state(I) ~= 0
      headbend(I) = NaN;
      tailbend(I) = NaN;
    end
    if dot(Running(I,:), middle(I,:)) > 0
      middle(I,:) = middle(I,:); 
      headbend(I) = headbend(I);
    elseif dot(Running(I,:), middle(I,:)) < 0
      middle(I,:) = -middle(I,:); 
      headbend(I) = tailbend(I);
    end    
  end
  [Bendwarm, Bendcool, headBend, headBendwarm, headBendcool] = bending(interval, framelength, middle, headbend, state);
  
  % estimate the activity of AFD
  if time(framelength)-time(1) > 200
    TEMP = T;
    est = AFD_Resfunc(Interval, TEMP);
    est = [NaN(round(200/Interval),1); est];
  else
    est = NaN(framelength,1);
  end
  %% Generate all data array  
  
  state_for_curve = zeros(framelength,1);
  bias_for_curve = NaN(framelength,1);  
  for I = interval+1:framelength-interval;
    state_for_curve(I) = max(state(I-interval:I+interval));
    bias_for_curve(I) = min(bias(I-interval:I+interval));
  end
  
  state_for_speed = zeros(framelength,1);
  bias_for_speed = NaN(framelength,1);
  for I = interval+1:framelength-4*interval;
    state_for_speed(I) = max(state(I-interval:I+4*interval));
    bias_for_speed(I) = min(bias(I-interval:I+4*interval));
  end
   
  all_data_array((count_all+1):(count_all+framelength-2*interval),1) = time(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),2) = T(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),3) = dTdt(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),4) = direction_in(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),5) = state(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),6) = curve(interval+1:framelength-interval).*curve_direction(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),7) = speed(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),8) = state_for_curve(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),9) = state_for_speed(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),10) = bias_for_curve(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),11) = bias_for_speed(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),12) = direction_out(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),13) = X(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),14) = Y(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),15) = ITstate(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),16) = ITLength(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),17) = headBendwarm(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),18) = headBendcool(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),19) = est(interval+1:framelength-interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),20) = (1:framelength-2*interval);
  all_data_array((count_all+1):(count_all+framelength-2*interval),21) = (framelength-2*interval:-1:1);
  all_data_array((count_all+1):(count_all+framelength-2*interval),22) = w*ones(framelength-2*interval,1);
  count_all = count_all+framelength-2*interval;
  
 
  for I = interval+1:framelength-interval
    if state(I) == 1
      omega_array(count_omega+1,1) = time(I);
      omega_array(count_omega+1,2) = X(I);
      omega_array(count_omega+1,3) = Y(I);
      omega_array(count_omega+1,4) = direction_in(I);
      omega_array(count_omega+1,5) = Direction_in(I);
    elseif state(I) == -1
      omega_array(count_omega+1,6) = time(I);
      omega_array(count_omega+1,7) = X(I);
      omega_array(count_omega+1,8) = Y(I);
      omega_array(count_omega+1,9) = direction_out(I);
      omega_array(count_omega+1,10) = Direction_out(I);
      omega_array(count_omega+1,11) = w;
      count_omega = count_omega+1;
    elseif state(I) == 3
      reversal_array(count_reversal+1,1) = time(I);
      reversal_array(count_reversal+1,2) = X(I);
      reversal_array(count_reversal+1,3) = Y(I);
      reversal_array(count_reversal+1,4) = direction_in(I);
      reversal_array(count_reversal+1,5) = Direction_in(I);
    elseif state(I) == -3
      reversal_array(count_reversal+1,6) = time(I);
      reversal_array(count_reversal+1,7) = X(I);
      reversal_array(count_reversal+1,8) = Y(I);
      reversal_array(count_reversal+1,9) = direction_out(I);
      reversal_array(count_reversal+1,10) = Direction_out(I);
      reversal_array(count_reversal+1,11) = w;
      count_reversal = count_reversal+1;
    elseif state(I) == 5
      revturn_array(count_revturn+1,1) = time(I);
      revturn_array(count_revturn+1,2) = X(I);
      revturn_array(count_revturn+1,3) = Y(I);
      revturn_array(count_revturn+1,4) = direction_in(I);
      revturn_array(count_revturn+1,5) = Direction_in(I);
    elseif state(I) == -5
      revturn_array(count_revturn+1,6) = time(I);
      revturn_array(count_revturn+1,7) = X(I);
      revturn_array(count_revturn+1,8) = Y(I);
      revturn_array(count_revturn+1,9) = direction_out(I);
      revturn_array(count_revturn+1,10) = Direction_out(I);
      revturn_array(count_revturn+1,11) = w;
      count_revturn = count_revturn+1;
    elseif state(I) == 7
      shallow_array(count_shallow+1,1) = time(I);
      shallow_array(count_shallow+1,2) = X(I);
      shallow_array(count_shallow+1,3) = Y(I);
      shallow_array(count_shallow+1,4) = direction_in(I);
      shallow_array(count_shallow+1,5) = Direction_in(I);
    elseif state(I) == -7
      shallow_array(count_shallow+1,6) = time(I);
      shallow_array(count_shallow+1,7) = X(I);
      shallow_array(count_shallow+1,8) = Y(I);
      shallow_array(count_shallow+1,9) = direction_out(I);
      shallow_array(count_shallow+1,10) = Direction_out(I);
      shallow_array(count_shallow+1,11) = w;
      count_shallow = count_shallow+1;
    end
  end
  
  count = count+1;
end
INTERVAL = INTERVAL/count;


%% Output data
    
[all_data, IT_data] = count_up(Tcent, INTERVAL, all_data_array, omega_array, reversal_array, revturn_array, shallow_array);    
[omega_out_prob, reversal_out_prob, revturn_out_prob, shallow_out_prob] = count_up_prob(omega_array, reversal_array, revturn_array, shallow_array);        
filename = 'all_ver8_6_4';  
m = matfile(filename,'Writable',true);       
save(filename,'-v7.3');    
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'freq_prob','.csv'];    
csvwrite(dateAndtime, all_data);
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'omega_prob','.csv'];    
csvwrite(dateAndtime, omega_out_prob);
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'reversal_prob','.csv'];
csvwrite(dateAndtime, reversal_out_prob);
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'revturn_prob','.csv'];
csvwrite(dateAndtime, revturn_out_prob);
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'shallow_prob','.csv'];
csvwrite(dateAndtime, shallow_out_prob);
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'IT','.csv'];    
csvwrite(dateAndtime, IT_data);