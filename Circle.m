% Task 2
% Creating Circle Class 
% who is a child class of Shape class
% Task 5, Inherits the ColorMixin Class
classdef Circle < Shape & ColorMixin

    % Current properties of Circle
    properties

        Radius

    end

    methods

        % Circle constructor that takes in Radius
        % as input and calls the parent
        % Shape class to set the name of Circle
        % Saving Radius and Area to the object
        % Takes in color as another input and
        % calls the Color Class to set the color
        % of the Shape
        function obj = Circle(radius, color)

            obj@ColorMixin(color);
            obj@Shape('Circle');
            obj.Radius = radius;
            obj.Area = obj.CalculateArea();

        end

        % Creation of Area to calculate area
        function a = CalculateArea(obj)

            a = (pi * obj.Radius.^2);

        end

        % Task 3
        % We override the Display method from Shape
        % to display the current Name, Radius, and
        % Area of the Circle.
        % Task 5, Display color of Circle.
        function Display(obj)

            fprintf("The area of a %s with a radius of %.2f " + ...
                "units is approximately %.2f square " + ...
                "units. \n", obj.Name, obj.Radius, obj.Area);
            fprintf("The color of this Circle is: [%s]. \n", join(string(obj.GetColor), ','));
 
        end

        % Task 7, Creation of Draw method to make a Circle
        % Used the Rectangle function along with curvature to
        % make the proper shape of a Circle. Made a textbox
        % to display the all the properties of Circle. Axis 
        % Equal to make the drawing more symmetrical
        function Draw(obj) 
            rectangle('Position', [0,0, (2*obj.Radius), (2*obj.Radius)], 'Curvature', [1 1], 'FaceColor',obj.Color);
            title('Circle');
            str = {"Name: " + obj.Name, "Radius: " + obj.Radius, "Area: " + obj.Area, "Color: [" + join(string(obj.GetColor), ',') + ']'};
            dim = [.7 .793 .56 .13];
            annotation('textbox', dim, 'String', str, 'BackgroundColor', 'white')
            axis equal
        end
    end
end
