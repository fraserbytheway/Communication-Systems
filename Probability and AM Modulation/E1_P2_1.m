

yarray = zeros(1,11);
zarray = zeros(1,18);
youtcomes = linspace(2, 12, 11);
zoutcomes = [1,2,3,4,5,6,8,9,10,12,15,16,18,20,24,25,30,36];

for t = 1:10000
    x1 = randi([1,6],1);
    x2 = randi([1,6],1);
    y = x1 + x2;
    z = x1*x2;

    num = find(zoutcomes == z);
    zarray(num) = zarray(num) + 1;
    yarray(y - 1) = yarray(y - 1) + 1;
end

yarray = yarray/10000;
zarray = zarray/10000;


figure;
bar(youtcomes, yarray)
title('Y PMF');
xlabel('x1 + x2');
ylabel('P(Y = x1 + x2)');
hold off

figure;
bar(zoutcomes, zarray)
title('Z PMF');
xlabel('x1x2');
ylabel('P(Z = x1x2)');


% Part 2 - Yes results approximately match. Y bar graph is near symmetric
% triangular shape as expected with ~ correct (P(Y = x)) numbers. For Z, 
% bar is roughly the same height, for the 4 different probability levels
