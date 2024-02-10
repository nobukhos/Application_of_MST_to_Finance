##Pearson
j = [];
append!(j, sum(year_1)/33);
append!(j, sum(year_2)/33);
append!(j, sum(year_3)/33);
append!(j, sum(year_4)/33);
append!(j, sum(year_5)/33);
append!(j, sum(year_6)/33);



#Spearman
j2 = [];
append!(j2, sum(spear_1)/33);
append!(j2, sum(spear_2)/33);
append!(j2, sum(spear_3)/33);
append!(j2, sum(spear_4)/33);
append!(j2, sum(spear_5)/33);
append!(j2, sum(spear_6)/33);


#Kendall
j3 = [];
append!(j3, sum(kend_1)/33);
append!(j3, sum(kend_2)/33);
append!(j3, sum(kend_3)/33);
append!(j3, sum(kend_4)/33);
append!(j3, sum(kend_5)/33);
append!(j3, sum(kend_6)/33);


#DTW
j4 = [];
append!(j4, sum(val_1)/33);
append!(j4, sum(val_2)/33);
append!(j4, sum(val_3)/33);
append!(j4, sum(val_4)/33);
append!(j4, sum(val_5)/33);
append!(j4, sum(val_6)/33);

#DCCA
j5 = [];
append!(j5, sum(dcca_1)/33);
append!(j5, sum(dcca_2)/33);
append!(j5, sum(dcca_3)/33);
append!(j5, sum(dcca_4)/33);
append!(j5, sum(dcca_5)/33);
append!(j5, sum(dcca_6)/33);



using Plots
xr = [2017, 2018, 2019, 2020, 2021, 2022];
plot(xr, j, label = "Pearson", markers = :star);
plot!(xr, j2, label = "Spearman", markers = :diamond);
plot!(xr, j4, label = "DTW", markers = :square);
plot!(xr, j5, label = "DCCA", markers = :triangle);
th = plot!(xr, j3, label = "Kendall", markers = :circle, title = "Changes In The Normalized Tree Length")
savefig(th, "NLT_2.png")

