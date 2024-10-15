%Problem 3
%............
data = readtable('CST2_4-Data.xlsx');

disp('Imported Data:');
disp(data);

meanValue1 = mean(data.Value1, 'omitnan');  
meanValue2 = mean(data.Value2, 'omitnan'); 

fprintf('Mean of Value1: %.2f\n', meanValue1);
fprintf('Mean of Value2: %.2f\n', meanValue2);

missingValue1 = sum(ismissing(data.Value1));
missingValue2 = sum(ismissing(data.Value2));

fprintf('Missing values in Value1: %d\n', missingValue1);
fprintf('Missing values in Value2: %d\n', missingValue2);

figure;  
bar(data.Value1);
title('Bar Plot of Value1');
xlabel('Index');
ylabel('Value1');
grid on; 

saveas(gcf, 'Value1_BarPlot.png');
