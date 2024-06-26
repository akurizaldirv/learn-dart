class Sample {
  @override
  String toString() {
    return "sample";
  }

  @Deprecated("this method will be deleted next release")
  static void show() {
    print("deprecated !!!");
  }
}

class Todo {
  final String todo;

  const Todo(this.todo);
}

void main(List<String> args) {
  Sample.show(); // the IDE should warn you about the deprecating method

  @Todo("will be implemented next release")
  const a = Todo("todo");
}