using SimpleWeightedGraphs, Graphs, GraphPlot
Dist = DataFrame(kendist_1, ["SBK", "MTN", "WHL", "VOD", "SHP", "GFI", "GRT", "SOL", "SLM", "REM",
"RNI", "IMP", "GLN", "INL", "INP", "MNP", "MRP", "NPN", "NED", "NPH", "AMS", "ANG", "APN", "BTI",
"EXX", "FSR", "DSY", "CFR", "CLS", "CPI", "BID", "ANH", "ABG", "BVT"]);
 

using Colors
maps = [1,2,3,2,3,5,1,6,1,7,1,5,5,1,1,6,3,3,1,5,5,5,8,4,5,1,1,4,3,1,3,4,1,7];
colour = [colorant"blue", colorant"green", colorant"red", colorant"orange", colorant"lightseagreen", colorant"purple", colorant"yellow", colorant"pink"];
nodefillc = colour[maps];


 nk = SimpleWeightedGraph(ncol(Dist));
 oj = [];
twins = [] ;
for i in 1:34
    for j in 1:34
        r = kendist_1[i,j];
        if r > 0
            push!(oj, r);
            Graphs.add_edge!(nk, i, j, r);
            push!(twins,[i,j]);
        end
    end
end


nk_mst = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(nk,minimize=true)
    Graphs.add_edge!(nk_mst,i.src,i.dst,i.weight);
end
gplot(nk_mst,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5,)


#year_2
 
nk1 = SimpleWeightedGraph(ncol(Dist));
oj1 = [];
twins1 = [] ;
for i in 1:34
   for j in 1:34
       r1 = kendist_2[i,j]  ;
       if r1 > 0
           push!(oj1, r1);
           Graphs.add_edge!(nk1, i, j, r1);
           push!(twins1,[i,j]);
       end
   end
end

nk_mst1 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(nk1,minimize=true)
   Graphs.add_edge!(nk_mst1,i.src,i.dst,i.weight);
end
gplot(nk_mst1,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5,)



#year3
 
nk3 = SimpleWeightedGraph(ncol(Dist));
oj3 = [];
twins3 = [] ;
for i in 1:34
   for j in 1:34
       r3 = kendist_3[i,j]  ;
       if r3 > 0
           push!(oj3, r3);
           Graphs.add_edge!(nk3, i, j, r3);
           push!(twins3,[i,j]);
       end
   end
end

nk_mst3 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(nk3,minimize=true)
   Graphs.add_edge!(nk_mst3,i.src,i.dst,i.weight);
end
gplot(nk_mst3,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5,)


#year_4

nk4 = SimpleWeightedGraph(ncol(Dist));
oj4 = [];
twins4 = [] ;
for i in 1:34
   for j in 1:34
       r4 = kendist_4[i,j]  ;
       if r4 > 0
           push!(oj4, r4);
           Graphs.add_edge!(nk4, i, j, r4);
           push!(twins4,[i,j]);
       end
   end
end

nk_mst4 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(nk4,minimize=true)
   Graphs.add_edge!(nk_mst4,i.src,i.dst,i.weight);
end
gplot(nk_mst4,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5,)


#year_5
nk5 = SimpleWeightedGraph(ncol(Dist));
oj5 = [];
twins5 = [] ;
for i in 1:34
   for j in 1:34
       r5 = kendist_5[i,j]  ;
       if r5 > 0
           push!(oj5, r5);
           Graphs.add_edge!(nk5, i, j, r5);
           push!(twins5,[i,j]);
       end
   end
end

nk_mst5 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(nk5,minimize=true)
   Graphs.add_edge!(nk_mst5,i.src,i.dst,i.weight);
end
gplot(nk_mst5,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5)


#year_6
nk6 = SimpleWeightedGraph(ncol(Dist));
oj6 = [];
twins6 = [] ;
for i in 1:34
   for j in 1:34 
       r6 = kendist_6[i,j] ; 
       if r6 > 0
           push!(oj6, r6);
           Graphs.add_edge!(nk6, i, j, r6);
           push!(twins6,[i,j]);
       end
   end
end


nk_mst6 = SimpleWeightedGraph(ncol(Dist));
for i in Graphs.kruskal_mst(nk6,minimize=true)
   Graphs.add_edge!(nk_mst6,i.src,i.dst,i.weight);
end
gplot(nk_mst6,nodelabel=names(Dist),nodefillc = nodefillc, NODELABELSIZE = 2.5)

