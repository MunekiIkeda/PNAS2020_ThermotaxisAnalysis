%% draw heat map

Length = 50;
Start = nanmin(all_data_array(:,1));
End = nanmax(all_data_array(:,1));

figure;
scatter(40+Start, Length/4*(numfiles+2),2*Length,'s','k','MarkerFaceColor','k');axis equal;hold on
scatter(120+Start, Length/4*(numfiles+2),2*Length,'s','r','MarkerFaceColor','r');
scatter(230+Start, Length/4*(numfiles+2),2*Length,'s','y','MarkerFaceColor','y');
scatter(360+Start, Length/4*(numfiles+2),2*Length,'s','m','MarkerFaceColor','m');
scatter(470+Start, Length/4*(numfiles+2),2*Length,'s','b','MarkerFaceColor','b');
text(55+Start, Length/4*(numfiles+2),'run','FontSize',12);
text(135+Start, Length/4*(numfiles+2),'omega','FontSize',12);
text(245+Start, Length/4*(numfiles+2),'reversal','FontSize',12);
text(375+Start, Length/4*(numfiles+2),'revturn','FontSize',12);
text(485+Start, Length/4*(numfiles+2),'shallow','FontSize',12);
 
scatter(all_data_array(all_data_array(:,5)==0,1),Length/4*(numfiles-all_data_array(all_data_array(:,5)==0,22)+1),Length,'s','k','MarkerFaceColor','k');
scatter(all_data_array(all_data_array(:,5)==2,1),Length/4*(numfiles-all_data_array(all_data_array(:,5)==2,22)+1),Length,'s','r','MarkerFaceColor','r');
scatter(all_data_array(all_data_array(:,5)==4,1),Length/4*(numfiles-all_data_array(all_data_array(:,5)==4,22)+1),Length,'s','y','MarkerFaceColor','y');
scatter(all_data_array(all_data_array(:,5)==6,1),Length/4*(numfiles-all_data_array(all_data_array(:,5)==6,22)+1),Length,'s','m','MarkerFaceColor','m');
scatter(all_data_array(all_data_array(:,5)==8,1),Length/4*(numfiles-all_data_array(all_data_array(:,5)==8,22)+1),Length,'s','b','MarkerFaceColor','b');
 
xlim([Start End]);
ylim([0 Length/4*(numfiles+2)+10]);