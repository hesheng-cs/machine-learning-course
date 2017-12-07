function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
%  After determin the best C and sigma, turn off these codes below: 

%option = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%s = length(option);
%costs = zeros(s, s);
%for i=1:s
%	C = option(i);
%	for j=1:s
%		sigma = option(j);
%		model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%		predictions = svmPredict(model, Xval);
%		costs(i, j) = mean(double(predictions ~= yval));
%	end
%end

%[a, row] = min(costs);
%[b, col] = min(a);
%C = option(row(col));
%sigma = option(col);
%disp(C);  % = 1
%disp(sigma); % = 0.1


% =========================================================================

end
