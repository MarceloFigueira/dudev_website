import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        //MAIN
        Container(
          height: 500,
          width: double.maxFinite,
        ),
        //SKILLS
        Container(
          height: 500,
          width: double.maxFinite,
          color: Colors.blueGrey,
        ),
        //PROJECTS
        Container(
          height: 500,
          width: double.maxFinite,
        ),
        //CONTACT
        Container(
          height: 500,
          width: double.maxFinite,
          color: Colors.blueGrey,
        ),
        //FOOTER
        Container(
          height: 500,
          width: double.maxFinite,
        )
      ],
    ));
  }
}
