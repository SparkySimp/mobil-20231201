import 'dart:math';

abstract class Shape {
  double get area;
  double get circumference;
}

class Rectangle extends Shape {
  late double width, height;

  Rectangle(this.width, this.height);
  @override
  double get area => (width * height).abs();
  @override
  double get circumference => 2 * (width.abs() + height.abs());
}

class Square extends Rectangle {
  Square(double edge) : super(edge, edge);
}

class Circle extends Shape {
  late double radius;
  Circle(this.radius);
  @override
  double get area => (pi * radius * radius).abs();

  @override
  double get circumference => (2 * radius * pi).abs();
}
