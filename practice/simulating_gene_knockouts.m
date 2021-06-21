model = load_model('ecoli_core_model.mat');

[grRatio,grRateKO,grRateWT] = doubleGeneDeletion(model);
imagesc(grRatio)
xlabel('gene knockout 1')
ylabel('gene knockout 2')
