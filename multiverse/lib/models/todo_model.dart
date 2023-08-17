class TodoModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  TodoModel(
      {required this.userId,
      required this.id,
      required this.completed,
      required this.title});
  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      userId: json["userId"],
      id: json["id"],
      completed: json['completed'],
      title: json["title"]
    );
  }
}
