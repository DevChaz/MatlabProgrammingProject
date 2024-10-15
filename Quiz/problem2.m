%Problem 2
data = readtable('crop_data.xlsx');
disp(data.Properties.VariableNames);  

data.TotalSales = data.("Quantity_kg_") .* data.("PricePerclc" + ...
    "kg_PHP_");

[max_sales, max_index] = max(data.TotalSales);
max_sales_id = data.ID(max_index);
max_sales_crop = data.Crop{max_index};

fileID = fopen('sales_summary.txt', 'w');

fprintf(fileID, 'Sales Summary:\n\n');
fprintf(fileID, 'Total Sales for Each Product:\n');
for i = 1:height(data)
    fprintf(fileID, 'ID: %d, Crop: %s, Total Sales: PHP %.2f\n', ...
        data.ID(i), data.Crop{i}, data.TotalSales(i));
end

fprintf(fileID, '\nTotal Quantity Sold for Each Product:\n');
for i = 1:height(data)
    fprintf(fileID, 'ID: %d, Crop: %s, Quantity Sold: %d kg\n', ...
        data.ID(i), data.Crop{i}, data.("Quantity_kg_")(i));
end

fprintf(fileID, '\nProduct with the Highest Total Sales:\n');
fprintf(fileID, 'ID: %d, Crop: %s, Sales: PHP %.2f\n', ...
    max_sales_id, max_sales_crop, max_sales);

fclose(fileID);

disp('Sales summary has been written to sales_summary.txt.');


