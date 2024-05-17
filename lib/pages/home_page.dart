import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app_flutter/const/color.dart';
import 'package:todo_app_flutter/const/task_type.dart';
import 'package:todo_app_flutter/header.dart';
import 'package:todo_app_flutter/model/task.dart';
import 'package:todo_app_flutter/pages/new_task_page.dart';
import 'package:todo_app_flutter/service/todo_service.dart';
import 'package:todo_app_flutter/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Task> todo = [
  Task(
      title: "Study Lesson",
      description: "Study 111",
      isCompleted: false,
      type: TaskType.note),
  Task(
      title: "Drink Water",
      description: "Water",
      isCompleted: false,
      type: TaskType.contest),
  Task(
      title: "Check computer",
      description: "Check for service",
      isCompleted: false,
      type: TaskType.calender),
];

List<Task> complated = [
  Task(
      title: "Drink Water",
      description: "Water",
      isCompleted: false,
      type: TaskType.contest),
  Task(
      title: "Check computer",
      description: "Check for service",
      isCompleted: false,
      type: TaskType.calender),
];

class _HomePageState extends State<HomePage> {
  void taskAdd(Task newtask) {
    setState(() {
      todo.add(newtask);
    });
  }

  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    TodoService todoService = TodoService();
    todoService.getTodos();
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundcolor),
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            Header(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: todo.length,
                    itemBuilder: (context, index) {
                      return TodoItem(
                        task: todo[index],
                      );
                    },
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Completed",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: complated.length,
                    itemBuilder: (context, index) {
                      return TodoItem(
                        task: complated[index],
                      );
                    },
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      AddNewTask(addnewTask: ((newtask) => taskAdd(newtask))),
                ));
              },
              child: Text("Add New Task"),
            ),
          ],
        ),
      ),
    );
  }
}
