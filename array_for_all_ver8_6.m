AllStruct = dir('*freq_prob.csv');
AllArray_0_600 = load (AllStruct(1,:).name);
AllArray_600_1200 = load (AllStruct(2,:).name);
AllArray_1200_1800 = load (AllStruct(3,:).name);
AllArray_1800_2400 = load (AllStruct(4,:).name);
AllArray_2400_3000 = load (AllStruct(5,:).name);
AllArray_3000_3600 = load (AllStruct(6,:).name);

AllArray = [AllArray_0_600(1,:) ; AllArray_600_1200(1,:) ; AllArray_1200_1800(1,:) ; AllArray_1800_2400(1,:) ; AllArray_2400_3000(1,:) ; AllArray_3000_3600(1,:) ;zeros(1,16) ;
    AllArray_0_600(2,:) ; AllArray_600_1200(2,:) ; AllArray_1200_1800(2,:) ; AllArray_1800_2400(2,:) ; AllArray_2400_3000(2,:) ; AllArray_3000_3600(2,:) ; zeros(1,16) ;
    AllArray_0_600(3,:) ; AllArray_600_1200(3,:) ; AllArray_1200_1800(3,:) ; AllArray_1800_2400(3,:) ; AllArray_2400_3000(3,:) ; AllArray_3000_3600(3,:) ; zeros(1,16) ;
    AllArray_0_600(4,:) ; AllArray_600_1200(4,:) ; AllArray_1200_1800(4,:) ; AllArray_1800_2400(4,:) ; AllArray_2400_3000(4,:) ; AllArray_3000_3600(4,:) ; zeros(1,16) ;
    AllArray_0_600(5,:) ; AllArray_600_1200(5,:) ; AllArray_1200_1800(5,:) ; AllArray_1800_2400(5,:) ; AllArray_2400_3000(5,:) ; AllArray_3000_3600(5,:) ; zeros(1,16) ;
    AllArray_0_600(6,:) ; AllArray_600_1200(6,:) ; AllArray_1200_1800(6,:) ; AllArray_1800_2400(6,:) ; AllArray_2400_3000(6,:) ; AllArray_3000_3600(6,:) ; zeros(1,16);
    AllArray_0_600(7,:) ; AllArray_600_1200(7,:) ; AllArray_1200_1800(7,:) ; AllArray_1800_2400(7,:) ; AllArray_2400_3000(7,:) ; AllArray_3000_3600(7,:) ; zeros(1,16);
    AllArray_0_600(8,:) ; AllArray_600_1200(8,:) ; AllArray_1200_1800(8,:) ; AllArray_1800_2400(8,:) ; AllArray_2400_3000(8,:) ; AllArray_3000_3600(8,:) ; zeros(1,16);
    AllArray_0_600(9,:) ; AllArray_600_1200(9,:) ; AllArray_1200_1800(9,:) ; AllArray_1800_2400(9,:) ; AllArray_2400_3000(9,:) ; AllArray_3000_3600(9,:)];

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'freq_prob_all','.csv'];
csvwrite(dateAndtime, AllArray);


OmegaProbStruct = dir('*omega_prob.csv');
OmegaProbArray_0_600 = load (OmegaProbStruct(1,:).name);
OmegaProbArray_600_1200 = load (OmegaProbStruct(2,:).name);
OmegaProbArray_1200_1800 = load (OmegaProbStruct(3,:).name);
OmegaProbArray_1800_2400 = load (OmegaProbStruct(4,:).name);
OmegaProbArray_2400_3000 = load (OmegaProbStruct(5,:).name);
OmegaProbArray_3000_3600 = load (OmegaProbStruct(6,:).name);

OmegaProbArray = [OmegaProbArray_0_600 ; zeros(1,12) ; OmegaProbArray_600_1200 ; zeros(1,12) ; OmegaProbArray_1200_1800 ; zeros(1,12) ; 
    OmegaProbArray_1800_2400 ; zeros(1,12) ; OmegaProbArray_2400_3000 ; zeros(1,12) ; OmegaProbArray_3000_3600];

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'omega_prob_all','.csv'];
csvwrite(dateAndtime, OmegaProbArray);


ReversalProbStruct = dir('*reversal_prob.csv');
ReversalProbArray_0_600 = load (ReversalProbStruct(1,:).name);
ReversalProbArray_600_1200 = load (ReversalProbStruct(2,:).name);
ReversalProbArray_1200_1800 = load (ReversalProbStruct(3,:).name);
ReversalProbArray_1800_2400 = load (ReversalProbStruct(4,:).name);
ReversalProbArray_2400_3000 = load (ReversalProbStruct(5,:).name);
ReversalProbArray_3000_3600 = load (ReversalProbStruct(6,:).name);

ReversalProbArray = [ReversalProbArray_0_600 ; zeros(1,12) ; ReversalProbArray_600_1200 ; zeros(1,12) ; ReversalProbArray_1200_1800 ; zeros(1,12) ; 
    ReversalProbArray_1800_2400 ; zeros(1,12) ; ReversalProbArray_2400_3000 ; zeros(1,12) ; ReversalProbArray_3000_3600];

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'reversal_prob_all','.csv'];
csvwrite(dateAndtime, ReversalProbArray);


RevturnProbStruct = dir('*revturn_prob.csv');
RevturnProbArray_0_600 = load (RevturnProbStruct(1,:).name);
RevturnProbArray_600_1200 = load (RevturnProbStruct(2,:).name);
RevturnProbArray_1200_1800 = load (RevturnProbStruct(3,:).name);
RevturnProbArray_1800_2400 = load (RevturnProbStruct(4,:).name);
RevturnProbArray_2400_3000 = load (RevturnProbStruct(5,:).name);
RevturnProbArray_3000_3600 = load (RevturnProbStruct(6,:).name);

RevturnProbArray = [RevturnProbArray_0_600 ; zeros(1,12) ; RevturnProbArray_600_1200 ; zeros(1,12) ; RevturnProbArray_1200_1800 ; zeros(1,12) ; 
    RevturnProbArray_1800_2400 ; zeros(1,12) ; RevturnProbArray_2400_3000 ; zeros(1,12) ; RevturnProbArray_3000_3600];

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'revturn_prob_all','.csv'];
csvwrite(dateAndtime, RevturnProbArray);


ShallowProbStruct = dir('*shallow_prob.csv');
ShallowProbArray_0_600 = load (ShallowProbStruct(1,:).name);
ShallowProbArray_600_1200 = load (ShallowProbStruct(2,:).name);
ShallowProbArray_1200_1800 = load (ShallowProbStruct(3,:).name);
ShallowProbArray_1800_2400 = load (ShallowProbStruct(4,:).name);
ShallowProbArray_2400_3000 = load (ShallowProbStruct(5,:).name);
ShallowProbArray_3000_3600 = load (ShallowProbStruct(6,:).name);

ShallowProbArray = [ShallowProbArray_0_600 ; zeros(1,12) ; ShallowProbArray_600_1200 ; zeros(1,12) ; ShallowProbArray_1200_1800 ; zeros(1,12) ; 
    ShallowProbArray_1800_2400 ; zeros(1,12) ; ShallowProbArray_2400_3000 ; zeros(1,12) ; ShallowProbArray_3000_3600];

dateAndtime = [datestr(now, 'yymmdd_HHMMSS_'),'shallow_prob_all','.csv'];
csvwrite(dateAndtime, ShallowProbArray);