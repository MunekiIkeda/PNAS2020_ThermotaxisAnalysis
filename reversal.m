% CALLING REVERSAL BY CURVE DATA; START HERE  

function rev_array = reversal(time, bias, curve, state)
  curve_interval = 1;
  curve_ave = zeros(length(time),1);
  
  for K = curve_interval+1:length(time)-curve_interval
    curve_ave(K,1) = mean(curve(K-curve_interval:K+curve_interval));
  end
  
  rev_threshold = 150;
  rev_frame = find(curve_ave>rev_threshold);
  
  for K = 1:length(rev_frame)
    if state(rev_frame(K))~=0
      rev_frame(K)=0;
    end
  end
  
  rev_frame(rev_frame==0)=[];
  
  rev_array = zeros(length(time),1);
  rev_array(rev_frame) = 1;
  
  critical_rev_time=12; % Need to assess the maximum time for reversal
  flag=0;
  for K = 2:length(rev_array)
    if rev_array(K)==1 && rev_array(K-1)==0 && flag==0
       flag=1;
       left_frame_previous_block=K;
    elseif rev_array(K)==0 && rev_array(K-1)==1 && flag==1
       flag=2;
       right_frame_previous_block=K-1;
    elseif rev_array(K)==1 && rev_array(K-1)==0 && flag==2
      if time(K)-time(left_frame_previous_block)<critical_rev_time || mode(bias(right_frame_previous_block:K))==-1
        rev_array(right_frame_previous_block+1:K-1) = 1;
        flag=0;
      else
        rev_array(left_frame_previous_block:right_frame_previous_block)=0;
        left_frame_previous_block=K;
        flag=1;
      end
    elseif K==length(rev_array) && flag~=0
      rev_array(left_frame_previous_block:K)=0;
    end
  end
 
  %{
  % perform a similar analysis to detect short reversals
  
  angle_ave_short = zeros(length(time),1);
  
  for K = 2:length(angle_ave_short)
    angle_ave_short(K,1) = mean(curve(K-1:K));
  end
  
  rev_threshold_short = 160;
  rev_frame_short = find(angle_ave_short>rev_threshold_short);

  for K = 1:length(rev_frame_short)
    if state(rev_frame_short(K))~=0 || rev_array(rev_frame_short(K))~=0
      rev_frame_short(K)=0;
    end
  end
  
  rev_frame_short(find(rev_frame_short==0))=[];
  
  rev_array_short = zeros(length(time),1);
  rev_array_short(rev_frame_short) = 1;
  
  critical_rev_time_short=1; % Need to assess the maximum time for reversal
  flag=0;
  for K = 2:length(rev_array_short)
    if rev_array_short(K)==1 && rev_array_short(K-1)==0 && flag==0
       flag=1;
       left_frame_previous_block_short=K;
    elseif rev_array_short(K)==0 && rev_array_short(K-1)==1 && flag==1
       flag=2;
       right_frame_previous_block_short=K-1;
    elseif rev_array_short(K)==1 && rev_array_short(K-1)==0 && flag==2
      if time(K)-time(left_frame_previous_block_short)<critical_rev_time_short || mode(bias(right_frame_previous_block_short:K))==-1 %&&?
        rev_array_short(right_frame_previous_block_short+1:K-1)=1;
        flag=0;
      else
        rev_array_short(left_frame_previous_block_short:right_frame_previous_block_short)=0;
        left_frame_previous_block_short=K;
        flag=1;
      end
    elseif K==length(rev_array_short) && flag~=0
      rev_array_short(left_frame_previous_block_short:K)=0;
    end
  end
  
  rev_array(find(rev_array_short==1))=1;
  %}