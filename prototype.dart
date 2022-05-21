abstract class Shape {
  Shape clone();
}

class Rectangle implements Shape {
  int? x;
  int? y;
  Rectangle(this.x, this.y);

  Rectangle.fromSource(Rectangle source) {
    x = source.x;
    y = source.y;
  }

  @override
  Rectangle clone() {
    return Rectangle.fromSource(this);
  }
  
  @override
  String toString() => 'x-> $x y-> $y';
  
}
