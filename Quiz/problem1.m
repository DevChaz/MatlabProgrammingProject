%Problem 1
% Read data from the Excel file
data = readtable('data.xlsx');
disp(data)
scores = data.Score;

average_score = mean(scores);
[max_score, max_index] = max(scores);

highest_id = data.ID(max_index);
highest_name = data.Name{max_index};

fileID = fopen('output.txt', 'w');

fprintf(fileID, 'Average Score: %.1f\n', average_score);
fprintf(fileID, 'Highest Score: %d\n', max_score);
fprintf(fileID, 'ID: %d\n', highest_id);
fprintf(fileID, 'Name: %s\n', highest_name);

fclose(fileID);
