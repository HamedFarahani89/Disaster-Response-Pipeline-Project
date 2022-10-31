clc;
clear;

%% import data
data = readmatrix('AdjustedPrice2010.csv');
data = data(:,1);

%% determine parameters
Alpha= 3.431354789;
Beta= 159.0555874;
p= 0.566834632;
q= 0.784014173;
n= length(data);

%% upper and lower limits by binomial
a= 0.05;
ulim = zeros(n,1);
dlim = zeros(n,1);

cdf = GB2CDF(sort(data),Alpha, Beta,p,q);

i = 1;
while i<n
    disp(i)

    ulim(i,1) = binoinv(1-a/2, n, cdf(i)) ./n;
    
    llim(i,1) = binoinv(a/2, n, cdf(i)) ./n;
    i = i +1;
end
%% plots
[eCDF, ex] = ecdf(data);
f0 = figure('WindowState','maximized');
plot(ex, eCDF,'b.');
hold on;
plot(ex, llim);
hold on;
plot(ex, ulim);
hold off