using StatsBase

#calculating the kendall tau correlation coefficient yearly

kend_1 = corkendall(Float64.(one_), Float64.(one_)); 
kend_2 = corkendall(Float64.(two), Float64.(two)); 
kend_3 = corkendall(Float64.(three), Float64.(three)); 
kend_4 = corkendall(Float64.(four), Float64.(four)); 
kend_5 = corkendall(Float64.(five), Float64.(five)); 
kend_6 = corkendall(Float64.(six), Float64.(six)); 


#calculating heatmaps for each year using different method
savefig(plot(heatmap(1:34, 1:34, kend_1)), "heatkend1");
savefig(plot(heatmap(1:34, 1:34, kend_2)), "heatkend2");
savefig(plot(heatmap(1:34, 1:34, kend_3)), "heatkend3");
savefig(plot(heatmap(1:34, 1:34, kend_4)), "heatkend4");
savefig(plot(heatmap(1:34, 1:34, kend_5)), "heatkend5");
savefig(plot(heatmap(1:34, 1:34, kend_6)), "heatkend6");