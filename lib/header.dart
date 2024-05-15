import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      height: deviceHeight / 4,
      decoration: const BoxDecoration(
          color: Colors.purple,
          image: DecorationImage(
              image: AssetImage("assets/header.png"), fit: BoxFit.cover)),
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
    );
  }
}
