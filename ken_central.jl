ab2 = Graphs.betweenness_centrality(nk_mst);
ac2 = Graphs.degree_centrality(nk_mst);
ad2 = Graphs.closeness_centrality(nk_mst,normalize = true);
ae2 = Graphs.eigenvector_centrality(nk_mst);
af2 = Graphs.degree(nk_mst);

Stocks = ["SBK", "MTN", "WHL", "VOD", "SHP", "GFI", "GRT", "SOL", "SLM", "REM",
"RNI", "IMP", "GLN", "INL", "INP", "MNP", "MRP", "NPN", "NED", "NPH", "AMS", "ANG", "APN", "BTI",
"EXX", "FSR", "DSY", "CFR", "CLS", "CPI", "BID", "ANH", "ABG", "BVT"];
data1 = hcat(Stocks, ab2, ac2, ad2, ae2, af2);
fra1 = DataFrame(data1, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree])


XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Ken_Cen1.xlsx", (fra1))
ash1 = Graphs. degree_histogram(nk_mst)
o1 = bar(collect(keys(ash1)), collect(values(ash1)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(o1, "Kend1")


 #year2
ba2 = Graphs.betweenness_centrality(nk_mst1);
bb2 = Graphs.degree_centrality(nk_mst1);
bc2= Graphs.closeness_centrality(nk_mst1,normalize = true);
bd2 = Graphs.eigenvector_centrality(nk_mst1);
be2 = Graphs.degree(nk_mst1);

data2 = hcat(Stocks, ba2, bb2, bc2, bd2, be2);
fra2 = DataFrame(data2, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);


XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Ken_Cen2.xlsx", (fra2))
ash2 = Graphs. degree_histogram(nk_mst1)
o2 = bar(collect(keys(ash2)), collect(values(ash2)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(o2, "Kend2")

 #year3

ca2 = Graphs.betweenness_centrality(nk_mst3);
cb2 = Graphs.degree_centrality(nk_mst3);
cc2 = Graphs.closeness_centrality(nk_mst3,normalize = true);
cd2 = Graphs.eigenvector_centrality(nk_mst3);
ce2 = Graphs.degree(nk_mst3);

data3 = hcat(Stocks, ca2, cb2, cc2, cd2, ce2);
fra3 = DataFrame(data3, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);

XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Ken_Cen3.xlsx", (fra3))
ash3 = Graphs. degree_histogram(nk_mst3)
o3 = bar(collect(keys(ash3)), collect(values(ash3)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(o3, "Kend3")

#year_4
da2 = Graphs.betweenness_centrality(nk_mst4);
db2 = Graphs.degree_centrality(nk_mst4);
dc2 = Graphs.closeness_centrality(nk_mst4,normalize = true);
dd2 = Graphs.eigenvector_centrality(nk_mst4);
de2 = Graphs.degree(nk_mst4);

data4 = hcat(Stocks, da2, db2, dc2, dd2, de2);
fra4 = DataFrame(data4, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);


XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Ken_Cen4.xlsx", (fra4))
ash4 = Graphs. degree_histogram(nk_mst4)
o4 = bar(collect(keys(ash4)), collect(values(ash4)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(o4, "Kend4")

#year_5
ea2 = Graphs.betweenness_centrality(nk_mst5);
eb2 = Graphs.degree_centrality(nk_mst5);
ec2 = Graphs.closeness_centrality(nk_mst5,normalize = true);
ed2 = Graphs.eigenvector_centrality(nk_mst5);
ef2 = Graphs.degree(nk_mst5);


data5 = hcat(Stocks, ea2, eb2, ec2, ed2, ef2);
fra5 = DataFrame(data5, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);


XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Ken_Cen5.xlsx", (fra5))
ash5 = Graphs. degree_histogram(nk_mst5)
o5 = bar(collect(keys(ash5)), collect(values(ash5)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(o5, "Kend5")

#year6
fa2 = Graphs.betweenness_centrality(nk_mst6);
fb2 = Graphs.degree_centrality(nk_mst6);
fc2 = Graphs.closeness_centrality(nk_mst6,normalize = true);
fd2 = Graphs.eigenvector_centrality(nk_mst6);
fe2 = Graphs.degree(nk_mst6);


data6 = hcat(Stocks, fa2, fb2, fc2, fd2, fe2);
fra6 = DataFrame(data6, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);


XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Ken_Cen6.xlsx", (fra6))
ash6 = Graphs. degree_histogram(nk_mst6)
o6 = bar(collect(keys(ash6)), collect(values(ash6)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(o6, "Kend6")