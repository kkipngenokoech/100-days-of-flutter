class Todo {
  final String title;
  final String username;
  final int age;
  final bool completed;

  Todo(
      {required this.age,
      required this.completed,
      required this.title,
      required this.username});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
        age: json["age"],
        completed: json["completed"],
        title: json["title"],
        username: json["username"]);
  }
}
