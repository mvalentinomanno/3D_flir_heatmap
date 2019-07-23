%Michael Valentino-Manno
%7/23/19
%3D heatmap fun stuff
%this code is setup for csv files named radiometry#.csv
%to view data at a certain point, click the 'data cursor' in the plot
%window, then click on the plot
cranberry = '\nEnter the name of the first csv file you want to visualize \n(Note: the file name must follow this naming convention: radiometry#.csv | e.g. radiometry45.csv) : ';
huckleberry = input(cranberry,'s');

marionberry = char(extractBetween(huckleberry,"radiometry",".csv",'Boundaries','exclusive'));

cranberry = 'How many subsequent csv files would you like to visualize? (enter a number): ';
huckleberry = input(cranberry) + 1;

for splash = 1:huckleberry
    
cherry = strcat('radiometry',marionberry);
cherry = strcat(cherry,'.csv');

raspberry = csvread(cherry); 

strawberry = size(raspberry,1);
blueberry = size(raspberry,2);


for row = 1:strawberry %nested for loop goes through each value
    for col = 1:blueberry
        grape = (raspberry(row,col) / 100) - 273; %converts into celsius
        raspberry(row,col) = grape;
    end
end
figure
blackberry = surf(raspberry);
zlabel('Temperature (C)');
xlabel('Width Pixel');
ylabel('Height Pixel');
title(cherry);
maple = colorbar;      
ylabel(maple, 'Temperature (C)')
colormap('hot'); %'cus you're hot and you're cold

drip = str2num(marionberry);
drip = drip + 1;
marionberry = num2str(drip);
end