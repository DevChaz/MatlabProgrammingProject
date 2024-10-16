% Problem 2
% Read data from the Excel file
data = readtable('sales_data.xlsx');
%disp(data.Properties.VariableNames); % Option to check for column names 

data.QuantitySold_in_KG_ = data.QuantitySold_in_MT_ * 1000;

data.TotalSales = data.QuantitySold_in_KG_ .* data.UnitPrice_PHP_;

fileID = fopen('sales_summary.txt', 'w');

function formatted_amount = format_to_peso(amount)
    formatted_amount = sprintf('₱ %.2f', amount);
    formatted_amount = regexprep(formatted_amount, '(\d)(?=(\d{3})+(?!\d))', '$1,');
end

for i = 1:height(data)
    fprintf(fileID, 'ProductID: %s, Total Sales: %s, Quantity Sold: %.2f MT\n', data.ProductID{i}, format_to_peso(data.TotalSales(i)), data.QuantitySold_in_MT_(i));
end

[max_sales, max_index] = max(data.TotalSales);
max_sales_id = data.ProductID{max_index};  

fprintf(fileID, 'Product with Highest Sales: %s, Sales Amount: %s\n', max_sales_id, format_to_peso(max_sales));

fclose(fileID);

disp('Sales summary has been written to sales_summary.txt.');
