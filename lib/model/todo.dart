import 'package:todo_app_flutter/pages/home_page.dart';

class Todo {
  Todo({
    required this.id,
    required this.todo,
    required this.completed,
    required userID,
  });

  int? id;
  String? todo;
  bool? completed;
  int? userID;

  //from json
  Todo.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    todo = json["todo"];
    completed = json["completed"];
    userID = json["userID"];
  }

  //to json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data["id"] = id;
    data["todo"] = todo;
    data["completed"] = completed;
    data["userID"] = userID;

    return data;
  }
}
