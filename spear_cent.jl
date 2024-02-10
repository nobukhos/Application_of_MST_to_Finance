ab1 = Graphs.betweenness_centrality(mk_mst);
ac1 = Graphs.degree_centrality(mk_mst);
ad1 = Graphs.closeness_centrality(mk_mst,normalize = true);
ae1 = Graphs.eigenvector_centrality(mk_mst);
af1 = Graphs.degree(mk_mst);

Stocks = ["SBK", "MTN", "WHL", "VOD", "SHP", "GFI", "GRT", "SOL", "SLM", "REM",
"RNI", "IMP", "GLN", "INL", "INP", "MNP", "MRP", "NPN", "NED", "NPH", "AMS", "ANG", "APN", "BTI",
"EXX", "FSR", "DSY", "CFR", "CLS", "CPI", "BID", "ANH", "ABG", "BVT"];
dat1 = hcat(Stocks, ab1, ac1, ad1, ae1, af1);
fr1 = DataFrame(dat1, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree])


XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Sp_Cen1.xlsx", (fr1))
tha1 = Graphs. degree_histogram(mk_mst)
b1 = bar(collect(keys(tha1)), collect(values(tha1)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(b1, "Spearm1")


 #year2
ba1 = Graphs.betweenness_centrality(mk_mst1);
bb1 = Graphs.degree_centrality(mk_mst1);
bc1= Graphs.closeness_centrality(mk_mst1,normalize = true);
bd1 = Graphs.eigenvector_centrality(mk_mst1);
be1 = Graphs.degree(mk_mst1);

dat2 = hcat(Stocks, ba1, bb1, bc1, bd1, be1);
fr2 = DataFrame(dat2, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);

XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Sp_Cen2.xlsx", (fr2))
tha2 = Graphs. degree_histogram(mk_mst1)
b2 = bar(collect(keys(tha2)), collect(values(tha2)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(b2, "Spearm2")

 #year3

ca1 = Graphs.betweenness_centrality(mk_mst3);
cb1 = Graphs.degree_centrality(mk_mst3);
cc1 = Graphs.closeness_centrality(mk_mst3,normalize = true);
cd1 = Graphs.eigenvector_centrality(mk_mst3);
ce1 = Graphs.degree(mk_mst3);


dat3 = hcat(Stocks, ca1, cb1, cc1, cd1, ce1);
fr3 = DataFrame(dat3, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);

XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Sp_Cen3.xlsx", (fr3))
tha3 = Graphs. degree_histogram(mk_mst3)
b3 = bar(collect(keys(tha3)), collect(values(tha3)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(b3, "Spearm3")


#year_4
da1 = Graphs.betweenness_centrality(mk_mst4);
db1 = Graphs.degree_centrality(mk_mst4);
dc1 = Graphs.closeness_centrality(mk_mst4,normalize = true);
dd1 = Graphs.eigenvector_centrality(mk_mst4);
de1 = Graphs.degree(mk_mst4);

dat4 = hcat(Stocks, da1, db1, dc1, dd1, de1);
fr4 = DataFrame(dat4, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);

XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Sp_Cen4.xlsx", (fr4))
tha4 = Graphs. degree_histogram(mk_mst4)
b4 = bar(collect(keys(tha4)), collect(values(tha4)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(b4, "Spearm4")


#year_5
ea1 = Graphs.betweenness_centrality(mk_mst5);
eb1 = Graphs.degree_centrality(mk_mst5);
ec1 = Graphs.closeness_centrality(mk_mst5,normalize = true);
ed1 = Graphs.eigenvector_centrality(mk_mst5);
ef1 = Graphs.degree(mk_mst5);

dat5 = hcat(Stocks, ea1, eb1, ec1, ed1, ef1);
fr5 = DataFrame(dat5, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);

XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Sp_Cen5.xlsx", (fr5))
tha5 = Graphs.degree_histogram(mk_mst5)
b5 = bar(collect(keys(tha5)), collect(values(tha5)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(b5, "Spearm5")

#year6
fa1 = Graphs.betweenness_centrality(mk_mst6);
fb1 = Graphs.degree_centrality(mk_mst6);
fc1 = Graphs.closeness_centrality(mk_mst6,normalize = true);
fd1 = Graphs.eigenvector_centrality(mk_mst6);
fe1 = Graphs.degree(mk_mst6);

dat6 = hcat(Stocks, fa1, fb1, fc1, fd1, fe1);
fr6 = DataFrame(dat6, [:Stock, :Betweenness, :Degree_Cent, :Closeness, :Eigenvector, :Degree]);

XLSX.writetable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Centrality_measures\\Sp_Cen6.xlsx", (fr6))
tha6 = Graphs. degree_histogram(mk_mst6)
b6 = bar(collect(keys(tha6)), collect(values(tha6)), orientation=:vertical, legend = false, xlabel = "Node Degree", ylabel = "Number Of Stocks")
savefig(b6, "Spearm6")