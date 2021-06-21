model = load_model('ecoli_core_model.mat');

outputFormatOK = changeCbMapOutput('matlab');

map=readCbMap('ecoli_core_map');
options.zeroFluxWidth = 0.1;
options.rxnDirMultiplier = 10;

figure
options.fileName = '1_aerobic';
aerobic_model = changeRxnBounds(model,'EX_glc(e)',-18.5,'l');
aerobic_model = changeObjective(aerobic_model,'Biomass_Ecoli_core_w_GAM');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
drawFlux(map, aerobic_model, FBAsolution_aerobic_model.v, options);

figure
options.fileName = '1_anaerobic';
anaerobic_model = changeRxnBounds(model,'EX_o2(e)',0,'l');
anaerobic_model = changeObjective(anaerobic_model,'Biomass_Ecoli_core_w_GAM');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
drawFlux(map, anaerobic_model, FBAsolution_anaerobic_model.v, options);