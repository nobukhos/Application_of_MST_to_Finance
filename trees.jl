using SimpleWeightedGraphs, Graphs, GraphPlot
Dist = DataFrame(peardist_1, ["SBK", "MTN", "WHL", "VOD", "SHP", "GFI", "GRT", "SOL", "SLM", "REM",
"RNI", "IMP", "GLN", "INL", "INP", "MNP", "MRP", "NPN", "NED", "NPH", "AMS", "ANG", "APN", "BTI",
"EXX", "FSR", "DSY", "CFR", "CLS", "CPI", "BID", "ANH", "ABG", "BVT"]);
 
#Assigning nodes to colours according to industry
using Colors
maps = [1,2,3,2,3,5,1,6,1,7,1,5,5,1,1,6,3,3,1,5,5,5,8,4,5,1,1,4,3,1,3,4,1,7];
colour = [colorant"blue", colorant"green", colorant"red", colorant"orange", colorant"lightseagreen", colorant"purple", colorant"yellow", colorant"pink"];
nodefillc = colour[maps];
 g = SimpleWeightedGraph(ncol(Dist));
 ew = [];
pairings = [] ;
for i in 1:34
    for j in 1:34
        w = peardist_1[i,j] * 100;
        if w > 0
            push!(ew, w);
            Graphs.add_edge!(g, i, j, w);
            push!(pairings,[i,j]);
        end
    end
end

gplot(g, nodefillc = nodefillc, NODELABELSIZE = 2.5, nodelabel=names(Dist))
g_mst = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(g,minimize=true)
    Graphs.add_edge!(g_mst,i.src,i.dst,i.weight);
end

gplot(g_mst, nodelabel=names(Dist), nodefillc = nodefillc, NODELABELSIZE = 3.0)



#year_2
g1 = SimpleWeightedGraph(ncol(Dist));
ew1 = [];
pairings1 = [] ;
for i in 1:34
   for j in 1:34
       w1 = peardist_2[i,j]  ;
       if w1 > 0
           push!(ew1, w1);
           Graphs.add_edge!(g1, i, j, w1);
           push!(pairings1,[i,j]);
       end
   end
end

g_mst1 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(g1,minimize=true)
   Graphs.add_edge!(g_mst1,i.src,i.dst,i.weight);
end
gplot(g_mst1,nodelabel=names(Dist), nodefillc = nodefillc, NODELABELSIZE = 2.5)



#year3
 
g3 = SimpleWeightedGraph(ncol(Dist));
ew3 = [];
pairings3 = [] ;
for i in 1:34
   for j in 1:34
       w3 = peardist_3[i,j]  ;
       if w3 > 0
           push!(ew3, w3);
           Graphs.add_edge!(g3, i, j, w3);
           push!(pairings3,[i,j]);
       end
   end
end

g_mst3 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(g3,minimize=true)
   Graphs.add_edge!(g_mst3,i.src,i.dst,i.weight);
end
gplot(g_mst3,nodelabel=names(Dist), nodefillc = nodefillc, NODELABELSIZE = 2.5)


#year_4

g4 = SimpleWeightedGraph(ncol(Dist));
ew4 = [];
pairings4 = [] ;
for i in 1:34
   for j in 1:34 
       w4 = peardist_4[i,j]  ;
       if w4 > 0
           push!(ew4, w4);
           Graphs.add_edge!(g4, i, j, w4);
           push!(pairings4,[i,j]);
       end
   end
end

g_mst4 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(g4,minimize=true)
   Graphs.add_edge!(g_mst4,i.src,i.dst,i.weight);
end
gplot(g_mst4,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5 )


#year_5
g5 = SimpleWeightedGraph(ncol(Dist));
ew5 = [];
pairings5 = [] ;
for i in 1:34
   for j in 1:34
       w5 = peardist_5[i,j]  ;
       if w5 > 0
           push!(ew5, w5);
           Graphs.add_edge!(g5, i, j, w5);
           push!(pairings5,[i,j]);
       end
   end
end

g_mst5 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(g5,minimize=true)
   Graphs.add_edge!(g_mst5,i.src,i.dst,i.weight);
end
gplot(g_mst5,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5)


#year_6
g6 = SimpleWeightedGraph(ncol(Dist));
ew6 = [];
pairings6 = [] ;
for i in 1:34
   for j in 1:34
       w6 = peardist_6[i,j] ; 
       if w6 > 0
           push!(ew6, w6);
           Graphs.add_edge!(g6, i, j, w6);
           push!(pairings6,[i,j]);
       end
   end
end

g_mst6 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(g6,minimize=true)
   Graphs.add_edge!(g_mst6,i.src,i.dst,i.weight);
end
gplot(g_mst6,nodelabel=names(Dist), nodefillc = nodefillc, NODELABELSIZE = 2.5)

