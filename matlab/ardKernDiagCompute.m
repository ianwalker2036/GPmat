function k = ardKernDiagCompute(kern, x)

% ARDKERNDIAGCOMPUTE Compute diagonal of ard kernel.

% KERN

% KERN


scales = sparse(diag(sqrt(kern.inputScales)));
x = x*scales;

rbfPart = ones(size(x, 1), 1);
linearPart = sum(x.*x, 2)*kern.linearVariance;
k = rbfPart*(kern.rbfVariance + kern.whiteVariance) + kern.biasVariance +linearPart;
