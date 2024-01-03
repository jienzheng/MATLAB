% Task 4
% Creating Equilateral Triangle class
% which is a child class of Triangle
% Task 5, Inherits the ColorMixin Class
% from Triangle
classdef EquiTriangle < Triangle

    % Current properties of Equilateral Triangle
    properties

        Length

    end

    methods

        % Equilateral Triangle constructor that takes in 
        % Length input and calls the parent
        % Triangle class to set the name of Rectangle
        % Saving Base, Height, and Area to the object
        % Takes in color as another input and
        % calls the Color Class to set the color
        % of the Shape
        function obj = EquiTriangle(length, color)

            obj@Triangle(length, ((0.5) * (sqrt(3) * length)), color);
            obj.Length = length;
        end

        % Task 3
        % We override the Display method from Shape
        % to display the current Name, Length,
        % and Area of the Equilateral Triangle. 
        % Task 5, Display color of Equilateral Triangle.
        function Display(obj)

            fprintf("The area of the equilateral triangle " + ...
                "with a side length of %.2f units is " + ...
                "approximately %.2f square units. \n", obj.Base, obj.Area);
            fprintf("The color of this Equilateral " + ...
                "Triangle is: [%s]. \n", join(string(obj.GetColor), ','));

        end

        % Task 7, Creation of Draw method to make a Equalateral 
        % Triangle Used the plot function to make proper shape of 
        % a Equalateral Triangle. Made a textbox to display the all
        % the properties of Equalateral Triangle. Axis Equal to make
        % the drawing more symmetrical
        function Draw(obj)
            plot([0, obj.Base/2, obj.Base, 0],[0, obj.Height, 0, 0])
            area([0, obj.Base/2, obj.Base], [0,obj.Height, 0], 'FaceColor',obj.Color)
            title('Equilateral Triangle');
            str = {"Name: Equilateral Triangle ", "Length: " + obj.Length, "Area: " + obj.Area, "Color: [" + join(string(obj.GetColor), ',') + ']'};
            dim = [.7 .783 .56 .14];
            annotation('textbox', dim, 'String', str, 'BackgroundColor', 'white')
            axis equal
        end

    end
end