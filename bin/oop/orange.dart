class Orange {
  int qty;

  Orange(this.qty);
  Orange operator +(Orange orange) {
    var result = Orange(0);
    result.qty = qty + orange.qty;
    return result;
  } 

  @override
  String toString() {
    return "orange qty = $qty";
  }
}

void main(List<String> args) {
  var orange1 = Orange(10);
  var orange2 = Orange(20);
  var orange3 = orange1 + orange2;
  print(orange3);
}