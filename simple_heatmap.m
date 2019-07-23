%Michael Valentino-Manno
%Simple colormap generator

mahogany = csvread('radiometry45.csv'); %substitute the name of the csv file you want to plot
birch = size(mahogany,1);
ginko = size(mahogany,2);



for row = 1:birch %nested for loop goes through each value
    for col = 1:ginko
        temp = (mahogany(row,col) / 100) - 273; %converts into celsius
        mahogany(row,col) = temp;
    end
end

fig = figure('Name', 'Heatmap');

imagesc(mahogany);

maple = colorbar;      
ylabel(maple, 'Temperature (C)')
colormap('hot'); %colorscheme
