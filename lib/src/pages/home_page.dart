import 'package:dudev_website/src/constants/colors.dart';
import 'package:dudev_website/src/constants/nav_items.dart';
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
        backgroundColor: AppColors.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            Container(
              height: 60,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Colors.transparent,
                    AppColors.bgLight1,
                  ]),
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                children: [
                  const Text(
                    'Dudev',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: AppColors.yellowSecondary),
                  ),
                  const Spacer(),
                  for (int i = 0; i < navTiles.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          navTiles[i],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whitePrimary),
                        ),
                      ),
                    ),
                ],
              ),
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
