%Michael Valentino-Manno
%7/22/19
%3D heatmap fun stuff
%to view data at a certain point, click the 'data cursor' in the plot
%window, then click on the plot

raspberry = csvread('radiometry45.csv'); %substitute the name of the csv file you want to plot

strawberry = size(raspberry,1);
blueberry = size(raspberry,2);


for row = 1:strawberry %nested for loop goes through each value
    for col = 1:blueberry
        grape = (raspberry(row,col) / 100) - 273; %converts into celsius
        raspberry(row,col) = grape;
    end
end

blackberry = surf(raspberry);
zlabel('Temperature (C)');
xlabel('Width Pixel');
ylabel('Height Pixel');
maple = colorbar;      
ylabel(maple, 'Temperature (C)')
colormap('hot'); %'cus you're hot and you're cold