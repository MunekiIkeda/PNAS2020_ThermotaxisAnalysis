  % CALLING OMEGA TURNS BY MIDLINE CRITERIA; START HERE
 
  function [omega_in_frame, omega_out_frame] = omega_turn(interval, time, midline, curve)
  % first, find frames with low midline value to call omega turns
  midline_array = midline(midline>0);
  midline_frame = find(midline<mean(midline_array)-1.5*std(midline_array) & curve>90);
  
  % assign frames for entry and exit frames of the low midline windows
  midline_in_frame = zeros(length(midline_frame),1);
  midline_out_frame = zeros(length(midline_frame),1);
  
  if numel(midline_frame) == 0
    midline_in_frame = [];
    midline_out_frame = []; 
 
  else
    counter = 1;
    midline_in_frame(counter,1) = midline_frame(counter);
    for K = 2:length(midline_frame)-1
      if time(midline_frame(K+1))-time(midline_frame(K)) > 3
        % Treat two separate omega turns if the midline drop occurs 10 frames or more apart.
        midline_out_frame(counter)=midline_frame(K);
        counter=counter+1;
        midline_in_frame(counter)=midline_frame(K+1);
      end
    end 
    midline_out_frame(counter,1)=max(midline_frame);
  end
  
  midline_in_frame(midline_in_frame==0) = [];
  midline_out_frame(midline_out_frame==0) = [];
  
  % determine the midline value for entry into omega turn.
  % first collect midline values corresponding to 1 to 80 %,
  % sort these data, and then obtain second-order differentials of the sorted data. 
  % The midline value at which the lowest second-order differential
  % is given is set as the entry value for omega turn.
  midline_ed = midline(midline>quantile(midline,0.01) & midline<quantile(midline,0.8));
  mid_sort = sort(midline_ed);
  mid_sort_ave = zeros(length(mid_sort),1);
  mid_interval = 2*interval;
  
  for K = mid_interval+1:length(mid_sort_ave)-mid_interval
    mid_sort_ave(K,1) = mean(mid_sort(K-mid_interval:K+mid_interval));
  end

  mid_sort_ave = mid_sort_ave(mid_interval+1:length(mid_sort_ave)-mid_interval);

  dd_mid_sort_ave = diff(diff(mid_sort_ave));
  ind_min=dd_mid_sort_ave == min(dd_mid_sort_ave);
  midline_cutoff_value = mid_sort_ave(ind_min);

  % determine the frame at which worms enter omega turns for this part,
  % look for the nearst (and smaller/younger) frame to the midline_in_frame
  % that have the moving average of midline value is greater than the
  % midline_in_value determined by the above section.
  omega_in_frame = zeros(length(midline_in_frame),1);
  
  midline_interval=round(interval/7);
  for K = 1:length(midline_in_frame)
    for KK = midline_in_frame(K):-1:1
      if midline_in_frame(K)+midline_interval>length(time)
        omega_in_frame(K,1)=0;
        break
      end      
      if mean(midline(KK:KK+midline_interval))>midline_cutoff_value
        omega_in_frame(K,1)=KK;
        break
      elseif KK==1
        break
      end
    end
  end
  omega_in_frame(omega_in_frame==0)=[];
  
  omega_out_frame = zeros(length(midline_out_frame),1);
  midline_interval=2;
  for K = 1:length(midline_out_frame)
    for KK = midline_out_frame(K):length(time)
      if midline_out_frame(K)-midline_interval<1
        omega_out_frame(K,1)=0;
        break
      end      
      if mean(midline(KK-midline_interval:KK))>midline_cutoff_value
        omega_out_frame(K,1)=KK;
        break
      elseif KK == length(time)
        break
      end
    end
  end
  omega_out_frame(omega_out_frame==0)=[];