fileName = 'ecoli_core_model.mat';
if ~exist('modelOri','var')
    modelOri = readCbModel(fileName);
end
modelOri = changeRxnBounds(modelOri,'ATPM',1000,'u');
model = modelOri;

[grRatio,grRateKO,grRateWT] = doubleGeneDeletion(model);
imagesc(grRatio)
xlabel('gene knockout 1')
ylabel('gene knockout 2')