function state = reversal_turn(time, state)
%% Integtrate reversal and omega turn case#1 (3Å®-3Å®1Å®-1)
  flag=0;
  for P=1:length(state)-1;
    if state(P)==-3 && flag==0
      flag=1;
      leftFrameNumber=P;
    elseif state(P)==3 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==-1 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1 && (time(P)-time(leftFrameNumber))>6
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1 && (time(P)-time(leftFrameNumber))<=6
      state(leftFrameNumber:P)=6;
      flag=2;
      leftFrameNumber=P;
    elseif state(P)==-1 && state(P+1)~=4 && flag==2
      state(leftFrameNumber:P-1)=6;
      state(P)=-5;
      flag=0;
      leftFrameNumber=0; 
    elseif state(P)==-1 && state(P+1)==4 && flag==2
      state(leftFrameNumber:P)=6;
      flag=0;
      leftFrameNumber=0;    
    end
  end
  
  for I=length(state)-1:-1:2
    if state(I+1)==6 && state(I)==4
      state(I)=6;
    elseif state(I+1)==6 && state(I)==-1
      state(I)=6;
    elseif state(I+1)==6 && state(I)==2
      state(I)=6;
    elseif state(I+1)==6 && state(I)==1
      state(I)=6;
    elseif state(I+1)==6 && state(I)==3
      state(I)=5;
    end
  end
 
  % Integtrate reversal turn and reversal
  for I=2:length(state)-1
    if state(I-1)==6 && state(I)==4
      state(I)=6;
    elseif state(I-1)==6 && state(I)==-3
      state(I)=-5;
    end
  end
  

  %% Integtrate reversal and omega turn case#2 (3Å®1Å®-3Å®-1)
  flag=0;
  for P=1:length(state);
    if state(P)==-3 && flag==0;
      flag=1;
      leftFrameNumber=P;
    elseif state(P)==3 && flag==1;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==-1 && flag==1 && (time(P)-time(leftFrameNumber))<=6;
      state(leftFrameNumber:P-1)=6;
      state(P)=-5;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==-1 && flag==1 && (time(P)-time(leftFrameNumber))>6;
      flag=0;
      leftFrameNumber=0;
    end
  end
  
  for I=length(state)-1:-1:2
    if state(I+1)==6 && state(I)==2
      state(I)=6;
    elseif state(I+1)==6 && state(I)==1
      state(I)=6;
    elseif state(I+1)==6 && state(I)==-1
      state(I)=6;
    elseif state(I+1)==6 && state(I)==4
      state(I)=6;
    elseif state(I+1)==6 && state(I)==3
      state(I)=5;
    end
  end

  
  %% Integtrate reversal and omega turn case#3 (3Å®1Å®-1Å®-3)
  flag=0;
  for P=1:length(state);
    if state(P)==3 && flag==0;
      flag=1;
      leftFrameNumber=P;
    elseif state(P)==-3 && flag==1;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1 && (time(P)-time(leftFrameNumber))<=12;
      state(leftFrameNumber+1:P)=6;
      state(leftFrameNumber)=5;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1 && (time(P)-time(leftFrameNumber))>12;
      flag=0;
      leftFrameNumber=0;
    end
  end
  
  for I=2:length(state)-1
    if state(I-1)==6 && state(I)==2
      state(I)=6;
    elseif state(I-1)==6 && state(I)==-1
      state(I)=6;
    elseif state(I-1)==6 && state(I)==1
      state(I)=6;
    elseif state(I-1)==6 && state(I)==4
      state(I)=6;
    elseif state(I-1)==6 && state(I)==-3
      state(I)=-5;    
    end
  end
  
  
  %% Integrate reversal turn and reversal (-5Å®3) Å~2
  flag=0;
  for P=1:length(state);
    if state(P)==-5 && flag==0;
      flag=1;
      leftFrameNumber=P;
    elseif state(P)==5 && flag==1;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==3 && flag==1 && (time(P)-time(leftFrameNumber))>6;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==3 && flag==1 && (time(P)-time(leftFrameNumber))<=6;
      state(leftFrameNumber:P)=6;
      flag=2;
      leftFrameNumber=P;
    elseif state(P)==-3 && flag==2;
      state(leftFrameNumber:P-1)=6;
      state(P)=-5;
      flag=0;
      leftFrameNumber=0;   
    end
  end
  
  flag=0;
  for P=1:length(state);
    if state(P)==-5 && flag==0;
      flag=1;
      leftFrameNumber=P;
    elseif state(P)==5 && flag==1;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==3 && flag==1 && (time(P)-time(leftFrameNumber))>6;
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==3 && flag==1 && (time(P)-time(leftFrameNumber))<=6;
      state(leftFrameNumber:P)=6;
      flag=2;
      leftFrameNumber=P;
    elseif state(P)==-3 && flag==2;
      state(leftFrameNumber:P-1)=6;
      state(P)=-5;
      flag=0;
      leftFrameNumber=0;   
    end
  end
  
  
  %% Integrate reversal turn and omega turn case#1 (-5Å®1)
  flag=0;
  for P=1:length(state)
    if state(P)==-5 && flag==0
      flag=1;
      leftFrameNumber=P;
    elseif state(P)==5 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==3 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1 && (time(P)-time(leftFrameNumber))>3
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1 && (time(P)-time(leftFrameNumber))<=3
      state(leftFrameNumber:P)=6;
      flag=2;
      leftFrameNumber=P;
    elseif state(P)==-1 && flag==2
      state(leftFrameNumber:P-1)=6;
      state(P)=-5;
      flag=0;
      leftFrameNumber=0;
    end
  end
  
  
  %% Integrate reversal turn and omega turn case#2 (-5Å®-1)
  flag=0;
  for P=1:length(state)
    if state(P)==-5 && flag==0
      flag=1;
      leftFrameNumber=P;
    elseif state(P)==5 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==3 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==-1 && flag==1 && (time(P)-time(leftFrameNumber))>12
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==-1 && flag==1 && (time(P)-time(leftFrameNumber))<=12
      state(leftFrameNumber:P-1)=6;
      state(P)=-5;
      flag=0;
      leftFrameNumber=0;
    end
  end
  
  
  %% Integrate reversal and reversal turn (-3Å®5)
  flag=0;
  for P=1:length(state)
    if state(P)==-3 && flag==0
      flag=1;
      leftFrameNumber=P;
    elseif state(P)==3 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==1 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==5 && flag==1 && (time(P)-time(leftFrameNumber))>6
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==5 && flag==1 && (time(P)-time(leftFrameNumber))<=6
      state(leftFrameNumber:P)=6;
      flag=0;
      leftFrameNumber=0;
    end
  end
  
  for I=length(state)-1:-1:2
    if state(I+1)==6 && state(I)==4
      state(I)=6;
    elseif state(I+1)==6 && state(I)==-1
      state(I)=6;
    elseif state(I+1)==6 && state(I)==2
      state(I)=6;
    elseif state(I+1)==6 && state(I)==1
      state(I)=6;
    elseif state(I+1)==6 && state(I)==3
      state(I)=5;
    end
  end
  
  
  %% Separate omega turn and reversal
  flag=0;
  for P=1:length(state)
    if state(P)==3 && flag==0
      flag=1;
      leftFrameNumber=P;
    elseif state(P)==3 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==5 && flag==1
      flag=0;
      leftFrameNumber=0;
    elseif state(P)==-3 && flag==1
      state(leftFrameNumber+1:P-1)=4;
      flag=0;
      leftFrameNumber=0;
    end
  end
  
  
  %% Restore omega turn
  flag=0;
  for P=1:length(state)
    if state(P)==1 && flag==0
      flag=1;
    elseif state(P)==-1 && flag==1
      flag=0;
    elseif state(P)==3 && state(P-1)==2 && flag==1
      state(P-1)=-1;
      flag=0;
    elseif state(P)==5 && state(P-1)==2 && flag==1
      state(P-1)=-1;
      flag=0;
    end
  end