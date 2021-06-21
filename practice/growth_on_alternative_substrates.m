model = load_model('ecoli_core_model.mat');

aerobic_model_const = changeRxnBounds(model,'EX_glc(e)',0,'l');
anaerobic_model_const = changeRxnBounds(model,'EX_o2(e)',0,'l');

% acetate
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_ac(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_ac(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% acelaldehyde
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_acald(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_acald(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% 2-oxoglutarate
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_akg(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_akg(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% ethanol
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_etoh(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_etoh(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% D-fructose
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_fru(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_fru(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% fumarate
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_for(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_for(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% D-glucose
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_glc(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_glc(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% L-glutamine
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_gln_L(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_gln_L(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% L-glutamate
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_glu_L(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_glu_L(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% D-lactate
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_lac_D(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_lac_D(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% L-malate
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_mal_L(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_mal_L(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% pyruvate
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_pyr(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_pyr(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]

% succinate
aerobic_model = changeRxnBounds(aerobic_model_const,'EX_succ(e)',-20,'l');
FBAsolution_aerobic_model = optimizeCbModel(aerobic_model,'max');
anaerobic_model = changeRxnBounds(anaerobic_model_const,'EX_succ(e)',-20,'l');
FBAsolution_anaerobic_model = optimizeCbModel(anaerobic_model,'max');
[FBAsolution_aerobic_model.f, FBAsolution_anaerobic_model.f]
