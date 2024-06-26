class Database {
  String dbName;
  static Database database = Database("localhost");

  Database(this.dbName) {
    print("create new database");
  }

  factory Database.get() {
    return database;
  }

  @override
  String toString() {
    return "db_name -> $dbName";
  }
}

void main(List<String> args) {
  var db1 = Database.get();
  var db2 = Database.get();

  print(db1 == db2);

  db1.dbName = "server";
  print(db1);
  print(db2);
  print(db1 == db2);
}
