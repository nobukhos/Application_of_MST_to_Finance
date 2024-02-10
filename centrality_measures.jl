ab = Graphs.betweenness_centrality(g_mst);
ac = Graphs.degree_centrality(g_mst);
ad = Graphs.closeness_centrality(g_mst,normalize = true);
ae = Graphs.eigenvector_centrality(g_mst);
af = Graphs.degree(g_mst);


Stocks = ["SBK", "MTN", "WHL", "VOD", "SHP", "GFI", "GRT", "SOL", "SLM", "REM",
"RNI", "IMP", "GLN", "INL", "INP", "MNP", "MRP", "NPN", "NED", "NPH", "AMS", "ANG", "APN", "BTI",
"EXX", "FSR", "DSY", "CFR", "CLS", "CPI", "BID", "ANH", "ABG", "BVT"];
bn = hcat(Stocks, ab, ac, ad, ae, af);
fd = DataFrame(bn, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree])  

XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Pearson_Cen1.xlsx", (fd))
owe1 = Graphs. degree_histogram(g_mst)
n1 = bar(collect(keys(owe1)), collect(values(owe1)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(n1, "Pearson1")

 #year2
ba = Graphs.betweenness_centrality(g_mst1);
bb = Graphs.degree_centrality(g_mst1);
bc = Graphs.closeness_centrality(g_mst1,normalize = true);
bd = Graphs.eigenvector_centrality(g_mst1);
be = Graphs.degree(g_mst1);

bn1 = hcat(Stocks, ba, bb, bc, bd, be);
fd1 = DataFrame(bn1, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);


XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Pearson_Cen2.xlsx", (fd1))
owe2 = Graphs. degree_histogram(g_mst1)
n2 = bar(collect(keys(owe2)), collect(values(owe2)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(n2, "Pearson2")


 #year3
ca = Graphs.betweenness_centrality(g_mst3);
cb = Graphs.degree_centrality(g_mst3);
cc = Graphs.closeness_centrality(g_mst3,normalize = true);
cd = Graphs.eigenvector_centrality(g_mst3);
ce = Graphs.degree(g_mst3);
bn2 = hcat(Stocks, ca, cb, cc, cd, ce);
fd2 = DataFrame(bn2, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);

XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Pearson_Cen3.xlsx", (fd2))
owe3 = Graphs. degree_histogram(g_mst3)
n3= bar(collect(keys(owe3)), collect(values(owe3)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(n3, "Pearson3")

#year_4
da = Graphs.betweenness_centrality(g_mst4);
db = Graphs.degree_centrality(g_mst4);
dc = Graphs.closeness_centrality(g_mst4,normalize = true);

dd = Graphs.eigenvector_centrality(g_mst4);
de = Graphs.degree(g_mst4);

bn3 = hcat(Stocks, da, db, dc, dd, de);
fd3 = DataFrame(bn3, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);

XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Pearson_Cent4.xlsx", fd3)
owe4 = Graphs. degree_histogram(g_mst4)
n4 = bar(collect(keys(owe4)), collect(values(owe4)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(n4, "Pearson4")


#year_5
ea = Graphs.betweenness_centrality(g_mst5);
eb = Graphs.degree_centrality(g_mst5);
ec = Graphs.closeness_centrality(g_mst5,normalize = true);
ed = Graphs.eigenvector_centrality(g_mst5);
ee = Graphs.degree(g_mst5);

bn4 = hcat(Stocks, ea, eb, ec, ed, ee);
fd4 = DataFrame(bn4, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);


XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Pearson_Cent5.xlsx", fd4)
owe5 = Graphs. degree_histogram(g_mst5)
n5 = bar(collect(keys(owe5)), collect(values(owe5)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(n5, "Pearson5")


#year6
fa = Graphs.betweenness_centrality(g_mst6);
fb = Graphs.degree_centrality(g_mst6);
fc = Graphs.closeness_centrality(g_mst6,normalize = true);
fd = Graphs.eigenvector_centrality(g_mst6);
fe = Graphs.degree(g_mst6);
bn5 = hcat(Stocks, fa, fb, fc, fd,fe);
fd5 = DataFrame(bn5, [:Stock, :Betweenness, :Degree_Centrality, :Closeness, :Eigenvector, :Degree]);


XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Pearson_Cent6.xlsx", fd5)
owe6 = Graphs. degree_histogram(g_mst6)
n6 = bar(collect(keys(owe6)), collect(values(owe6)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(n6, "Pearson6")