% README: MATLAB Programming Project
% ---------------------------------
% Project Overview:
% This project involves solving three different programming problems using MATLAB.
% Each problem focuses on data processing, analysis, and visualization using 
% input from Excel files and outputs to text files.

% ---------------------------------
% Contents:
% Problem 1: Reading and Writing Data
% Problem 2: Analyzing Sales Data
% Problem 3: Data Visualization
% Essay Reflection: Visualizing Data

% ---------------------------------
% Problem 1: Reading and Writing Data
% Objective:
% Create a MATLAB script to read data from an Excel file and write specific 
% outputs to a text file.

% Input:
% data.xlsx - Contains columns:
% - ID, Name, Score

% Processing Steps:
% 1. Import data using readtable.
% 2. Calculate the average score.
% 3. Identify the entry with the highest score.

% Output:
% - Write the average score and ID & Name of the highest score entry 
%   to output.txt.

% ---------------------------------
% Problem 2: Analyzing Sales Data
% Objective:
% Develop a MATLAB script that reads sales data from an Excel file, 
% processes it, and generates a summary in a text file.

% Input:
% sales_data.xlsx (Sheet: Sales)
% Columns:
% - Date (dd-mm-yyyy), ProductID, QuantitySold, UnitPrice

% Processing Steps:
% 1. Calculate Total Sales = QuantitySold * UnitPrice for each product.
% 2. Determine the total quantity sold for each product.
% 3. Identify the product with the highest total sales.

% Output:
% - Write the total sales and quantity sold for each product, and 
%   the product with the highest sales to sales_summary.txt.

% ---------------------------------
% Problem 3: Data Visualization
% Objective:
% Create a MATLAB script to read, process, and visualize data.

% Input:
% CS PEC 3 data.xlsx

% Processing Steps:
% 1. Calculate the mean of each numeric column.
% 2. Identify and count missing values in each column.
% 3. Visualize one column with a bar plot using the bar function.

% ---------------------------------
% Essay Reflection: Visualizing Data
% Watch the video "Visualizing Data | Data Science Tutorial in MATLAB Part 4" 
% and write an essay addressing the following questions:

% 1. Describe the different types of plots demonstrated and their applications.
% 2. Explain the process of creating a line plot and how it can be customized.
% 3. Discuss the importance of data visualization in data science and how MATLAB supports this.
% 4. Provide an example of a geo-bubble plot and explain the steps to create one.
% 5. Reflect on best practices for creating effective visualizations.
% 6. Discuss the usage of bar plots for visualizing data.

% ---------------------------------
% How to Run the Scripts:
% Ensure the required Excel files are in the MATLAB working directory:
% - data.xlsx
% - sales_data.xlsx
% - CS PEC 3 data.xlsx

% Run the appropriate MATLAB script for each problem:
% - Problem 1: read_and_write_data.m
% - Problem 2: analyze_sales_data.m
% - Problem 3: data_visualization.m

% Check the generated text files (output.txt and sales_summary.txt) for the results.

% ---------------------------------
% System Requirements:
% - MATLAB R2020 or later
% - Required Excel files must be accessible in the working directory.


%AUTHOR
%DevChaz