class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}

void main(List<String> args) {
  var point1 = ImmutablePoint(10, 10);
  var point2 = ImmutablePoint(10, 10);
  var point3 = const ImmutablePoint(10, 10);
  var point4 = const ImmutablePoint(10, 10);
  var point5 = const ImmutablePoint(20, 20);

  print(point1 == point2); // false --- karena object dibuat dengan hashcode yang berbeda
  print(point3 == point4); // true --- karena object dibuat dengan hashcode yang sama
  print(point4 == point5); // false --- karena object dibuat dengan hashcode yang berbeda (nilainya parameter berbeda)
}