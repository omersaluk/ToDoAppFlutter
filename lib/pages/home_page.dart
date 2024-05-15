import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app_flutter/const/color.dart';
import 'package:todo_app_flutter/header.dart';
import 'package:todo_app_flutter/pages/new_task_page.dart';
import 'package:todo_app_flutter/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> todo = ["Study Lessons", "Drink Water", "Go to School"];
List<String> complated = ["Shower", "Meeting"];

class _HomePageState extends State<HomePage> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
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
                        title: todo[index],
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
                      return TodoItem(title: complated[index]);
                    },
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AddNewTask(),
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
