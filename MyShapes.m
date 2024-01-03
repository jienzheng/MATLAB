% Prompt to give to user
fprintf("Please Choose a number from 1 - 5. \n " + ...
                "1 = Circle \n 2 = Rectangle \n 3 = Triangle \n" + ...
                " 4 = Equilateral Triangle \n 5 = Quit \n");
% Takes a number as input
x = input("Enter Number: ");

% Switch statements to go through each posibility
switch x
    % Circle
    case 1
        rad1 = input("Please enter the Radius for Circle.\n"); % Prompt
        col1 = input("Please enter the Color for Circle. \n", 's'); % Prompt
        circle1 = Circle(rad1, col1); % Creates new object with user inputs
        circle1.Display(); % Displays all properties of Circle
        circle1.Draw(); % Creates Drawing of Circle
    % Rectangle
    case 2
        rect1 = input("Please enter the Length for Rectangle.\n"); % Prompt
        rect2 = input("Please enter the Width for Rectangle.\n"); % Prompt
        col2 = input("Please enter the Color for Rectangle.\n", 's'); % Prompt
        rect = Rectangle(rect1, rect2, col2); % Creates new object with user inputs
        rect.Display(); % Displays all properties of Rectangle
        rect.Draw(); % Creates Drawing of Rectangle
    % Triangle
    case 3
        tria1 = input("Please enter the Base for Triangle.\n"); % Prompt
        tria2 = input("Please enter the Height for Triangle.\n"); % Prompt
        col3 = input("Please enter the Color for Triangle.\n", 's'); % Prompt
        tria = Triangle(tria1, tria2, col3); % Creates new object with user inputs
        tria.Display(); % Displays all properties of Triangle
        tria.Draw(); % Creates Drawing of Triangle
    % Equilateral Triangle
    case 4
        equitri1 = input("Please enter the Length for Equilateral Triangle.\n"); % Prompt
        col4 = input("Please enter the Color for Equilateral Triangle.\n", 's'); % Prompt
        equitri = EquiTriangle(equitri1,  col4); % Creates new object with user inputs
        equitri.Display(); % Displays all properties of Equilateral Triangle
        equitri.Draw(); % Creates Drawing of Equilateral Triangle
    % Quit Program
    case 5
        fprintf("You quit the program. \n");
    % Makes sure user input number from 1 - 5
    otherwise
        disp("Please enter value from 1 - 5.")
end