function Frank = MGFS(X_train, Y_train)
cordis = pdist2(X_train',Y_train','correlation');
cordis(isnan(cordis)) = 0;
Edg = pdist2(cordis,cordis);
[aa bb] = find(Edg>0);
w1 = Edg(find(Edg>0));
G = graph(aa,bb,w1);
rank = centrality(G,'pagerank','Importance',G.Edges.Weight);
[w1 w2]=sort(-rank)
FRank=w2;
end

