using StatsBase 


#calculating the spearman correlation rho coefficient yearly

spear_1 = corspearman(Float64.(one_), Float64.(one_)); 
spear_2 = corspearman(Float64.(two), Float64.(two)); 
spear_3 = corspearman(Float64.(three), Float64.(three)); 
spear_4 = corspearman(Float64.(four), Float64.(four)); 
spear_5 = corspearman(Float64.(five), Float64.(five)); 
spear_6 = corspearman(Float64.(six), Float64.(six));



#calculating heatmaps for each year using different method
savefig(plot(heatmap(1:34, 1:34, spear_1)), "heatspear1");
savefig(plot(heatmap(1:34, 1:34, spear_2)), "heatspear2");
savefig(plot(heatmap(1:34, 1:34, spear_3)), "heatspear3");
savefig(plot(heatmap(1:34, 1:34, spear_4)), "heatspear4");
savefig(plot(heatmap(1:34, 1:34, spear_5)), "heatspear5");
savefig(plot(heatmap(1:34, 1:34, spear_6)), "heatspear6");