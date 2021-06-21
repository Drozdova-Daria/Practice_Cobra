function m = load_model(f)
if ~exist('modelOri','var')
    modelOri = readCbModel(f);
end
modelOri = changeRxnBounds(modelOri,'ATPM',1000,'u');
m = modelOri;