% Task 2
% Creating Rectangle Class 
% who is a child class of Shape class
% Task 5, Inherits the ColorMixin Class
classdef Rectangle < Shape & ColorMixin

    % Current properties of Rectangle
    properties

        Length
        Width

 end

    methods

        % Rectangle constructor that takes in Length
        % and Width as inputs and calls the parent
        % Shape class to set the name of Rectangle
        % Saving Length, Width, and Area to the object
        % Takes in color as another input and
        % calls the Color Class to set the color
        % of the Shape
        function obj = Rectangle(length, width, color)
            
            obj@ColorMixin(color);
            obj@Shape("Rectangle");
            obj.Length = length;
            obj.Width = width;
            obj.Area = obj.CalculateArea();
            
        end

        % Creation of Area to calculate area
        function a = CalculateArea(obj)

           a = obj.Length * obj.Width;
           
        end

        % Task 3
        % We override the Display method from Shape
        % to display the current Name, Length,
        % Width, and Area of the Rectangle. 
        % Task 5, Display color of Rectangle.
        function Display(obj)

            fprintf("The area of a %s with a length of %.2f units" + ...
                " and witdth of %.2f units is approximately %.2f " + ...
                "square units. \n", obj.Name, obj.Length, obj.Width, obj.Area);
            fprintf("The color of this Rectangle is: [%s]. \n", join(string(obj.GetColor), ','));
        end

        % Task 7, Creation of Draw method to make a Rectangle
        % Used the Rectangle function to make proper shape of 
        % a Rectangle. Made a textbox to display the all
        % the properties of Rectangle. Axis Equal to make the
        % drawing more symmetrical
        function Draw(obj)
            rectangle('Position', [0,0, obj.Length, obj.Width], 'FaceColor', obj.Color);
            title('Rectangle')
            str = {"Name: " + obj.Name, "Length: " + obj.Length, "Width: " + obj.Width, "Area: " + obj.Area, "Color: [" + join(string(obj.GetColor), ',') + ']'};
            dim = [.7 .765 .56 .16];
            annotation('textbox', dim, 'String', str, 'BackgroundColor', 'white')
            axis equal
        end
    end
end

