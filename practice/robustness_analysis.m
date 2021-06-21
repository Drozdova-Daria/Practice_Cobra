model_const = load_model('ecoli_core_model.mat');

model = changeRxnBounds(model_const,'EX_o2(e)',-17,'b');
growthRates = zeros(21,1);
rates = zeros(21,1);
for i = 0:20
    model = changeRxnBounds(model,'EX_glc(e)',-i,'b');
    FBAsolution = optimizeCbModel(model,'max');
    if isnan(FBAsolution.f) == false
        growthRates(i+1) = FBAsolution.f;
    end
    rates(i + 1) = i;
end

figure;
plot(rates, growthRates)
xlabel('Glucose uptake rate (mmol 1/gDW*hr)')
ylabel('Growth rate (1/hr)')

model = changeRxnBounds(model_const,'EX_o2(e)',-17,'b');
growthRates = zeros(21,1);
rates = zeros(26,1);
for i = 0:25
    model = changeRxnBounds(model,'EX_o2(e)',-i,'b');
    FBAsolution = optimizeCbModel(model,'max');
    if isnan(FBAsolution.f) == false
        growthRates(i+1) = FBAsolution.f;
    end
    rates(i + 1) = i;
end

figure;
plot(rates, growthRates)
xlabel('Glucose uptake rate (mmol 1/gDW*hr)')
ylabel('Growth rate (1/hr)')
