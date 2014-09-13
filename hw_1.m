clc

M = [5 4 0 9; 6 3 7 12; 8 3 7 4]; % 3 x 4
N = [5 4 0; 6 3 7; 8 3 7; 3 1 8]; % 4 x 3

Sum_M = sum(sum(M));
Sum_N = sum(sum(N));

Sum_Product_MN = Sum_M * Sum_N;
Sum_Element_MN = sum(M.*N');

Largest_M = max(M(:));

egen = eig(M * N);
Eig_ProductMN = sum(egen);

fprintf('My ubit name is %s\n', yourubitname);
fprintf('My student number is %d\n', yournumber);

fprintf('Sum_M is %d\n', Sum_M);
fprintf('Sum_N is %d\n', Sum_N);
fprintf('Sum_Product_MN is %d\n', Sum_Product_MN);
fprintf('Largest_M is %d\n', Largest_M);
fprintf('Eig_ProductMN is %3.2f\n', Eig_ProductMN);

% 2. part of the problem

C1 = [1.7 1.6 1.4 1.2 1.8 2 0.9 1.6 1.5 1.6];
C2 = [3.2 3.7 3.5 4.3 2.9 3.6 3.3 4.1 2.2 3.6];

Mu_1 = sum(C1)/length(C1);
Mu_2 = sum(C2)/length(C2);

fprintf('Mu_1 is %3.2f\n', Mu_1);
fprintf('Mu_2 is %3.2f\n', Mu_2);

tmp_1 = C1 - Mu_1;
tmp_2 = C2 - Mu_2;

% find the Sigma_1
Sigma_1 = (1 / length(C1)) * sum(tmp_1 * tmp_1');

fprintf('Sigma_1 is %3.4f\n', Sigma_1);

% find the Sigma_2
Sigma_2 = (1 / length(C2)) * sum(tmp_2 * tmp_2');

fprintf('Sigma_2 is %3.4f\n', Sigma_2);

% find the covariance
tmp3 = tmp_1.* tmp_2; % (C1 - Mu_1) * (C2 - Mu_2)

Covariance = sum(tmp_3) / (length(C1) - 1);

fprintf('Covariance is %3.4f\n', Covariance);

% plot the density vectors
figure
plot(C1,'ob');	% o - plot a circle, b - blue
hold on
plot(C2,'xr');	% x - plot a x, r - red
title('Plotting estimated density');
legend('C1','C2');
axis([0 11 0 5]);
