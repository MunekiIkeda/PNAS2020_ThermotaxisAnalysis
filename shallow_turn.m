  % Identify shallow turns. First identify "J" posture typical
  % for shallow turn during runs and prepare a matrix for this 
  % in which 1 or 0 indicate the presence or absence of this posture, respectively.
  
  function Jposture = shallow_turn(Vector_in, Vector_out, curve, swingH, swingT, state)
  Jposture = zeros(length(swingH),1);
  Tcritical=50;
  
  for I = 1:length(swingH)
    if state(I)==0 && swingH(I)>nanmean(swingH)+2*nanstd(swingH)...
         && swingT(I)<nanmean(swingT)+0.5*nanstd(swingT) && curve(I)>15 && curve(I)<90
      Jposture(I)=1;
    elseif state(I)==0 && swingT(I)>nanmean(swingT)+2*nanstd(swingT)....
         && swingH(I)<nanmean(swingH)+0.5*nanstd(swingH) && curve(I)>15 && curve(I)<90
      Jposture(I)=1;
    end
  end

  % Remove the ones located within a single Tcritical interval from omega, 
  % reversal turns and reversals. Also remove the single ones.
  for I = Tcritical+1:length(Jposture)-Tcritical
    if Jposture(I)==1 && sum(abs(state(I-Tcritical:I+Tcritical)))>0
      Jposture(I)=0;
    end
  end
  
  for I = 2:length(Jposture)-1
    if Jposture(I)==1 && Jposture(I-1)==0 && Jposture(I+1)==0
      Jposture(I)=0;
    end
  end

  % Fill a gap of up to 5 zeros in Jposture that are flanked by 1.
  for I = 2:length(Jposture)-5
    if Jposture(I)==0 && Jposture(I-1)==1 && sum(Jposture(I+1:I+5))>0
      Jposture(I)=1;
    end
  end
  
  flag=0;
  for I = 14:length(Jposture)-13;
    if Jposture(I)==1 && flag==0
      Jposture(I-13:I-1)=1; % Take the frame at one body bend earlier as the entry point into shallow turn
      flag=1;
    elseif Jposture(I)==1 && Jposture(I+1)==0 && flag==1
      Jposture(I+13)=2; % Take the frame at one body bend later as the exit point from shallow turn and mark them as "2"
      flag=0;
    end
  end

  % Convert the value 2 back to 1 and fill the zeros between 2 and 1. Set the loop backward
  flag=0;
  for I = length(Jposture):-1:1;
    if Jposture(I)==2 && flag==0
      Jposture(I)=1;
      flag=1;
    elseif Jposture(I)==0 && flag==1
      Jposture(I)=1;
    elseif Jposture(I)==1 && flag==1
      flag=0;
    end
  end

  flag=0;
  for I=2:length(Jposture)-1
    if Jposture(I-1)==0 && Jposture(I)==1 && flag==0;
      shallow_in=Vector_in(I,:);
      flag=1;
    elseif Jposture(I)==1 && Jposture(I+1)==0 && flag==1....
            && acos(dot(shallow_in , Vector_out(I,:))./norm(shallow_in)./norm(Vector_out(I,:)))*180/pi>=30....
            && acos(dot(shallow_in , Vector_out(I,:))./norm(shallow_in)./norm(Vector_out(I,:)))*180/pi<135
      Jposture(I)=2; 
      flag=0;
    elseif Jposture(I)==1 && Jposture(I+1)==0 && flag==1.....
            && (acos(dot(shallow_in , Vector_out(I,:))./norm(shallow_in)./norm(Vector_out(I,:)))*180/pi>=135....
            || acos(dot(shallow_in , Vector_out(I,:))./norm(shallow_in)./norm(Vector_out(I,:)))*180/pi<30)
      flag=0;
    end
  end
  
  % Convert invalid shallow turns in which "1s" do not end with 2.
  % Loop here is going backward
  flag=0;
  for I=length(Jposture):-1:1
    if Jposture(I)==2 && flag==0
      Jposture(I)=1;
      flag=1;
    elseif Jposture(I)==1 && flag==1
      Jposture(I)=1;
    elseif Jposture(I)==1 && flag==0
      Jposture(I)=0;
    elseif Jposture(I)==0
      flag=0;
    end
  end
  
  
  % and then mark the beginning, the end of and during shallow turn with
  % 7, -7 and 8 respectively
  flag=0;
  for I=1:length(Jposture)
    if Jposture(I)==1 && flag==0
      Jposture(I)=7;
      flag=1;
    elseif Jposture(I)==1 && Jposture(I+1)==1 && flag==1
      Jposture(I)=8;
    elseif Jposture(I)==1 && Jposture(I+1)==0 && flag==1
      Jposture(I)=-7;
      flag=0;
    end
  end