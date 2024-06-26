class Application {
  static final String dbName = "DB_PENJUALAN";
  static final String server = "LOCALHOST";
}

class Math {
  static int sum(int first, int second) => first + second;
}

void main(List<String> args) {
  print(Application.dbName);
  print(Application.server);
  print(Math.sum(2, 9));
}