model = load_model('ecoli_core_model.mat');

figure
spy(model.S)
xlabel('Reactions')
ylabel('Metabolites')

Sbin = zeros(size(model.S));
Sbin(find(model.S)) = 1;
for i = 1 : length(model.mets)
    metConnectivity(i,1) = sum(Sbin(i,:));
end
figure
loglog(sort(metConnectivity,'descend'),'*')
xlabel('Metabolite number (rank ordered) - log scale');
ylabel('Number of reactions - log scale')

for i = 1 : length(model.rxns)
    rxnParticipation(i,1) = sum(Sbin(:,i));
end
mean(rxnParticipation)

growthDel = zeros(length(model.mets),1);
for i = 1 : length(model.mets)
    rxnID = find(model.S(i,:));
    for j = 1 : length(rxnID)
        modelDel = singleRxnDeletion(model,model.rxns(rxnID(j)));
        FBAsolutionDel = optimizeCbModel(modelDel);
        if FBAsolutionDel.f <= 1e-6
            growthDel(i,1) = growthDel(i,1) + 1;
        end
    end
end
lethalityFraction = growthDel./metConnectivity;
figure
semilogx(metConnectivity,lethalityFraction,'*')
xlabel('metabolite connectivity - log scale');