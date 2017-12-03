function [r_err_train, r_err_val] = random_example(X_poly, y, X_poly_val, yval, lambda)
maxnum = length(y);
r_err_train = zeros(maxnum, 1);
r_err_val = zeros(maxnum, 1);
loops = 50;
for i = 1:maxnum
	r_err_train(i) = 0.0;
	r_err_val(i) = 0.0;
	for j = 1:loops
		index = randperm(maxnum);
		temp = index(1:i);
		X_temp_train = X_poly(temp, :);
		y_temp_train = y(temp);
		index = randperm(length(yval));
		temp = index(1:i);
		X_temp_val = X_poly_val(temp, :);
		y_temp_val = yval(temp);
		[theta] = trainLinearReg(X_temp_train, y_temp_train, lambda);
		r_err_train(i) = r_err_train(i) + linearRegCostFunction(X_temp_train, y_temp_train, theta, 0)/loops;
		r_err_val(i) = r_err_val(i) + linearRegCostFunction(X_temp_val, y_temp_val, theta, 0)/loops;
	end
end
