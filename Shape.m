% Task 1
% Creating Shape Class with 
% properties of Name and Area
classdef Shape < matlab.mixin.Heterogeneous
    
    % Current properties of Shape
    properties

        Name
        Area

    end

    methods

        % Creating Shape constructor that 
        % takes name as input an input argument
        function obj = Shape(name)

            obj.Name = name;

        end

        % Creating a Display to display the
        % properties of current saved values
        % Uses fprintf to display output
        function Display(obj)
         
             fprintf('Shape Name: %s\n', obj.Name)
             fprintf('Shape Area: %.2f\n', obj.Area)
         
         end 
    end

    % Task 6, Static Method creation to take in an array
    % of objects, and calculate the different Stats
    methods (Static)

        function CalculateStatistics(obj)

            fprintf('Mean: %.2f\n', mean([obj.Area]))
            fprintf('Median: %.2f\n', median([obj.Area]))
            fprintf('Standard Dev: %.2f\n', std([obj.Area]))

        end
    end

end
