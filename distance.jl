##Pearson Distance
peardist_1 = sqrt.(2 .* (1 .- year_1));
peardist_2 = sqrt.(2 .* (1 .- year_2));
peardist_3 = sqrt.(2 .* (1 .- year_3));
peardist_4 = sqrt.(2 .* (1 .- year_4));
peardist_5 = sqrt.(2 .* (1 .- year_5));
peardist_6 = sqrt.(2 .* (1 .- year_6));






using Plots
using Clustering
using StatsPlots

lab = ["SBK", "MTN", "WHL", "VOD", "SHP", "GFI", "GRT", "SOL", "SLM", "REM",
"RNI", "IMP", "GLN", "INL", "INP", "MNP", "MRP", "NPN", "NED", "NPH", "AMS", "ANG", "APN", "BTI",
"EXX", "FSR", "DSY", "CFR", "CLS", "CPI", "BID", "ANH", "ABG", "BVT"];
 
# Perform hierarchical clustering
result = hclust(peardist_1, linkage=:single)

# Plot dendrogram
plot(result, size=(800, 400))


plot(hclust(peardist_2, linkage=:single), size = (800, 400));
plot(hclust(peardist_3, linkage=:single), size = (800, 400));
plot(hclust(peardist_4, linkage=:single), size = (800, 400));
plot(hclust(peardist_5, linkage=:single), size = (800, 400));
plot(hclust(peardist_6, linkage=:single), size = (800, 400));



#Spearman
speardist_1 = sqrt.(2 .* (1 .- spear_1));
speardist_2 = sqrt.(2 .* (1 .- spear_2));
speardist_3 = sqrt.(2 .* (1 .- spear_3));
speardist_4 = sqrt.(2 .* (1 .- spear_4));
speardist_5 = sqrt.(2 .* (1 .- spear_5));
speardist_6 = sqrt.(2 .* (1 .- spear_6));


#Hierarchial trees for Spearman
plot(hclust(speardist_1, linkage=:single), size = (800, 400));
plot(hclust(speardist_2, linkage=:single), size = (800, 400));
plot(hclust(speardist_3, linkage=:single), size = (800, 400));
plot(hclust(speardist_4, linkage=:single), size = (800, 400));
plot(hclust(speardist_5, linkage=:single), size = (800, 400));
plot(hclust(speardist_6, linkage=:single), size = (800, 400));


#Kendall
kendist_1 = sqrt.(2 .* (1 .- kend_1));
kendist_2 = sqrt.(2 .* (1 .- kend_2));
kendist_3 = sqrt.(2 .* (1 .- kend_3));
kendist_4 = sqrt.(2 .* (1 .- kend_4));
kendist_5 = sqrt.(2 .* (1 .- kend_5));
kendist_6 = sqrt.(2 .* (1 .- kend_6));

#Hierarchial trees for Kendall
plot(hclust(kendist_1, linkage=:single), size = (800, 400));
plot(hclust(kendist_2, linkage=:single), size = (800, 400));
plot(hclust(kendist_3, linkage=:single), size = (800, 400));
plot(hclust(kendist_4, linkage=:single), size = (800, 400));
plot(hclust(kendist_5, linkage=:single), size = (800, 400));
plot(hclust(kendist_6, linkage=:single), size = (800, 400));


#DCCA
dcca_1 = sqrt.(2 .* (1 .- s1));
dcca_2 = sqrt.(2 .* (1 .- s2));
dcca_3 = sqrt.(2 .* (1 .- s3));
dcca_4 = sqrt.(2 .* (1 .- s4));
dcca_5 = sqrt.(2 .* (1 .- s5));
dcca_6 = sqrt.(2 .* (1 .- s6));