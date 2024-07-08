close all; clc; clearvars;

% File reading and name manipulation
extension_str = '.csv';
files_peaks = dir(['Single peak\*', extension_str]);
file_names_peaks = string(fullfile({files_peaks.name}));

files_wide = dir(['Wide scans\*', extension_str]);
file_names_wide = string(fullfile({files_wide.name}));


for i=1:numel(file_names_peaks)
    data = table2array(readtable(file_names_peaks(i), "VariableNamingRule", "preserve"));
    lambda_data = data(:,1);
    intensity_data = data(:,2);

    figure(i)
    hold on
    grid on

    plot(lambda_data, intensity_data)
    xlabel('\lambda (nm)')
    ylabel('Intensity')

end

for j=1:numel(file_names_wide)
    data = table2array(readtable(file_names_wide(j), "VariableNamingRule", "preserve"));
    lambda_data = data(:,1);
    intensity_data = data(:,2);

    figure(i+j)
    hold on
    grid on

    plot(lambda_data, intensity_data)
    xlabel('\lambda (nm)')
    ylabel('Intensity')
end