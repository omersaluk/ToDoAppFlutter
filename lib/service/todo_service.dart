import 'dart:convert';

import 'package:todo_app_flutter/model/todo.dart';
import 'package:http/http.dart' as http;

class TodoService {
  final String url = "https://dummyjson.com/todos/";

  Future<List<Todo>> getTodos() async {
    final response = await http.get(Uri.parse(url));
    List<dynamic> responsive = jsonDecode(response.body)["todos"];
    List<Todo> todos = List.empty(growable: true);

    responsive.forEach((element) {
      todos.add(Todo.fromJson(element));
    });

    return todos;
  }
}
