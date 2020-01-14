function [state, ITstate, notITstate, ITLength, torestart_length] = IT(interval, X, Run_direction, state)
 
  ITstate = zeros(length(state),1);
  notITstate = zeros(length(state),1);

ITstate(X<48 & ((Run_direction>60 & Run_direction<110)|(Run_direction>-120 & Run_direction<-70)))=1;
ITstate(X>=48 & ((Run_direction>70 & Run_direction<120)|(Run_direction>-110 & Run_direction<-60)))=1;

%for the limit of IT duration 
start_duration=20*interval;
%for the interval between 2 IT tracks
%torestart_duration=5*interval;
tostart_duration=600*interval;

  
  for I=start_duration+1:length(state)-start_duration
      if mean(ITstate(I-start_duration:I+start_duration))>3/4
          ITstate(I)=1;
      end
  end
  for I=start_duration+1:length(state)-start_duration
      if mean(ITstate(I-start_duration:I+start_duration))>3/4
          ITstate(I)=1;
      end
  end
  
  
  ITstate(state~=0 & state~=7 & state~=8 & state~=-7 )=0;
  %ITstate(state~=0)=0;
  
  flag=0; Flag=0; FLAG=0;
  ITLength = NaN(length(state),1);
  torestart_length = NaN(length(state),1);
  %IT start
  for I=1:length(state)
      if ITstate(I)==1 && flag==0 && Flag==0 && FLAG==0
          flag=1; 
          %state(I)=9;
      elseif ITstate(I)==1 && flag>=1 && Flag==0 && FLAG==0
          flag=flag+1;
      elseif ITstate(I)==0 && flag>=1 && Flag==0 && FLAG==0
          if flag<start_duration
              ITstate(I-flag:I-1)=0;
              %state(I-flag:I-1)=0;
              flag=0;
          else
             Flag=1;
             state(I-flag)=9;
             state(I-1)=-9;
             ITLength(I)=flag;
             flag=0;
          end
   %IT interruption
      elseif ITstate(I)==0 && flag==0 && Flag>=1 && FLAG==0
          Flag=Flag+1; 
    %IT restart
      elseif ITstate(I)==1 && flag==0 && Flag>=1 && FLAG==0
           FLAG=1;
           flag=1; 
           %state(I)=9;
          if Flag>tostart_duration
             Flag=0; flag=0; FLAG=0;          
          end
      elseif ITstate(I)==1 && FLAG>=1
          FLAG=FLAG+1;
          flag=flag+1;
      elseif ITstate(I)==0 && FLAG>=1
          if FLAG<start_duration
            ITstate(I-flag:I-1)=0;
            %state(I-flag:I-1)=0;
            flag=0; Flag=0; FLAG=0;
          elseif FLAG>start_duration 
            torestart_length(I-Flag-flag)=Flag;
           % if Flag<torestart_duration
           %  notITstate(I-Flag-flag:I-flag)=1;
            if Flag<tostart_duration 
             notITstate(I-Flag-flag:I-flag)=2;
            end
            ITLength(I)=flag;
            state(I-flag)=9;
            FLAG=0; Flag=1; flag=0;
            state(I-1)=-9;          
         end
      end
  end      
  end
 
 
