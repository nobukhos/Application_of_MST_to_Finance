one_ = (ret[1:249, 1:34]); #250 days  
two = (ret[250:499, 1:34]); #249 days 
three = (ret[500:748, 1:34]); #251 days 
four = (ret[749:1000, 1:34]); #248 days 
five = (ret[1001:1250, 1:34]); #249 days 
six = (ret[1251:1499, 1:34]); #247days 

#calculating the pearson correlation coefficient yearly


year_1 = cor(one_); 
year_2 = cor(two); 
year_3 = cor(three); 
year_4 = cor(four);
year_5 = cor(five);
year_6 = cor(six); 
 

#calculating heatmaps for each year using different method
using Plots
savefig(plot(heatmap(1:34, 1:34, year_1)), "heatpear1");
savefig(plot(heatmap(1:34, 1:34, year_2)), "heatpear2")
savefig(plot(heatmap(1:34, 1:34, year_3)), "heatpear3");
savefig(plot(heatmap(1:34, 1:34, year_4)), "heatpear4");
savefig(plot(heatmap(1:34, 1:34, year_5)), "heatpear5");
savefig(plot(heatmap(1:34, 1:34, year_6)), "heatpear6");



