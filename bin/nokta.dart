import 'dart:math';

class Nokta {
  late double x;
  late double y;

  Nokta(this.x, this.y);

  Nokta.origin() {
    x = 0;
    y = 0;
  }

  Nokta.fromJson(Map json) {
    x = json['x'];
    y = json['y'];
  }

  Map toJson() {
    return {'x': x, 'y': y};
  }

  double distanceTo(Nokta other) {
    double dx = this.x - other.x;
    double dy = this.y - other.y;

    // execute Pythagorean Theorem.
    return sqrt(dx * dx + dy * dy);
  }

  double get distanceToOrigin {
    return distanceTo(Nokta.origin());
  }

  @override
  String toString() {
    return 'Nokta{x: $x, y: $y}';
  }
}

class Nokta3D {
  // 3 boyutlu düzlemde bir nokta
  late double x, y, z;

  Nokta3D(this.x, this.y, this.z);

  Nokta3D.fromJson(Map json) {
    x = json['x'];
    y = json['y'];
    z = json['z'];
  }

  Nokta3D.origin() {
    this.x = 0;
    this.y = 0;
    this.z = 0;
  }
}
