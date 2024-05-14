import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app_flutter/const/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

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
            Container(
              width: deviceWidth,
              height: deviceHeight / 3,
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                      image: AssetImage("assets/header.png"),
                      fit: BoxFit.cover)),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "May 14, 2024",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      "My ToDo List",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_sharp,
                                size: 40,
                              ),
                              const Text(
                                "Study Lesson",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 19),
                              ),
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (val) => {
                                        setState(() {
                                          _isChecked = val!;
                                        }),
                                      }),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_sharp,
                                size: 40,
                              ),
                              const Text(
                                "Study Lesson",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 19),
                              ),
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (val) => {
                                        setState(() {
                                          _isChecked = val!;
                                        }),
                                      }),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_sharp,
                                size: 40,
                              ),
                              const Text(
                                "Study Lesson",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 19),
                              ),
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (val) => {
                                        setState(() {
                                          _isChecked = val!;
                                        }),
                                      }),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_sharp,
                                size: 40,
                              ),
                              const Text(
                                "Study Lesson",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 19),
                              ),
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (val) => {
                                        setState(() {
                                          _isChecked = val!;
                                        }),
                                      }),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_sharp,
                                size: 40,
                              ),
                              const Text(
                                "Study Lesson",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 19),
                              ),
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (val) => {
                                        setState(() {
                                          _isChecked = val!;
                                        }),
                                      }),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.notes_sharp,
                                size: 40,
                              ),
                              const Text(
                                "Study Lesson",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 19),
                              ),
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (val) => {
                                        setState(() {
                                          _isChecked = val!;
                                        }),
                                      }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Add New Task"),
            ),
          ],
        ),
      ),
    );
  }
}
