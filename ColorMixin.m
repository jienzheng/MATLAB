% Task 4
% Creating ColorMixin class with property
% of Color that gets and sets the color
% of any shape that is being called
classdef ColorMixin

    properties

        Color

    end

    methods
        
        % Color of the object is given to object by user input
        function obj = ColorMixin(color)
            
            obj.Color = color;

        end

        % Returns color
        function color = GetColor(obj)
            
            color = obj.Color;

        end

        % Color of the object is set to the color of user input
        function obj = SetColor(obj, color)

            obj.Color = color;

        end
    
    end
end
