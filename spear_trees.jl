using SimpleWeightedGraphs, Graphs, GraphPlot
Dist = DataFrame(speardist_1, ["SBK", "MTN", "WHL", "VOD", "SHP", "GFI", "GRT", "SOL", "SLM", "REM",
"RNI", "IMP", "GLN", "INL", "INP", "MNP", "MRP", "NPN", "NED", "NPH", "AMS", "ANG", "APN", "BTI",
"EXX", "FSR", "DSY", "CFR", "CLS", "CPI", "BID", "ANH", "ABG", "BVT"]);
 


using Colors
maps = [1,2,3,2,3,5,1,6,1,7,1,5,5,1,1,6,3,3,1,5,5,5,8,4,5,1,1,4,3,1,3,4,1,7];
colour = [colorant"blue", colorant"green", colorant"red", colorant"orange", colorant"lightseagreen", colorant"purple", colorant"yellow", colorant"pink"];
nodefillc = colour[maps];

 mk = SimpleWeightedGraph(ncol(Dist));
 nj = [];
twin = [] ;
for i in 1:34
    for j in 1:34
        x = speardist_1[i,j];
        if x > 0
            push!(nj, x);
            Graphs.add_edge!(mk, i, j, x);
            push!(twin,[i,j]);
        end
    end
end

mk_mst = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(mk,minimize=true)
    Graphs.add_edge!(mk_mst,i.src,i.dst,i.weight);
end
gplot(mk_mst,nodelabel=names(Dist), nodefillc = nodefillc, NODELABELSIZE = 2.5)


#year_2
 
mk1 = SimpleWeightedGraph(ncol(Dist));
nj1 = [];
twin1 = [] ;
for i in 1:34
   for j in 1:34
       x1 = speardist_2[i,j]  ;
       if x1 > 0
           push!(nj1, x1);
           Graphs.add_edge!(mk1, i, j, x1);
           push!(twin1,[i,j]);
       end
   end
end

mk_mst1 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(mk1,minimize=true)
   Graphs.add_edge!(mk_mst1,i.src,i.dst,i.weight);
end
gplot(mk_mst1,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5)



#year3
 
 mk3 = SimpleWeightedGraph(ncol(Dist));
nj3 = [];
twin3 = [] ;
for i in 1:34
   for j in 1:34 
       x3 = speardist_3[i,j]  ;
       if x3 > 0
           push!(nj3, x3);
           Graphs.add_edge!(mk3, i, j, x3);
           push!(twin3,[i,j]);
       end
   end
end

mk_mst3 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(mk3,minimize=true)
   Graphs.add_edge!(mk_mst3,i.src,i.dst,i.weight);
end

gplot(mk_mst3,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5)


#year_4
mk4 = SimpleWeightedGraph(ncol(Dist));
nj4 = [];
twin4 = [] ;
for i in 1:34
   for j in 1:34 
       x4 = speardist_4[i,j]  ;
       if x4 > 0
           push!(nj4, x4);
           Graphs.add_edge!(mk4, i, j, x4);
           push!(twin4,[i,j]);
       end
   end
end

mk_mst4 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(mk4,minimize=true)
   Graphs.add_edge!(mk_mst4,i.src,i.dst,i.weight);
end
gplot(mk_mst4,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5)


#year_5
mk5 = SimpleWeightedGraph(ncol(Dist));
nj5 = [];
twin5 = [] ;
for i in 1:34
   for j in 1:34 
       x5 = speardist_5[i,j]  ;
       if x5 > 0
           push!(nj5, x5);
           Graphs.add_edge!(mk5, i, j, x5);
           push!(twin5,[i,j]);
       end
   end
end

mk_mst5 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(mk5,minimize=true)
   Graphs.add_edge!(mk_mst5,i.src,i.dst,i.weight);
end
gplot(mk_mst5,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5)


#year_6
mk6 = SimpleWeightedGraph(ncol(Dist));
nj6 = [];
twin6 = [] ;
for i in 1:34
   for j in 1:34 
       x6 = speardist_6[i,j] ; 
       if x6 > 0
           push!(nj6, x6);
           Graphs.add_edge!(mk6, i, j, x6);
           push!(twin6,[i,j]);
       end
   end
end

mk_mst6 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(mk6,minimize=true)
   Graphs.add_edge!(mk_mst6,i.src,i.dst,i.weight);
end
gplot(mk_mst6,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5)

