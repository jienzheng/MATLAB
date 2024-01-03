% Task 2
% Creating Triangle Class 
% who is a child class of Shape class
% Task 5, Inherits the ColorMixin Class
classdef Triangle < Shape & ColorMixin

    % Current properties of Triangle
    properties

        Base
        Height

 end

    methods

        % Triangle constructor that takes in Base
        % and Height as inputs and calls the parent
        % Shape class to set the name of Triangle
        % Saving Base, Height, and Area to the object
        % Takes in color as another input and
        % calls the Color Class to set the color
        % of the Shape
        function obj = Triangle(base, height, color)

            obj@ColorMixin(color);
            obj@Shape("Triangle");
            obj.Base = base;
            obj.Height = height;
            obj.Area = obj.CalculateArea();
            
        end

        % Creation of Area to calculate area
        function a = CalculateArea(obj)

           a = obj.Base * obj.Height * (0.5);

        end

        % Task 3
        % We override the Display method from Shape
        % to display the current Name, Base,
        % Height, and Area of the Triangle. 
        % Task 5, Display color of Triangle.
        function Display(obj)
 
             fprintf("The area of a %s with a base of %.2f units and " + ...
                 "height of %.2f units is approximately %.2f square " + ...
                 "units.\n", obj.Name, obj.Base, obj.Height, obj.Area);
             fprintf("The color of this Triangle is: [%s]. \n", join(string(obj.GetColor), ','));
 
        end

        % Task 7, Creation of Draw method to make a Triangle
        % Used the plot function to make proper shape of 
        % a Triangle. Made a textbox to display the all
        % the properties of Triangle. Axis Equal to make the
        % drawing more symmetrical
        function Draw(obj)
            plot([0, obj.Base/2, obj.Base, 0],[0, obj.Height, 0, 0])
            area([0, obj.Base/2, obj.Base], [0,obj.Height, 0], 'FaceColor',obj.Color)
            title('Triangle');
            str = {"Name: " + obj.Name, "Base: " + obj.Base, "Height: " + obj.Height, "Area: " + obj.Area, "Color: [" + join(string(obj.GetColor), ',') + ']'};
            dim = [.7 .763 .56 .16];
            annotation('textbox', dim, 'String', str, 'BackgroundColor', 'white')
            axis equal
        end
     end
 end