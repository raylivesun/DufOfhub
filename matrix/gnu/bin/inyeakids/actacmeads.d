module matrix.gnu.bin.inyeakids.atacmeads;

import std.stdio;

double calculateArea(double length, double width)
{
    return length * width;
}

void displayArea(double area)
{
    writeln("The area of the rectangle is: ", area);
}

void displayPerimeter(double perimeter)
{
    writeln("The perimeter of the rectangle is: ", perimeter);
}

void main()
{
    double length = 5.0;
    double width = 3.0;
    double area = calculateArea(length, width);
    displayArea(area);

    double perimeter = 2 * (length + width);
    writeln("The perimeter of the rectangle is: ", perimeter);
}
