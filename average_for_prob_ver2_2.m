OmegaProbStruct = dir('*omega_prob_all.csv');
L_omega=length(OmegaProbStruct);
  
omega_prob_array_0_30_0_600 = NaN(L_omega,12);
omega_prob_array_30_60_0_600 = NaN(L_omega,12);
omega_prob_array_60_90_0_600 = NaN(L_omega,12);
omega_prob_array_90_120_0_600 = NaN(L_omega,12);
omega_prob_array_120_150_0_600 = NaN(L_omega,12);
omega_prob_array_150_180_0_600 = NaN(L_omega,12);
omega_prob_array_30_0_0_600 = NaN(L_omega,12);
omega_prob_array_60_30_0_600 = NaN(L_omega,12);
omega_prob_array_90_60_0_600 = NaN(L_omega,12);
omega_prob_array_120_90_0_600 = NaN(L_omega,12);
omega_prob_array_150_120_0_600 = NaN(L_omega,12);
omega_prob_array_180_150_0_600 = NaN(L_omega,12);

omega_prob_array_0_30_600_1200 = NaN(L_omega,12);
omega_prob_array_30_60_600_1200 = NaN(L_omega,12);
omega_prob_array_60_90_600_1200 = NaN(L_omega,12);
omega_prob_array_90_120_600_1200 = NaN(L_omega,12);
omega_prob_array_120_150_600_1200 = NaN(L_omega,12);
omega_prob_array_150_180_600_1200 = NaN(L_omega,12);
omega_prob_array_30_0_600_1200 = NaN(L_omega,12);
omega_prob_array_60_30_600_1200 = NaN(L_omega,12);
omega_prob_array_90_60_600_1200 = NaN(L_omega,12);
omega_prob_array_120_90_600_1200 = NaN(L_omega,12);
omega_prob_array_150_120_600_1200 = NaN(L_omega,12);
omega_prob_array_180_150_600_1200 = NaN(L_omega,12);

omega_prob_array_0_30_1200_1800 = NaN(L_omega,12);
omega_prob_array_30_60_1200_1800 = NaN(L_omega,12);
omega_prob_array_60_90_1200_1800 = NaN(L_omega,12);
omega_prob_array_90_120_1200_1800 = NaN(L_omega,12);
omega_prob_array_120_150_1200_1800 = NaN(L_omega,12);
omega_prob_array_150_180_1200_1800 = NaN(L_omega,12);
omega_prob_array_30_0_1200_1800 = NaN(L_omega,12);
omega_prob_array_60_30_1200_1800 = NaN(L_omega,12);
omega_prob_array_90_60_1200_1800 = NaN(L_omega,12);
omega_prob_array_120_90_1200_1800 = NaN(L_omega,12);
omega_prob_array_150_120_1200_1800 = NaN(L_omega,12);
omega_prob_array_180_150_1200_1800 = NaN(L_omega,12);

omega_prob_array_0_30_1800_2400 = NaN(L_omega,12);
omega_prob_array_30_60_1800_2400 = NaN(L_omega,12);
omega_prob_array_60_90_1800_2400 = NaN(L_omega,12);
omega_prob_array_90_120_1800_2400 = NaN(L_omega,12);
omega_prob_array_120_150_1800_2400 = NaN(L_omega,12);
omega_prob_array_150_180_1800_2400 = NaN(L_omega,12);
omega_prob_array_30_0_1800_2400 = NaN(L_omega,12);
omega_prob_array_60_30_1800_2400 = NaN(L_omega,12);
omega_prob_array_90_60_1800_2400 = NaN(L_omega,12);
omega_prob_array_120_90_1800_2400 = NaN(L_omega,12);
omega_prob_array_150_120_1800_2400 = NaN(L_omega,12);
omega_prob_array_180_150_1800_2400 = NaN(L_omega,12);

omega_prob_array_0_30_2400_3000 = NaN(L_omega,12);
omega_prob_array_30_60_2400_3000 = NaN(L_omega,12);
omega_prob_array_60_90_2400_3000 = NaN(L_omega,12);
omega_prob_array_90_120_2400_3000 = NaN(L_omega,12);
omega_prob_array_120_150_2400_3000 = NaN(L_omega,12);
omega_prob_array_150_180_2400_3000 = NaN(L_omega,12);
omega_prob_array_30_0_2400_3000 = NaN(L_omega,12);
omega_prob_array_60_30_2400_3000 = NaN(L_omega,12);
omega_prob_array_90_60_2400_3000 = NaN(L_omega,12);
omega_prob_array_120_90_2400_3000 = NaN(L_omega,12);
omega_prob_array_150_120_2400_3000 = NaN(L_omega,12);
omega_prob_array_180_150_2400_3000 = NaN(L_omega,12);

omega_prob_array_0_30_3000_3600 = NaN(L_omega,12);
omega_prob_array_30_60_3000_3600 = NaN(L_omega,12);
omega_prob_array_60_90_3000_3600 = NaN(L_omega,12);
omega_prob_array_90_120_3000_3600 = NaN(L_omega,12);
omega_prob_array_120_150_3000_3600 = NaN(L_omega,12);
omega_prob_array_150_180_3000_3600 = NaN(L_omega,12);
omega_prob_array_30_0_3000_3600 = NaN(L_omega,12);
omega_prob_array_60_30_3000_3600 = NaN(L_omega,12);
omega_prob_array_90_60_3000_3600 = NaN(L_omega,12);
omega_prob_array_120_90_3000_3600 = NaN(L_omega,12);
omega_prob_array_150_120_3000_3600 = NaN(L_omega,12);
omega_prob_array_180_150_3000_3600 = NaN(L_omega,12);

for k=1:L_omega
  OmegaProbArray_each = load(OmegaProbStruct(k,:).name);
  
  omega_prob_array_0_30_0_600(k,:) = OmegaProbArray_each(1,:);
  omega_prob_array_30_60_0_600(k,:) = OmegaProbArray_each(2,:);
  omega_prob_array_60_90_0_600(k,:) = OmegaProbArray_each(3,:);
  omega_prob_array_90_120_0_600(k,:) = OmegaProbArray_each(4,:);
  omega_prob_array_120_150_0_600(k,:) = OmegaProbArray_each(5,:);
  omega_prob_array_150_180_0_600(k,:) = OmegaProbArray_each(6,:);
  omega_prob_array_30_0_0_600(k,:) = OmegaProbArray_each(7,:);
  omega_prob_array_60_30_0_600(k,:) = OmegaProbArray_each(8,:);
  omega_prob_array_90_60_0_600(k,:) = OmegaProbArray_each(9,:);
  omega_prob_array_120_90_0_600(k,:) = OmegaProbArray_each(10,:);
  omega_prob_array_150_120_0_600(k,:) = OmegaProbArray_each(11,:);
  omega_prob_array_180_150_0_600(k,:) = OmegaProbArray_each(12,:);
  
  omega_prob_array_0_30_600_1200(k,:) = OmegaProbArray_each(14,:);
  omega_prob_array_30_60_600_1200(k,:) = OmegaProbArray_each(15,:);
  omega_prob_array_60_90_600_1200(k,:) = OmegaProbArray_each(16,:);
  omega_prob_array_90_120_600_1200(k,:) = OmegaProbArray_each(17,:);
  omega_prob_array_120_150_600_1200(k,:) = OmegaProbArray_each(18,:);
  omega_prob_array_150_180_600_1200(k,:) = OmegaProbArray_each(19,:);
  omega_prob_array_30_0_600_1200(k,:) = OmegaProbArray_each(20,:);
  omega_prob_array_60_30_600_1200(k,:) = OmegaProbArray_each(21,:);
  omega_prob_array_90_60_600_1200(k,:) = OmegaProbArray_each(22,:);
  omega_prob_array_120_90_600_1200(k,:) = OmegaProbArray_each(23,:);
  omega_prob_array_150_120_600_1200(k,:) = OmegaProbArray_each(24,:);
  omega_prob_array_180_150_600_1200(k,:) = OmegaProbArray_each(25,:);
  
  omega_prob_array_0_30_1200_1800(k,:) = OmegaProbArray_each(27,:);
  omega_prob_array_30_60_1200_1800(k,:) = OmegaProbArray_each(28,:);
  omega_prob_array_60_90_1200_1800(k,:) = OmegaProbArray_each(29,:);
  omega_prob_array_90_120_1200_1800(k,:) = OmegaProbArray_each(30,:);
  omega_prob_array_120_150_1200_1800(k,:) = OmegaProbArray_each(31,:);
  omega_prob_array_150_180_1200_1800(k,:) = OmegaProbArray_each(32,:);
  omega_prob_array_30_0_1200_1800(k,:) = OmegaProbArray_each(33,:);
  omega_prob_array_60_30_1200_1800(k,:) = OmegaProbArray_each(34,:);
  omega_prob_array_90_60_1200_1800(k,:) = OmegaProbArray_each(35,:);
  omega_prob_array_120_90_1200_1800(k,:) = OmegaProbArray_each(36,:);
  omega_prob_array_150_120_1200_1800(k,:) = OmegaProbArray_each(37,:);
  omega_prob_array_180_150_1200_1800(k,:) = OmegaProbArray_each(38,:);
  
  omega_prob_array_0_30_1800_2400(k,:) = OmegaProbArray_each(40,:);
  omega_prob_array_30_60_1800_2400(k,:) = OmegaProbArray_each(41,:);
  omega_prob_array_60_90_1800_2400(k,:) = OmegaProbArray_each(42,:);
  omega_prob_array_90_120_1800_2400(k,:) = OmegaProbArray_each(43,:);
  omega_prob_array_120_150_1800_2400(k,:) = OmegaProbArray_each(44,:);
  omega_prob_array_150_180_1800_2400(k,:) = OmegaProbArray_each(45,:);
  omega_prob_array_30_0_1800_2400(k,:) = OmegaProbArray_each(46,:);
  omega_prob_array_60_30_1800_2400(k,:) = OmegaProbArray_each(47,:);
  omega_prob_array_90_60_1800_2400(k,:) = OmegaProbArray_each(48,:);
  omega_prob_array_120_90_1800_2400(k,:) = OmegaProbArray_each(49,:);
  omega_prob_array_150_120_1800_2400(k,:) = OmegaProbArray_each(50,:);
  omega_prob_array_180_150_1800_2400(k,:) = OmegaProbArray_each(51,:);
  
  omega_prob_array_0_30_2400_3000(k,:) = OmegaProbArray_each(53,:);
  omega_prob_array_30_60_2400_3000(k,:) = OmegaProbArray_each(54,:);
  omega_prob_array_60_90_2400_3000(k,:) = OmegaProbArray_each(55,:);
  omega_prob_array_90_120_2400_3000(k,:) = OmegaProbArray_each(56,:);
  omega_prob_array_120_150_2400_3000(k,:) = OmegaProbArray_each(57,:);
  omega_prob_array_150_180_2400_3000(k,:) = OmegaProbArray_each(58,:);
  omega_prob_array_30_0_2400_3000(k,:) = OmegaProbArray_each(59,:);
  omega_prob_array_60_30_2400_3000(k,:) = OmegaProbArray_each(60,:);
  omega_prob_array_90_60_2400_3000(k,:) = OmegaProbArray_each(61,:);
  omega_prob_array_120_90_2400_3000(k,:) = OmegaProbArray_each(62,:);
  omega_prob_array_150_120_2400_3000(k,:) = OmegaProbArray_each(63,:);
  omega_prob_array_180_150_2400_3000(k,:) = OmegaProbArray_each(64,:);
  
  omega_prob_array_0_30_3000_3600(k,:) = OmegaProbArray_each(66,:);
  omega_prob_array_30_60_3000_3600(k,:) = OmegaProbArray_each(67,:);
  omega_prob_array_60_90_3000_3600(k,:) = OmegaProbArray_each(68,:);
  omega_prob_array_90_120_3000_3600(k,:) = OmegaProbArray_each(69,:);
  omega_prob_array_120_150_3000_3600(k,:) = OmegaProbArray_each(70,:);
  omega_prob_array_150_180_3000_3600(k,:) = OmegaProbArray_each(71,:);
  omega_prob_array_30_0_3000_3600(k,:) = OmegaProbArray_each(72,:);
  omega_prob_array_60_30_3000_3600(k,:) = OmegaProbArray_each(73,:);
  omega_prob_array_90_60_3000_3600(k,:) = OmegaProbArray_each(74,:);
  omega_prob_array_120_90_3000_3600(k,:) = OmegaProbArray_each(75,:);
  omega_prob_array_150_120_3000_3600(k,:) = OmegaProbArray_each(76,:);
  omega_prob_array_180_150_3000_3600(k,:) = OmegaProbArray_each(77,:);
end

OmegaProbArray_nanmean = [nanmean(omega_prob_array_0_30_0_600) ; nanmean(omega_prob_array_30_60_0_600) ; nanmean(omega_prob_array_60_90_0_600) ; 
    nanmean(omega_prob_array_90_120_0_600) ; nanmean(omega_prob_array_120_150_0_600) ; nanmean(omega_prob_array_150_180_0_600) ;
    nanmean(omega_prob_array_30_0_0_600) ; nanmean(omega_prob_array_60_30_0_600) ; nanmean(omega_prob_array_90_60_0_600) ; 
    nanmean(omega_prob_array_120_90_0_600) ; nanmean(omega_prob_array_150_120_0_600) ; nanmean(omega_prob_array_180_150_0_600) ; zeros(1,12) ;
    nanmean(omega_prob_array_0_30_600_1200) ; nanmean(omega_prob_array_30_60_600_1200) ; nanmean(omega_prob_array_60_90_600_1200) ; 
    nanmean(omega_prob_array_90_120_600_1200) ; nanmean(omega_prob_array_120_150_600_1200) ; nanmean(omega_prob_array_150_180_600_1200) ;
    nanmean(omega_prob_array_30_0_600_1200) ; nanmean(omega_prob_array_60_30_600_1200) ; nanmean(omega_prob_array_90_60_600_1200) ; 
    nanmean(omega_prob_array_120_90_600_1200) ; nanmean(omega_prob_array_150_120_600_1200) ; nanmean(omega_prob_array_180_150_600_1200) ; zeros(1,12) ; 
    nanmean(omega_prob_array_0_30_1200_1800) ; nanmean(omega_prob_array_30_60_1200_1800) ; nanmean(omega_prob_array_60_90_1200_1800) ; 
    nanmean(omega_prob_array_90_120_1200_1800) ; nanmean(omega_prob_array_120_150_1200_1800) ; nanmean(omega_prob_array_150_180_1200_1800) ;
    nanmean(omega_prob_array_30_0_1200_1800) ; nanmean(omega_prob_array_60_30_1200_1800) ; nanmean(omega_prob_array_90_60_1200_1800) ; 
    nanmean(omega_prob_array_120_90_1200_1800) ; nanmean(omega_prob_array_150_120_1200_1800) ; nanmean(omega_prob_array_180_150_1200_1800) ; zeros(1,12) ;
    nanmean(omega_prob_array_0_30_1800_2400) ; nanmean(omega_prob_array_30_60_1800_2400) ; nanmean(omega_prob_array_60_90_1800_2400) ; 
    nanmean(omega_prob_array_90_120_1800_2400) ; nanmean(omega_prob_array_120_150_1800_2400) ; nanmean(omega_prob_array_150_180_1800_2400) ;
    nanmean(omega_prob_array_30_0_1800_2400) ; nanmean(omega_prob_array_60_30_1800_2400) ; nanmean(omega_prob_array_90_60_1800_2400) ; 
    nanmean(omega_prob_array_120_90_1800_2400) ; nanmean(omega_prob_array_150_120_1800_2400) ; nanmean(omega_prob_array_180_150_1800_2400) ; zeros(1,12) ;
    nanmean(omega_prob_array_0_30_2400_3000) ; nanmean(omega_prob_array_30_60_2400_3000) ; nanmean(omega_prob_array_60_90_2400_3000) ; 
    nanmean(omega_prob_array_90_120_2400_3000) ; nanmean(omega_prob_array_120_150_2400_3000) ; nanmean(omega_prob_array_150_180_2400_3000) ;
    nanmean(omega_prob_array_30_0_2400_3000) ; nanmean(omega_prob_array_60_30_2400_3000) ; nanmean(omega_prob_array_90_60_2400_3000) ; 
    nanmean(omega_prob_array_120_90_2400_3000) ; nanmean(omega_prob_array_150_120_2400_3000) ; nanmean(omega_prob_array_180_150_2400_3000) ; zeros(1,12) ;
    nanmean(omega_prob_array_0_30_3000_3600) ; nanmean(omega_prob_array_30_60_3000_3600) ; nanmean(omega_prob_array_60_90_3000_3600) ; 
    nanmean(omega_prob_array_90_120_3000_3600) ; nanmean(omega_prob_array_120_150_3000_3600) ; nanmean(omega_prob_array_150_180_3000_3600) ;
    nanmean(omega_prob_array_30_0_3000_3600) ; nanmean(omega_prob_array_60_30_3000_3600) ; nanmean(omega_prob_array_90_60_3000_3600) ; 
    nanmean(omega_prob_array_120_90_3000_3600) ; nanmean(omega_prob_array_150_120_3000_3600) ; nanmean(omega_prob_array_180_150_3000_3600)] ;

OmegaProbArray_nanstd = [nanstd(omega_prob_array_0_30_0_600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_30_60_0_600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_90_0_600,0,1)./sqrt(L_omega) ; 
    nanstd(omega_prob_array_90_120_0_600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_120_150_0_600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_180_0_600,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_30_0_0_600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_30_0_600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_90_60_0_600,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_120_90_0_600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_120_0_600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_180_150_0_600,0,1)./sqrt(L_omega) ; zeros(1,12) ;
    nanstd(omega_prob_array_0_30_600_1200,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_30_60_600_1200,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_90_600_1200,0,1)./sqrt(L_omega) ; 
    nanstd(omega_prob_array_90_120_600_1200,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_120_150_600_1200,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_180_600_1200,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_30_0_600_1200,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_30_600_1200,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_90_60_600_1200,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_120_90_600_1200,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_120_600_1200,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_180_150_600_1200,0,1)./sqrt(L_omega) ; zeros(1,12) ;
    nanstd(omega_prob_array_0_30_1200_1800,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_30_60_1200_1800,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_90_1200_1800,0,1)./sqrt(L_omega) ; 
    nanstd(omega_prob_array_90_120_1200_1800,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_120_150_1200_1800,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_180_1200_1800,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_30_0_1200_1800,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_30_1200_1800,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_90_60_1200_1800,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_120_90_1200_1800,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_120_1200_1800,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_180_150_1200_1800,0,1)./sqrt(L_omega) ; zeros(1,12) ;
    nanstd(omega_prob_array_0_30_1800_2400,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_30_60_1800_2400,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_90_1800_2400,0,1)./sqrt(L_omega) ; 
    nanstd(omega_prob_array_90_120_1800_2400,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_120_150_1800_2400,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_180_1800_2400,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_30_0_1800_2400,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_30_1800_2400,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_90_60_1800_2400,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_120_90_1800_2400,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_120_1800_2400,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_180_150_1800_2400,0,1)./sqrt(L_omega) ; zeros(1,12) ;
    nanstd(omega_prob_array_0_30_2400_3000,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_30_60_2400_3000,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_90_2400_3000,0,1)./sqrt(L_omega) ; 
    nanstd(omega_prob_array_90_120_2400_3000,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_120_150_2400_3000,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_180_2400_3000,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_30_0_2400_3000,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_30_2400_3000,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_90_60_2400_3000,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_120_90_2400_3000,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_120_2400_3000,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_180_150_2400_3000,0,1)./sqrt(L_omega) ; zeros(1,12) ;
    nanstd(omega_prob_array_0_30_3000_3600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_30_60_3000_3600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_90_3000_3600,0,1)./sqrt(L_omega) ; 
    nanstd(omega_prob_array_90_120_3000_3600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_120_150_3000_3600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_180_3000_3600,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_30_0_3000_3600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_60_30_3000_3600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_90_60_3000_3600,0,1)./sqrt(L_omega) ;
    nanstd(omega_prob_array_120_90_3000_3600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_150_120_3000_3600,0,1)./sqrt(L_omega) ; nanstd(omega_prob_array_180_150_3000_3600,0,1)./sqrt(L_omega)] ;

OmegaProbArray = [OmegaProbArray_nanmean zeros(77,1) OmegaProbArray_nanstd];
    
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'omega_prob_ave','.csv'];
csvwrite(dateAndtime, OmegaProbArray(:,1:12));



ReversalProbStruct = dir('*reversal_prob_all.csv');
L_reversal=length(ReversalProbStruct);
  
reversal_prob_array_0_30_0_600 = NaN(L_reversal,12);
reversal_prob_array_30_60_0_600 = NaN(L_reversal,12);
reversal_prob_array_60_90_0_600 = NaN(L_reversal,12);
reversal_prob_array_90_120_0_600 = NaN(L_reversal,12);
reversal_prob_array_120_150_0_600 = NaN(L_reversal,12);
reversal_prob_array_150_180_0_600 = NaN(L_reversal,12);
reversal_prob_array_30_0_0_600 = NaN(L_reversal,12);
reversal_prob_array_60_30_0_600 = NaN(L_reversal,12);
reversal_prob_array_90_60_0_600 = NaN(L_reversal,12);
reversal_prob_array_120_90_0_600 = NaN(L_reversal,12);
reversal_prob_array_150_120_0_600 = NaN(L_reversal,12);
reversal_prob_array_180_150_0_600 = NaN(L_reversal,12);

reversal_prob_array_0_30_600_1200 = NaN(L_reversal,12);
reversal_prob_array_30_60_600_1200 = NaN(L_reversal,12);
reversal_prob_array_60_90_600_1200 = NaN(L_reversal,12);
reversal_prob_array_90_120_600_1200 = NaN(L_reversal,12);
reversal_prob_array_120_150_600_1200 = NaN(L_reversal,12);
reversal_prob_array_150_180_600_1200 = NaN(L_reversal,12);
reversal_prob_array_30_0_600_1200 = NaN(L_reversal,12);
reversal_prob_array_60_30_600_1200 = NaN(L_reversal,12);
reversal_prob_array_90_60_600_1200 = NaN(L_reversal,12);
reversal_prob_array_120_90_600_1200 = NaN(L_reversal,12);
reversal_prob_array_150_120_600_1200 = NaN(L_reversal,12);
reversal_prob_array_180_150_600_1200 = NaN(L_reversal,12);

reversal_prob_array_0_30_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_30_60_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_60_90_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_90_120_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_120_150_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_150_180_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_30_0_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_60_30_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_90_60_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_120_90_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_150_120_1200_1800 = NaN(L_reversal,12);
reversal_prob_array_180_150_1200_1800 = NaN(L_reversal,12);

reversal_prob_array_0_30_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_30_60_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_60_90_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_90_120_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_120_150_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_150_180_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_30_0_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_60_30_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_90_60_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_120_90_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_150_120_1800_2400 = NaN(L_reversal,12);
reversal_prob_array_180_150_1800_2400 = NaN(L_reversal,12);

reversal_prob_array_0_30_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_30_60_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_60_90_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_90_120_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_120_150_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_150_180_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_30_0_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_60_30_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_90_60_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_120_90_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_150_120_2400_3000 = NaN(L_reversal,12);
reversal_prob_array_180_150_2400_3000 = NaN(L_reversal,12);

reversal_prob_array_0_30_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_30_60_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_60_90_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_90_120_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_120_150_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_150_180_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_30_0_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_60_30_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_90_60_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_120_90_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_150_120_3000_3600 = NaN(L_reversal,12);
reversal_prob_array_180_150_3000_3600 = NaN(L_reversal,12);

for k=1:L_reversal
  ReversalProbArray_each = load(ReversalProbStruct(k,:).name);
  
  reversal_prob_array_0_30_0_600(k,:) = ReversalProbArray_each(1,:);
  reversal_prob_array_30_60_0_600(k,:) = ReversalProbArray_each(2,:);
  reversal_prob_array_60_90_0_600(k,:) = ReversalProbArray_each(3,:);
  reversal_prob_array_90_120_0_600(k,:) = ReversalProbArray_each(4,:);
  reversal_prob_array_120_150_0_600(k,:) = ReversalProbArray_each(5,:);
  reversal_prob_array_150_180_0_600(k,:) = ReversalProbArray_each(6,:);
  reversal_prob_array_30_0_0_600(k,:) = ReversalProbArray_each(7,:);
  reversal_prob_array_60_30_0_600(k,:) = ReversalProbArray_each(8,:);
  reversal_prob_array_90_60_0_600(k,:) = ReversalProbArray_each(9,:);
  reversal_prob_array_120_90_0_600(k,:) = ReversalProbArray_each(10,:);
  reversal_prob_array_150_120_0_600(k,:) = ReversalProbArray_each(11,:);
  reversal_prob_array_180_150_0_600(k,:) = ReversalProbArray_each(12,:);
  
  reversal_prob_array_0_30_600_1200(k,:) = ReversalProbArray_each(14,:);
  reversal_prob_array_30_60_600_1200(k,:) = ReversalProbArray_each(15,:);
  reversal_prob_array_60_90_600_1200(k,:) = ReversalProbArray_each(16,:);
  reversal_prob_array_90_120_600_1200(k,:) = ReversalProbArray_each(17,:);
  reversal_prob_array_120_150_600_1200(k,:) = ReversalProbArray_each(18,:);
  reversal_prob_array_150_180_600_1200(k,:) = ReversalProbArray_each(19,:);
  reversal_prob_array_30_0_600_1200(k,:) = ReversalProbArray_each(20,:);
  reversal_prob_array_60_30_600_1200(k,:) = ReversalProbArray_each(21,:);
  reversal_prob_array_90_60_600_1200(k,:) = ReversalProbArray_each(22,:);
  reversal_prob_array_120_90_600_1200(k,:) = ReversalProbArray_each(23,:);
  reversal_prob_array_150_120_600_1200(k,:) = ReversalProbArray_each(24,:);
  reversal_prob_array_180_150_600_1200(k,:) = ReversalProbArray_each(25,:);
  
  reversal_prob_array_0_30_1200_1800(k,:) = ReversalProbArray_each(27,:);
  reversal_prob_array_30_60_1200_1800(k,:) = ReversalProbArray_each(28,:);
  reversal_prob_array_60_90_1200_1800(k,:) = ReversalProbArray_each(29,:);
  reversal_prob_array_90_120_1200_1800(k,:) = ReversalProbArray_each(30,:);
  reversal_prob_array_120_150_1200_1800(k,:) = ReversalProbArray_each(31,:);
  reversal_prob_array_150_180_1200_1800(k,:) = ReversalProbArray_each(32,:);
  reversal_prob_array_30_0_1200_1800(k,:) = ReversalProbArray_each(33,:);
  reversal_prob_array_60_30_1200_1800(k,:) = ReversalProbArray_each(34,:);
  reversal_prob_array_90_60_1200_1800(k,:) = ReversalProbArray_each(35,:);
  reversal_prob_array_120_90_1200_1800(k,:) = ReversalProbArray_each(36,:);
  reversal_prob_array_150_120_1200_1800(k,:) = ReversalProbArray_each(37,:);
  reversal_prob_array_180_150_1200_1800(k,:) = ReversalProbArray_each(38,:);
  
  reversal_prob_array_0_30_1800_2400(k,:) = ReversalProbArray_each(40,:);
  reversal_prob_array_30_60_1800_2400(k,:) = ReversalProbArray_each(41,:);
  reversal_prob_array_60_90_1800_2400(k,:) = ReversalProbArray_each(42,:);
  reversal_prob_array_90_120_1800_2400(k,:) = ReversalProbArray_each(43,:);
  reversal_prob_array_120_150_1800_2400(k,:) = ReversalProbArray_each(44,:);
  reversal_prob_array_150_180_1800_2400(k,:) = ReversalProbArray_each(45,:);
  reversal_prob_array_30_0_1800_2400(k,:) = ReversalProbArray_each(46,:);
  reversal_prob_array_60_30_1800_2400(k,:) = ReversalProbArray_each(47,:);
  reversal_prob_array_90_60_1800_2400(k,:) = ReversalProbArray_each(48,:);
  reversal_prob_array_120_90_1800_2400(k,:) = ReversalProbArray_each(49,:);
  reversal_prob_array_150_120_1800_2400(k,:) = ReversalProbArray_each(50,:);
  reversal_prob_array_180_150_1800_2400(k,:) = ReversalProbArray_each(51,:);
  
  reversal_prob_array_0_30_2400_3000(k,:) = ReversalProbArray_each(53,:);
  reversal_prob_array_30_60_2400_3000(k,:) = ReversalProbArray_each(54,:);
  reversal_prob_array_60_90_2400_3000(k,:) = ReversalProbArray_each(55,:);
  reversal_prob_array_90_120_2400_3000(k,:) = ReversalProbArray_each(56,:);
  reversal_prob_array_120_150_2400_3000(k,:) = ReversalProbArray_each(57,:);
  reversal_prob_array_150_180_2400_3000(k,:) = ReversalProbArray_each(58,:);
  reversal_prob_array_30_0_2400_3000(k,:) = ReversalProbArray_each(59,:);
  reversal_prob_array_60_30_2400_3000(k,:) = ReversalProbArray_each(60,:);
  reversal_prob_array_90_60_2400_3000(k,:) = ReversalProbArray_each(61,:);
  reversal_prob_array_120_90_2400_3000(k,:) = ReversalProbArray_each(62,:);
  reversal_prob_array_150_120_2400_3000(k,:) = ReversalProbArray_each(63,:);
  reversal_prob_array_180_150_2400_3000(k,:) = ReversalProbArray_each(64,:);
  
  reversal_prob_array_0_30_3000_3600(k,:) = ReversalProbArray_each(66,:);
  reversal_prob_array_30_60_3000_3600(k,:) = ReversalProbArray_each(67,:);
  reversal_prob_array_60_90_3000_3600(k,:) = ReversalProbArray_each(68,:);
  reversal_prob_array_90_120_3000_3600(k,:) = ReversalProbArray_each(69,:);
  reversal_prob_array_120_150_3000_3600(k,:) = ReversalProbArray_each(70,:);
  reversal_prob_array_150_180_3000_3600(k,:) = ReversalProbArray_each(71,:);
  reversal_prob_array_30_0_3000_3600(k,:) = ReversalProbArray_each(72,:);
  reversal_prob_array_60_30_3000_3600(k,:) = ReversalProbArray_each(73,:);
  reversal_prob_array_90_60_3000_3600(k,:) = ReversalProbArray_each(74,:);
  reversal_prob_array_120_90_3000_3600(k,:) = ReversalProbArray_each(75,:);
  reversal_prob_array_150_120_3000_3600(k,:) = ReversalProbArray_each(76,:);
  reversal_prob_array_180_150_3000_3600(k,:) = ReversalProbArray_each(77,:);
end

ReversalProbArray_nanmean = [nanmean(reversal_prob_array_0_30_0_600) ; nanmean(reversal_prob_array_30_60_0_600) ; nanmean(reversal_prob_array_60_90_0_600) ; 
    nanmean(reversal_prob_array_90_120_0_600) ; nanmean(reversal_prob_array_120_150_0_600) ; nanmean(reversal_prob_array_150_180_0_600) ;
    nanmean(reversal_prob_array_30_0_0_600) ; nanmean(reversal_prob_array_60_30_0_600) ; nanmean(reversal_prob_array_90_60_0_600) ; 
    nanmean(reversal_prob_array_120_90_0_600) ; nanmean(reversal_prob_array_150_120_0_600) ; nanmean(reversal_prob_array_180_150_0_600) ; zeros(1,12) ;
    nanmean(reversal_prob_array_0_30_600_1200) ; nanmean(reversal_prob_array_30_60_600_1200) ; nanmean(reversal_prob_array_60_90_600_1200) ; 
    nanmean(reversal_prob_array_90_120_600_1200) ; nanmean(reversal_prob_array_120_150_600_1200) ; nanmean(reversal_prob_array_150_180_600_1200) ;
    nanmean(reversal_prob_array_30_0_600_1200) ; nanmean(reversal_prob_array_60_30_600_1200) ; nanmean(reversal_prob_array_90_60_600_1200) ; 
    nanmean(reversal_prob_array_120_90_600_1200) ; nanmean(reversal_prob_array_150_120_600_1200) ; nanmean(reversal_prob_array_180_150_600_1200) ; zeros(1,12) ; 
    nanmean(reversal_prob_array_0_30_1200_1800) ; nanmean(reversal_prob_array_30_60_1200_1800) ; nanmean(reversal_prob_array_60_90_1200_1800) ; 
    nanmean(reversal_prob_array_90_120_1200_1800) ; nanmean(reversal_prob_array_120_150_1200_1800) ; nanmean(reversal_prob_array_150_180_1200_1800) ;
    nanmean(reversal_prob_array_30_0_1200_1800) ; nanmean(reversal_prob_array_60_30_1200_1800) ; nanmean(reversal_prob_array_90_60_1200_1800) ; 
    nanmean(reversal_prob_array_120_90_1200_1800) ; nanmean(reversal_prob_array_150_120_1200_1800) ; nanmean(reversal_prob_array_180_150_1200_1800) ; zeros(1,12) ;
    nanmean(reversal_prob_array_0_30_1800_2400) ; nanmean(reversal_prob_array_30_60_1800_2400) ; nanmean(reversal_prob_array_60_90_1800_2400) ; 
    nanmean(reversal_prob_array_90_120_1800_2400) ; nanmean(reversal_prob_array_120_150_1800_2400) ; nanmean(reversal_prob_array_150_180_1800_2400) ;
    nanmean(reversal_prob_array_30_0_1800_2400) ; nanmean(reversal_prob_array_60_30_1800_2400) ; nanmean(reversal_prob_array_90_60_1800_2400) ; 
    nanmean(reversal_prob_array_120_90_1800_2400) ; nanmean(reversal_prob_array_150_120_1800_2400) ; nanmean(reversal_prob_array_180_150_1800_2400) ; zeros(1,12) ;
    nanmean(reversal_prob_array_0_30_2400_3000) ; nanmean(reversal_prob_array_30_60_2400_3000) ; nanmean(reversal_prob_array_60_90_2400_3000) ; 
    nanmean(reversal_prob_array_90_120_2400_3000) ; nanmean(reversal_prob_array_120_150_2400_3000) ; nanmean(reversal_prob_array_150_180_2400_3000) ;
    nanmean(reversal_prob_array_30_0_2400_3000) ; nanmean(reversal_prob_array_60_30_2400_3000) ; nanmean(reversal_prob_array_90_60_2400_3000) ; 
    nanmean(reversal_prob_array_120_90_2400_3000) ; nanmean(reversal_prob_array_150_120_2400_3000) ; nanmean(reversal_prob_array_180_150_2400_3000) ; zeros(1,12) ;
    nanmean(reversal_prob_array_0_30_3000_3600) ; nanmean(reversal_prob_array_30_60_3000_3600) ; nanmean(reversal_prob_array_60_90_3000_3600) ; 
    nanmean(reversal_prob_array_90_120_3000_3600) ; nanmean(reversal_prob_array_120_150_3000_3600) ; nanmean(reversal_prob_array_150_180_3000_3600) ;
    nanmean(reversal_prob_array_30_0_3000_3600) ; nanmean(reversal_prob_array_60_30_3000_3600) ; nanmean(reversal_prob_array_90_60_3000_3600) ; 
    nanmean(reversal_prob_array_120_90_3000_3600) ; nanmean(reversal_prob_array_150_120_3000_3600) ; nanmean(reversal_prob_array_180_150_3000_3600)] ;

ReversalProbArray_nanstd = [nanstd(reversal_prob_array_0_30_0_600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_30_60_0_600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_90_0_600,0,1)./sqrt(L_reversal) ; 
    nanstd(reversal_prob_array_90_120_0_600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_120_150_0_600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_180_0_600,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_30_0_0_600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_30_0_600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_90_60_0_600,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_120_90_0_600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_120_0_600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_180_150_0_600,0,1)./sqrt(L_reversal) ; zeros(1,12) ;
    nanstd(reversal_prob_array_0_30_600_1200,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_30_60_600_1200,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_90_600_1200,0,1)./sqrt(L_reversal) ; 
    nanstd(reversal_prob_array_90_120_600_1200,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_120_150_600_1200,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_180_600_1200,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_30_0_600_1200,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_30_600_1200,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_90_60_600_1200,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_120_90_600_1200,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_120_600_1200,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_180_150_600_1200,0,1)./sqrt(L_reversal) ; zeros(1,12) ;
    nanstd(reversal_prob_array_0_30_1200_1800,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_30_60_1200_1800,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_90_1200_1800,0,1)./sqrt(L_reversal) ; 
    nanstd(reversal_prob_array_90_120_1200_1800,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_120_150_1200_1800,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_180_1200_1800,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_30_0_1200_1800,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_30_1200_1800,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_90_60_1200_1800,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_120_90_1200_1800,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_120_1200_1800,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_180_150_1200_1800,0,1)./sqrt(L_reversal) ; zeros(1,12) ;
    nanstd(reversal_prob_array_0_30_1800_2400,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_30_60_1800_2400,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_90_1800_2400,0,1)./sqrt(L_reversal) ; 
    nanstd(reversal_prob_array_90_120_1800_2400,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_120_150_1800_2400,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_180_1800_2400,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_30_0_1800_2400,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_30_1800_2400,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_90_60_1800_2400,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_120_90_1800_2400,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_120_1800_2400,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_180_150_1800_2400,0,1)./sqrt(L_reversal) ; zeros(1,12) ;
    nanstd(reversal_prob_array_0_30_2400_3000,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_30_60_2400_3000,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_90_2400_3000,0,1)./sqrt(L_reversal) ; 
    nanstd(reversal_prob_array_90_120_2400_3000,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_120_150_2400_3000,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_180_2400_3000,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_30_0_2400_3000,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_30_2400_3000,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_90_60_2400_3000,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_120_90_2400_3000,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_120_2400_3000,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_180_150_2400_3000,0,1)./sqrt(L_reversal) ; zeros(1,12) ;
    nanstd(reversal_prob_array_0_30_3000_3600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_30_60_3000_3600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_90_3000_3600,0,1)./sqrt(L_reversal) ; 
    nanstd(reversal_prob_array_90_120_3000_3600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_120_150_3000_3600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_180_3000_3600,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_30_0_3000_3600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_60_30_3000_3600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_90_60_3000_3600,0,1)./sqrt(L_reversal) ;
    nanstd(reversal_prob_array_120_90_3000_3600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_150_120_3000_3600,0,1)./sqrt(L_reversal) ; nanstd(reversal_prob_array_180_150_3000_3600,0,1)./sqrt(L_reversal)] ;

ReversalProbArray = [ReversalProbArray_nanmean zeros(77,1) ReversalProbArray_nanstd];
    
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'reversal_prob_ave','.csv'];
csvwrite(dateAndtime, ReversalProbArray(:,1:12));



RevturnProbStruct = dir('*revturn_prob_all.csv');
L_revturn=length(RevturnProbStruct);
  
revturn_prob_array_0_30_0_600 = NaN(L_revturn,12);
revturn_prob_array_30_60_0_600 = NaN(L_revturn,12);
revturn_prob_array_60_90_0_600 = NaN(L_revturn,12);
revturn_prob_array_90_120_0_600 = NaN(L_revturn,12);
revturn_prob_array_120_150_0_600 = NaN(L_revturn,12);
revturn_prob_array_150_180_0_600 = NaN(L_revturn,12);
revturn_prob_array_30_0_0_600 = NaN(L_revturn,12);
revturn_prob_array_60_30_0_600 = NaN(L_revturn,12);
revturn_prob_array_90_60_0_600 = NaN(L_revturn,12);
revturn_prob_array_120_90_0_600 = NaN(L_revturn,12);
revturn_prob_array_150_120_0_600 = NaN(L_revturn,12);
revturn_prob_array_180_150_0_600 = NaN(L_revturn,12);

revturn_prob_array_0_30_600_1200 = NaN(L_revturn,12);
revturn_prob_array_30_60_600_1200 = NaN(L_revturn,12);
revturn_prob_array_60_90_600_1200 = NaN(L_revturn,12);
revturn_prob_array_90_120_600_1200 = NaN(L_revturn,12);
revturn_prob_array_120_150_600_1200 = NaN(L_revturn,12);
revturn_prob_array_150_180_600_1200 = NaN(L_revturn,12);
revturn_prob_array_30_0_600_1200 = NaN(L_revturn,12);
revturn_prob_array_60_30_600_1200 = NaN(L_revturn,12);
revturn_prob_array_90_60_600_1200 = NaN(L_revturn,12);
revturn_prob_array_120_90_600_1200 = NaN(L_revturn,12);
revturn_prob_array_150_120_600_1200 = NaN(L_revturn,12);
revturn_prob_array_180_150_600_1200 = NaN(L_revturn,12);

revturn_prob_array_0_30_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_30_60_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_60_90_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_90_120_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_120_150_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_150_180_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_30_0_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_60_30_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_90_60_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_120_90_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_150_120_1200_1800 = NaN(L_revturn,12);
revturn_prob_array_180_150_1200_1800 = NaN(L_revturn,12);

revturn_prob_array_0_30_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_30_60_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_60_90_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_90_120_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_120_150_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_150_180_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_30_0_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_60_30_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_90_60_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_120_90_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_150_120_1800_2400 = NaN(L_revturn,12);
revturn_prob_array_180_150_1800_2400 = NaN(L_revturn,12);

revturn_prob_array_0_30_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_30_60_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_60_90_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_90_120_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_120_150_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_150_180_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_30_0_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_60_30_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_90_60_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_120_90_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_150_120_2400_3000 = NaN(L_revturn,12);
revturn_prob_array_180_150_2400_3000 = NaN(L_revturn,12);

revturn_prob_array_0_30_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_30_60_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_60_90_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_90_120_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_120_150_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_150_180_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_30_0_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_60_30_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_90_60_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_120_90_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_150_120_3000_3600 = NaN(L_revturn,12);
revturn_prob_array_180_150_3000_3600 = NaN(L_revturn,12);

for k=1:L_revturn
  RevturnProbArray_each = load(RevturnProbStruct(k,:).name);
  
  revturn_prob_array_0_30_0_600(k,:) = RevturnProbArray_each(1,:);
  revturn_prob_array_30_60_0_600(k,:) = RevturnProbArray_each(2,:);
  revturn_prob_array_60_90_0_600(k,:) = RevturnProbArray_each(3,:);
  revturn_prob_array_90_120_0_600(k,:) = RevturnProbArray_each(4,:);
  revturn_prob_array_120_150_0_600(k,:) = RevturnProbArray_each(5,:);
  revturn_prob_array_150_180_0_600(k,:) = RevturnProbArray_each(6,:);
  revturn_prob_array_30_0_0_600(k,:) = RevturnProbArray_each(7,:);
  revturn_prob_array_60_30_0_600(k,:) = RevturnProbArray_each(8,:);
  revturn_prob_array_90_60_0_600(k,:) = RevturnProbArray_each(9,:);
  revturn_prob_array_120_90_0_600(k,:) = RevturnProbArray_each(10,:);
  revturn_prob_array_150_120_0_600(k,:) = RevturnProbArray_each(11,:);
  revturn_prob_array_180_150_0_600(k,:) = RevturnProbArray_each(12,:);
  
  revturn_prob_array_0_30_600_1200(k,:) = RevturnProbArray_each(14,:);
  revturn_prob_array_30_60_600_1200(k,:) = RevturnProbArray_each(15,:);
  revturn_prob_array_60_90_600_1200(k,:) = RevturnProbArray_each(16,:);
  revturn_prob_array_90_120_600_1200(k,:) = RevturnProbArray_each(17,:);
  revturn_prob_array_120_150_600_1200(k,:) = RevturnProbArray_each(18,:);
  revturn_prob_array_150_180_600_1200(k,:) = RevturnProbArray_each(19,:);
  revturn_prob_array_30_0_600_1200(k,:) = RevturnProbArray_each(20,:);
  revturn_prob_array_60_30_600_1200(k,:) = RevturnProbArray_each(21,:);
  revturn_prob_array_90_60_600_1200(k,:) = RevturnProbArray_each(22,:);
  revturn_prob_array_120_90_600_1200(k,:) = RevturnProbArray_each(23,:);
  revturn_prob_array_150_120_600_1200(k,:) = RevturnProbArray_each(24,:);
  revturn_prob_array_180_150_600_1200(k,:) = RevturnProbArray_each(25,:);
  
  revturn_prob_array_0_30_1200_1800(k,:) = RevturnProbArray_each(27,:);
  revturn_prob_array_30_60_1200_1800(k,:) = RevturnProbArray_each(28,:);
  revturn_prob_array_60_90_1200_1800(k,:) = RevturnProbArray_each(29,:);
  revturn_prob_array_90_120_1200_1800(k,:) = RevturnProbArray_each(30,:);
  revturn_prob_array_120_150_1200_1800(k,:) = RevturnProbArray_each(31,:);
  revturn_prob_array_150_180_1200_1800(k,:) = RevturnProbArray_each(32,:);
  revturn_prob_array_30_0_1200_1800(k,:) = RevturnProbArray_each(33,:);
  revturn_prob_array_60_30_1200_1800(k,:) = RevturnProbArray_each(34,:);
  revturn_prob_array_90_60_1200_1800(k,:) = RevturnProbArray_each(35,:);
  revturn_prob_array_120_90_1200_1800(k,:) = RevturnProbArray_each(36,:);
  revturn_prob_array_150_120_1200_1800(k,:) = RevturnProbArray_each(37,:);
  revturn_prob_array_180_150_1200_1800(k,:) = RevturnProbArray_each(38,:);
  
  revturn_prob_array_0_30_1800_2400(k,:) = RevturnProbArray_each(40,:);
  revturn_prob_array_30_60_1800_2400(k,:) = RevturnProbArray_each(41,:);
  revturn_prob_array_60_90_1800_2400(k,:) = RevturnProbArray_each(42,:);
  revturn_prob_array_90_120_1800_2400(k,:) = RevturnProbArray_each(43,:);
  revturn_prob_array_120_150_1800_2400(k,:) = RevturnProbArray_each(44,:);
  revturn_prob_array_150_180_1800_2400(k,:) = RevturnProbArray_each(45,:);
  revturn_prob_array_30_0_1800_2400(k,:) = RevturnProbArray_each(46,:);
  revturn_prob_array_60_30_1800_2400(k,:) = RevturnProbArray_each(47,:);
  revturn_prob_array_90_60_1800_2400(k,:) = RevturnProbArray_each(48,:);
  revturn_prob_array_120_90_1800_2400(k,:) = RevturnProbArray_each(49,:);
  revturn_prob_array_150_120_1800_2400(k,:) = RevturnProbArray_each(50,:);
  revturn_prob_array_180_150_1800_2400(k,:) = RevturnProbArray_each(51,:);
  
  revturn_prob_array_0_30_2400_3000(k,:) = RevturnProbArray_each(53,:);
  revturn_prob_array_30_60_2400_3000(k,:) = RevturnProbArray_each(54,:);
  revturn_prob_array_60_90_2400_3000(k,:) = RevturnProbArray_each(55,:);
  revturn_prob_array_90_120_2400_3000(k,:) = RevturnProbArray_each(56,:);
  revturn_prob_array_120_150_2400_3000(k,:) = RevturnProbArray_each(57,:);
  revturn_prob_array_150_180_2400_3000(k,:) = RevturnProbArray_each(58,:);
  revturn_prob_array_30_0_2400_3000(k,:) = RevturnProbArray_each(59,:);
  revturn_prob_array_60_30_2400_3000(k,:) = RevturnProbArray_each(60,:);
  revturn_prob_array_90_60_2400_3000(k,:) = RevturnProbArray_each(61,:);
  revturn_prob_array_120_90_2400_3000(k,:) = RevturnProbArray_each(62,:);
  revturn_prob_array_150_120_2400_3000(k,:) = RevturnProbArray_each(63,:);
  revturn_prob_array_180_150_2400_3000(k,:) = RevturnProbArray_each(64,:);
  
  revturn_prob_array_0_30_3000_3600(k,:) = RevturnProbArray_each(66,:);
  revturn_prob_array_30_60_3000_3600(k,:) = RevturnProbArray_each(67,:);
  revturn_prob_array_60_90_3000_3600(k,:) = RevturnProbArray_each(68,:);
  revturn_prob_array_90_120_3000_3600(k,:) = RevturnProbArray_each(69,:);
  revturn_prob_array_120_150_3000_3600(k,:) = RevturnProbArray_each(70,:);
  revturn_prob_array_150_180_3000_3600(k,:) = RevturnProbArray_each(71,:);
  revturn_prob_array_30_0_3000_3600(k,:) = RevturnProbArray_each(72,:);
  revturn_prob_array_60_30_3000_3600(k,:) = RevturnProbArray_each(73,:);
  revturn_prob_array_90_60_3000_3600(k,:) = RevturnProbArray_each(74,:);
  revturn_prob_array_120_90_3000_3600(k,:) = RevturnProbArray_each(75,:);
  revturn_prob_array_150_120_3000_3600(k,:) = RevturnProbArray_each(76,:);
  revturn_prob_array_180_150_3000_3600(k,:) = RevturnProbArray_each(77,:);
end

RevturnProbArray_nanmean = [nanmean(revturn_prob_array_0_30_0_600) ; nanmean(revturn_prob_array_30_60_0_600) ; nanmean(revturn_prob_array_60_90_0_600) ; 
    nanmean(revturn_prob_array_90_120_0_600) ; nanmean(revturn_prob_array_120_150_0_600) ; nanmean(revturn_prob_array_150_180_0_600) ;
    nanmean(revturn_prob_array_30_0_0_600) ; nanmean(revturn_prob_array_60_30_0_600) ; nanmean(revturn_prob_array_90_60_0_600) ; 
    nanmean(revturn_prob_array_120_90_0_600) ; nanmean(revturn_prob_array_150_120_0_600) ; nanmean(revturn_prob_array_180_150_0_600) ; zeros(1,12) ;
    nanmean(revturn_prob_array_0_30_600_1200) ; nanmean(revturn_prob_array_30_60_600_1200) ; nanmean(revturn_prob_array_60_90_600_1200) ; 
    nanmean(revturn_prob_array_90_120_600_1200) ; nanmean(revturn_prob_array_120_150_600_1200) ; nanmean(revturn_prob_array_150_180_600_1200) ;
    nanmean(revturn_prob_array_30_0_600_1200) ; nanmean(revturn_prob_array_60_30_600_1200) ; nanmean(revturn_prob_array_90_60_600_1200) ; 
    nanmean(revturn_prob_array_120_90_600_1200) ; nanmean(revturn_prob_array_150_120_600_1200) ; nanmean(revturn_prob_array_180_150_600_1200) ; zeros(1,12) ; 
    nanmean(revturn_prob_array_0_30_1200_1800) ; nanmean(revturn_prob_array_30_60_1200_1800) ; nanmean(revturn_prob_array_60_90_1200_1800) ; 
    nanmean(revturn_prob_array_90_120_1200_1800) ; nanmean(revturn_prob_array_120_150_1200_1800) ; nanmean(revturn_prob_array_150_180_1200_1800) ;
    nanmean(revturn_prob_array_30_0_1200_1800) ; nanmean(revturn_prob_array_60_30_1200_1800) ; nanmean(revturn_prob_array_90_60_1200_1800) ; 
    nanmean(revturn_prob_array_120_90_1200_1800) ; nanmean(revturn_prob_array_150_120_1200_1800) ; nanmean(revturn_prob_array_180_150_1200_1800) ; zeros(1,12) ;
    nanmean(revturn_prob_array_0_30_1800_2400) ; nanmean(revturn_prob_array_30_60_1800_2400) ; nanmean(revturn_prob_array_60_90_1800_2400) ; 
    nanmean(revturn_prob_array_90_120_1800_2400) ; nanmean(revturn_prob_array_120_150_1800_2400) ; nanmean(revturn_prob_array_150_180_1800_2400) ;
    nanmean(revturn_prob_array_30_0_1800_2400) ; nanmean(revturn_prob_array_60_30_1800_2400) ; nanmean(revturn_prob_array_90_60_1800_2400) ; 
    nanmean(revturn_prob_array_120_90_1800_2400) ; nanmean(revturn_prob_array_150_120_1800_2400) ; nanmean(revturn_prob_array_180_150_1800_2400) ; zeros(1,12) ;
    nanmean(revturn_prob_array_0_30_2400_3000) ; nanmean(revturn_prob_array_30_60_2400_3000) ; nanmean(revturn_prob_array_60_90_2400_3000) ; 
    nanmean(revturn_prob_array_90_120_2400_3000) ; nanmean(revturn_prob_array_120_150_2400_3000) ; nanmean(revturn_prob_array_150_180_2400_3000) ;
    nanmean(revturn_prob_array_30_0_2400_3000) ; nanmean(revturn_prob_array_60_30_2400_3000) ; nanmean(revturn_prob_array_90_60_2400_3000) ; 
    nanmean(revturn_prob_array_120_90_2400_3000) ; nanmean(revturn_prob_array_150_120_2400_3000) ; nanmean(revturn_prob_array_180_150_2400_3000) ; zeros(1,12) ;
    nanmean(revturn_prob_array_0_30_3000_3600) ; nanmean(revturn_prob_array_30_60_3000_3600) ; nanmean(revturn_prob_array_60_90_3000_3600) ; 
    nanmean(revturn_prob_array_90_120_3000_3600) ; nanmean(revturn_prob_array_120_150_3000_3600) ; nanmean(revturn_prob_array_150_180_3000_3600) ;
    nanmean(revturn_prob_array_30_0_3000_3600) ; nanmean(revturn_prob_array_60_30_3000_3600) ; nanmean(revturn_prob_array_90_60_3000_3600) ; 
    nanmean(revturn_prob_array_120_90_3000_3600) ; nanmean(revturn_prob_array_150_120_3000_3600) ; nanmean(revturn_prob_array_180_150_3000_3600)] ;

RevturnProbArray_nanstd = [nanstd(revturn_prob_array_0_30_0_600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_30_60_0_600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_90_0_600,0,1)./sqrt(L_revturn) ; 
    nanstd(revturn_prob_array_90_120_0_600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_120_150_0_600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_180_0_600,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_30_0_0_600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_30_0_600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_90_60_0_600,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_120_90_0_600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_120_0_600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_180_150_0_600,0,1)./sqrt(L_revturn) ; zeros(1,12) ;
    nanstd(revturn_prob_array_0_30_600_1200,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_30_60_600_1200,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_90_600_1200,0,1)./sqrt(L_revturn) ; 
    nanstd(revturn_prob_array_90_120_600_1200,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_120_150_600_1200,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_180_600_1200,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_30_0_600_1200,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_30_600_1200,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_90_60_600_1200,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_120_90_600_1200,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_120_600_1200,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_180_150_600_1200,0,1)./sqrt(L_revturn) ; zeros(1,12) ;
    nanstd(revturn_prob_array_0_30_1200_1800,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_30_60_1200_1800,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_90_1200_1800,0,1)./sqrt(L_revturn) ; 
    nanstd(revturn_prob_array_90_120_1200_1800,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_120_150_1200_1800,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_180_1200_1800,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_30_0_1200_1800,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_30_1200_1800,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_90_60_1200_1800,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_120_90_1200_1800,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_120_1200_1800,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_180_150_1200_1800,0,1)./sqrt(L_revturn) ; zeros(1,12) ;
    nanstd(revturn_prob_array_0_30_1800_2400,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_30_60_1800_2400,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_90_1800_2400,0,1)./sqrt(L_revturn) ; 
    nanstd(revturn_prob_array_90_120_1800_2400,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_120_150_1800_2400,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_180_1800_2400,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_30_0_1800_2400,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_30_1800_2400,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_90_60_1800_2400,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_120_90_1800_2400,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_120_1800_2400,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_180_150_1800_2400,0,1)./sqrt(L_revturn) ; zeros(1,12) ;
    nanstd(revturn_prob_array_0_30_2400_3000,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_30_60_2400_3000,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_90_2400_3000,0,1)./sqrt(L_revturn) ; 
    nanstd(revturn_prob_array_90_120_2400_3000,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_120_150_2400_3000,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_180_2400_3000,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_30_0_2400_3000,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_30_2400_3000,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_90_60_2400_3000,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_120_90_2400_3000,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_120_2400_3000,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_180_150_2400_3000,0,1)./sqrt(L_revturn) ; zeros(1,12) ;
    nanstd(revturn_prob_array_0_30_3000_3600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_30_60_3000_3600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_90_3000_3600,0,1)./sqrt(L_revturn) ; 
    nanstd(revturn_prob_array_90_120_3000_3600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_120_150_3000_3600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_180_3000_3600,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_30_0_3000_3600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_60_30_3000_3600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_90_60_3000_3600,0,1)./sqrt(L_revturn) ;
    nanstd(revturn_prob_array_120_90_3000_3600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_150_120_3000_3600,0,1)./sqrt(L_revturn) ; nanstd(revturn_prob_array_180_150_3000_3600,0,1)./sqrt(L_revturn)] ;

RevturnProbArray = [RevturnProbArray_nanmean zeros(77,1) RevturnProbArray_nanstd];
    
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'revturn_prob_ave','.csv'];
csvwrite(dateAndtime, RevturnProbArray(:,1:12));



ShallowProbStruct = dir('*shallow_prob_all.csv');
L_shallow=length(ShallowProbStruct);
  
shallow_prob_array_0_30_0_600 = NaN(L_shallow,12);
shallow_prob_array_30_60_0_600 = NaN(L_shallow,12);
shallow_prob_array_60_90_0_600 = NaN(L_shallow,12);
shallow_prob_array_90_120_0_600 = NaN(L_shallow,12);
shallow_prob_array_120_150_0_600 = NaN(L_shallow,12);
shallow_prob_array_150_180_0_600 = NaN(L_shallow,12);
shallow_prob_array_30_0_0_600 = NaN(L_shallow,12);
shallow_prob_array_60_30_0_600 = NaN(L_shallow,12);
shallow_prob_array_90_60_0_600 = NaN(L_shallow,12);
shallow_prob_array_120_90_0_600 = NaN(L_shallow,12);
shallow_prob_array_150_120_0_600 = NaN(L_shallow,12);
shallow_prob_array_180_150_0_600 = NaN(L_shallow,12);

shallow_prob_array_0_30_600_1200 = NaN(L_shallow,12);
shallow_prob_array_30_60_600_1200 = NaN(L_shallow,12);
shallow_prob_array_60_90_600_1200 = NaN(L_shallow,12);
shallow_prob_array_90_120_600_1200 = NaN(L_shallow,12);
shallow_prob_array_120_150_600_1200 = NaN(L_shallow,12);
shallow_prob_array_150_180_600_1200 = NaN(L_shallow,12);
shallow_prob_array_30_0_600_1200 = NaN(L_shallow,12);
shallow_prob_array_60_30_600_1200 = NaN(L_shallow,12);
shallow_prob_array_90_60_600_1200 = NaN(L_shallow,12);
shallow_prob_array_120_90_600_1200 = NaN(L_shallow,12);
shallow_prob_array_150_120_600_1200 = NaN(L_shallow,12);
shallow_prob_array_180_150_600_1200 = NaN(L_shallow,12);

shallow_prob_array_0_30_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_30_60_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_60_90_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_90_120_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_120_150_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_150_180_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_30_0_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_60_30_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_90_60_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_120_90_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_150_120_1200_1800 = NaN(L_shallow,12);
shallow_prob_array_180_150_1200_1800 = NaN(L_shallow,12);

shallow_prob_array_0_30_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_30_60_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_60_90_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_90_120_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_120_150_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_150_180_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_30_0_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_60_30_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_90_60_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_120_90_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_150_120_1800_2400 = NaN(L_shallow,12);
shallow_prob_array_180_150_1800_2400 = NaN(L_shallow,12);

shallow_prob_array_0_30_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_30_60_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_60_90_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_90_120_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_120_150_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_150_180_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_30_0_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_60_30_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_90_60_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_120_90_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_150_120_2400_3000 = NaN(L_shallow,12);
shallow_prob_array_180_150_2400_3000 = NaN(L_shallow,12);

shallow_prob_array_0_30_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_30_60_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_60_90_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_90_120_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_120_150_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_150_180_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_30_0_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_60_30_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_90_60_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_120_90_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_150_120_3000_3600 = NaN(L_shallow,12);
shallow_prob_array_180_150_3000_3600 = NaN(L_shallow,12);

for k=1:L_shallow
  ShallowProbArray_each = load(ShallowProbStruct(k,:).name);
  
  shallow_prob_array_0_30_0_600(k,:) = ShallowProbArray_each(1,:);
  shallow_prob_array_30_60_0_600(k,:) = ShallowProbArray_each(2,:);
  shallow_prob_array_60_90_0_600(k,:) = ShallowProbArray_each(3,:);
  shallow_prob_array_90_120_0_600(k,:) = ShallowProbArray_each(4,:);
  shallow_prob_array_120_150_0_600(k,:) = ShallowProbArray_each(5,:);
  shallow_prob_array_150_180_0_600(k,:) = ShallowProbArray_each(6,:);
  shallow_prob_array_30_0_0_600(k,:) = ShallowProbArray_each(7,:);
  shallow_prob_array_60_30_0_600(k,:) = ShallowProbArray_each(8,:);
  shallow_prob_array_90_60_0_600(k,:) = ShallowProbArray_each(9,:);
  shallow_prob_array_120_90_0_600(k,:) = ShallowProbArray_each(10,:);
  shallow_prob_array_150_120_0_600(k,:) = ShallowProbArray_each(11,:);
  shallow_prob_array_180_150_0_600(k,:) = ShallowProbArray_each(12,:);
  
  shallow_prob_array_0_30_600_1200(k,:) = ShallowProbArray_each(14,:);
  shallow_prob_array_30_60_600_1200(k,:) = ShallowProbArray_each(15,:);
  shallow_prob_array_60_90_600_1200(k,:) = ShallowProbArray_each(16,:);
  shallow_prob_array_90_120_600_1200(k,:) = ShallowProbArray_each(17,:);
  shallow_prob_array_120_150_600_1200(k,:) = ShallowProbArray_each(18,:);
  shallow_prob_array_150_180_600_1200(k,:) = ShallowProbArray_each(19,:);
  shallow_prob_array_30_0_600_1200(k,:) = ShallowProbArray_each(20,:);
  shallow_prob_array_60_30_600_1200(k,:) = ShallowProbArray_each(21,:);
  shallow_prob_array_90_60_600_1200(k,:) = ShallowProbArray_each(22,:);
  shallow_prob_array_120_90_600_1200(k,:) = ShallowProbArray_each(23,:);
  shallow_prob_array_150_120_600_1200(k,:) = ShallowProbArray_each(24,:);
  shallow_prob_array_180_150_600_1200(k,:) = ShallowProbArray_each(25,:);
  
  shallow_prob_array_0_30_1200_1800(k,:) = ShallowProbArray_each(27,:);
  shallow_prob_array_30_60_1200_1800(k,:) = ShallowProbArray_each(28,:);
  shallow_prob_array_60_90_1200_1800(k,:) = ShallowProbArray_each(29,:);
  shallow_prob_array_90_120_1200_1800(k,:) = ShallowProbArray_each(30,:);
  shallow_prob_array_120_150_1200_1800(k,:) = ShallowProbArray_each(31,:);
  shallow_prob_array_150_180_1200_1800(k,:) = ShallowProbArray_each(32,:);
  shallow_prob_array_30_0_1200_1800(k,:) = ShallowProbArray_each(33,:);
  shallow_prob_array_60_30_1200_1800(k,:) = ShallowProbArray_each(34,:);
  shallow_prob_array_90_60_1200_1800(k,:) = ShallowProbArray_each(35,:);
  shallow_prob_array_120_90_1200_1800(k,:) = ShallowProbArray_each(36,:);
  shallow_prob_array_150_120_1200_1800(k,:) = ShallowProbArray_each(37,:);
  shallow_prob_array_180_150_1200_1800(k,:) = ShallowProbArray_each(38,:);
  
  shallow_prob_array_0_30_1800_2400(k,:) = ShallowProbArray_each(40,:);
  shallow_prob_array_30_60_1800_2400(k,:) = ShallowProbArray_each(41,:);
  shallow_prob_array_60_90_1800_2400(k,:) = ShallowProbArray_each(42,:);
  shallow_prob_array_90_120_1800_2400(k,:) = ShallowProbArray_each(43,:);
  shallow_prob_array_120_150_1800_2400(k,:) = ShallowProbArray_each(44,:);
  shallow_prob_array_150_180_1800_2400(k,:) = ShallowProbArray_each(45,:);
  shallow_prob_array_30_0_1800_2400(k,:) = ShallowProbArray_each(46,:);
  shallow_prob_array_60_30_1800_2400(k,:) = ShallowProbArray_each(47,:);
  shallow_prob_array_90_60_1800_2400(k,:) = ShallowProbArray_each(48,:);
  shallow_prob_array_120_90_1800_2400(k,:) = ShallowProbArray_each(49,:);
  shallow_prob_array_150_120_1800_2400(k,:) = ShallowProbArray_each(50,:);
  shallow_prob_array_180_150_1800_2400(k,:) = ShallowProbArray_each(51,:);
  
  shallow_prob_array_0_30_2400_3000(k,:) = ShallowProbArray_each(53,:);
  shallow_prob_array_30_60_2400_3000(k,:) = ShallowProbArray_each(54,:);
  shallow_prob_array_60_90_2400_3000(k,:) = ShallowProbArray_each(55,:);
  shallow_prob_array_90_120_2400_3000(k,:) = ShallowProbArray_each(56,:);
  shallow_prob_array_120_150_2400_3000(k,:) = ShallowProbArray_each(57,:);
  shallow_prob_array_150_180_2400_3000(k,:) = ShallowProbArray_each(58,:);
  shallow_prob_array_30_0_2400_3000(k,:) = ShallowProbArray_each(59,:);
  shallow_prob_array_60_30_2400_3000(k,:) = ShallowProbArray_each(60,:);
  shallow_prob_array_90_60_2400_3000(k,:) = ShallowProbArray_each(61,:);
  shallow_prob_array_120_90_2400_3000(k,:) = ShallowProbArray_each(62,:);
  shallow_prob_array_150_120_2400_3000(k,:) = ShallowProbArray_each(63,:);
  shallow_prob_array_180_150_2400_3000(k,:) = ShallowProbArray_each(64,:);
  
  shallow_prob_array_0_30_3000_3600(k,:) = ShallowProbArray_each(66,:);
  shallow_prob_array_30_60_3000_3600(k,:) = ShallowProbArray_each(67,:);
  shallow_prob_array_60_90_3000_3600(k,:) = ShallowProbArray_each(68,:);
  shallow_prob_array_90_120_3000_3600(k,:) = ShallowProbArray_each(69,:);
  shallow_prob_array_120_150_3000_3600(k,:) = ShallowProbArray_each(70,:);
  shallow_prob_array_150_180_3000_3600(k,:) = ShallowProbArray_each(71,:);
  shallow_prob_array_30_0_3000_3600(k,:) = ShallowProbArray_each(72,:);
  shallow_prob_array_60_30_3000_3600(k,:) = ShallowProbArray_each(73,:);
  shallow_prob_array_90_60_3000_3600(k,:) = ShallowProbArray_each(74,:);
  shallow_prob_array_120_90_3000_3600(k,:) = ShallowProbArray_each(75,:);
  shallow_prob_array_150_120_3000_3600(k,:) = ShallowProbArray_each(76,:);
  shallow_prob_array_180_150_3000_3600(k,:) = ShallowProbArray_each(77,:);
end

ShallowProbArray_nanmean = [nanmean(shallow_prob_array_0_30_0_600) ; nanmean(shallow_prob_array_30_60_0_600) ; nanmean(shallow_prob_array_60_90_0_600) ; 
    nanmean(shallow_prob_array_90_120_0_600) ; nanmean(shallow_prob_array_120_150_0_600) ; nanmean(shallow_prob_array_150_180_0_600) ;
    nanmean(shallow_prob_array_30_0_0_600) ; nanmean(shallow_prob_array_60_30_0_600) ; nanmean(shallow_prob_array_90_60_0_600) ; 
    nanmean(shallow_prob_array_120_90_0_600) ; nanmean(shallow_prob_array_150_120_0_600) ; nanmean(shallow_prob_array_180_150_0_600) ; zeros(1,12) ;
    nanmean(shallow_prob_array_0_30_600_1200) ; nanmean(shallow_prob_array_30_60_600_1200) ; nanmean(shallow_prob_array_60_90_600_1200) ; 
    nanmean(shallow_prob_array_90_120_600_1200) ; nanmean(shallow_prob_array_120_150_600_1200) ; nanmean(shallow_prob_array_150_180_600_1200) ;
    nanmean(shallow_prob_array_30_0_600_1200) ; nanmean(shallow_prob_array_60_30_600_1200) ; nanmean(shallow_prob_array_90_60_600_1200) ; 
    nanmean(shallow_prob_array_120_90_600_1200) ; nanmean(shallow_prob_array_150_120_600_1200) ; nanmean(shallow_prob_array_180_150_600_1200) ; zeros(1,12) ; 
    nanmean(shallow_prob_array_0_30_1200_1800) ; nanmean(shallow_prob_array_30_60_1200_1800) ; nanmean(shallow_prob_array_60_90_1200_1800) ; 
    nanmean(shallow_prob_array_90_120_1200_1800) ; nanmean(shallow_prob_array_120_150_1200_1800) ; nanmean(shallow_prob_array_150_180_1200_1800) ;
    nanmean(shallow_prob_array_30_0_1200_1800) ; nanmean(shallow_prob_array_60_30_1200_1800) ; nanmean(shallow_prob_array_90_60_1200_1800) ; 
    nanmean(shallow_prob_array_120_90_1200_1800) ; nanmean(shallow_prob_array_150_120_1200_1800) ; nanmean(shallow_prob_array_180_150_1200_1800) ; zeros(1,12) ;
    nanmean(shallow_prob_array_0_30_1800_2400) ; nanmean(shallow_prob_array_30_60_1800_2400) ; nanmean(shallow_prob_array_60_90_1800_2400) ; 
    nanmean(shallow_prob_array_90_120_1800_2400) ; nanmean(shallow_prob_array_120_150_1800_2400) ; nanmean(shallow_prob_array_150_180_1800_2400) ;
    nanmean(shallow_prob_array_30_0_1800_2400) ; nanmean(shallow_prob_array_60_30_1800_2400) ; nanmean(shallow_prob_array_90_60_1800_2400) ; 
    nanmean(shallow_prob_array_120_90_1800_2400) ; nanmean(shallow_prob_array_150_120_1800_2400) ; nanmean(shallow_prob_array_180_150_1800_2400) ; zeros(1,12) ;
    nanmean(shallow_prob_array_0_30_2400_3000) ; nanmean(shallow_prob_array_30_60_2400_3000) ; nanmean(shallow_prob_array_60_90_2400_3000) ; 
    nanmean(shallow_prob_array_90_120_2400_3000) ; nanmean(shallow_prob_array_120_150_2400_3000) ; nanmean(shallow_prob_array_150_180_2400_3000) ;
    nanmean(shallow_prob_array_30_0_2400_3000) ; nanmean(shallow_prob_array_60_30_2400_3000) ; nanmean(shallow_prob_array_90_60_2400_3000) ; 
    nanmean(shallow_prob_array_120_90_2400_3000) ; nanmean(shallow_prob_array_150_120_2400_3000) ; nanmean(shallow_prob_array_180_150_2400_3000) ; zeros(1,12) ;
    nanmean(shallow_prob_array_0_30_3000_3600) ; nanmean(shallow_prob_array_30_60_3000_3600) ; nanmean(shallow_prob_array_60_90_3000_3600) ; 
    nanmean(shallow_prob_array_90_120_3000_3600) ; nanmean(shallow_prob_array_120_150_3000_3600) ; nanmean(shallow_prob_array_150_180_3000_3600) ;
    nanmean(shallow_prob_array_30_0_3000_3600) ; nanmean(shallow_prob_array_60_30_3000_3600) ; nanmean(shallow_prob_array_90_60_3000_3600) ; 
    nanmean(shallow_prob_array_120_90_3000_3600) ; nanmean(shallow_prob_array_150_120_3000_3600) ; nanmean(shallow_prob_array_180_150_3000_3600)] ;

ShallowProbArray_nanstd = [nanstd(shallow_prob_array_0_30_0_600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_30_60_0_600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_90_0_600,0,1)./sqrt(L_shallow) ; 
    nanstd(shallow_prob_array_90_120_0_600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_120_150_0_600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_180_0_600,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_30_0_0_600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_30_0_600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_90_60_0_600,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_120_90_0_600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_120_0_600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_180_150_0_600,0,1)./sqrt(L_shallow) ; zeros(1,12) ;
    nanstd(shallow_prob_array_0_30_600_1200,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_30_60_600_1200,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_90_600_1200,0,1)./sqrt(L_shallow) ; 
    nanstd(shallow_prob_array_90_120_600_1200,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_120_150_600_1200,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_180_600_1200,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_30_0_600_1200,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_30_600_1200,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_90_60_600_1200,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_120_90_600_1200,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_120_600_1200,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_180_150_600_1200,0,1)./sqrt(L_shallow) ; zeros(1,12) ;
    nanstd(shallow_prob_array_0_30_1200_1800,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_30_60_1200_1800,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_90_1200_1800,0,1)./sqrt(L_shallow) ; 
    nanstd(shallow_prob_array_90_120_1200_1800,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_120_150_1200_1800,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_180_1200_1800,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_30_0_1200_1800,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_30_1200_1800,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_90_60_1200_1800,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_120_90_1200_1800,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_120_1200_1800,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_180_150_1200_1800,0,1)./sqrt(L_shallow) ; zeros(1,12) ;
    nanstd(shallow_prob_array_0_30_1800_2400,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_30_60_1800_2400,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_90_1800_2400,0,1)./sqrt(L_shallow) ; 
    nanstd(shallow_prob_array_90_120_1800_2400,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_120_150_1800_2400,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_180_1800_2400,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_30_0_1800_2400,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_30_1800_2400,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_90_60_1800_2400,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_120_90_1800_2400,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_120_1800_2400,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_180_150_1800_2400,0,1)./sqrt(L_shallow) ; zeros(1,12) ;
    nanstd(shallow_prob_array_0_30_2400_3000,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_30_60_2400_3000,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_90_2400_3000,0,1)./sqrt(L_shallow) ; 
    nanstd(shallow_prob_array_90_120_2400_3000,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_120_150_2400_3000,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_180_2400_3000,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_30_0_2400_3000,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_30_2400_3000,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_90_60_2400_3000,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_120_90_2400_3000,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_120_2400_3000,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_180_150_2400_3000,0,1)./sqrt(L_shallow) ; zeros(1,12) ;
    nanstd(shallow_prob_array_0_30_3000_3600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_30_60_3000_3600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_90_3000_3600,0,1)./sqrt(L_shallow) ; 
    nanstd(shallow_prob_array_90_120_3000_3600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_120_150_3000_3600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_180_3000_3600,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_30_0_3000_3600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_60_30_3000_3600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_90_60_3000_3600,0,1)./sqrt(L_shallow) ;
    nanstd(shallow_prob_array_120_90_3000_3600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_150_120_3000_3600,0,1)./sqrt(L_shallow) ; nanstd(shallow_prob_array_180_150_3000_3600,0,1)./sqrt(L_shallow)] ;

ShallowProbArray = [ShallowProbArray_nanmean zeros(77,1) ShallowProbArray_nanstd];
    
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'shallow_prob_ave.csv'];
csvwrite(dateAndtime, ShallowProbArray(:,1:12));



AllProbArray = [OmegaProbArray(1:77,1:12) zeros(77,1) ReversalProbArray(1:77,1:12) zeros(77,1) RevturnProbArray(1:77,1:12) zeros(77,1) ShallowProbArray(1:77,1:12)];
dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'all_prob_ave','.csv'];
csvwrite(dateAndtime, AllProbArray);