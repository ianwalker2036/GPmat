function kern = kernCreate(X, kernelType)

% KERNCREATE Initialise a kernel structure.

% KERN

% KERN


kern.Kstore = [];
kern.diagK = [];
if iscell(kernelType)
  % compound kernel type
  kern.type = 'cmpnd';
  for i = 1:length(kernelType)
    kern.comp{i}.type = kernelType{i};
    kern.comp{i}.inputDimension = size(X, 2);
  end
else
  kern.type = kernelType;
  kern.inputDimension = size(X, 2);
end
kern = kernParamInit(kern);
