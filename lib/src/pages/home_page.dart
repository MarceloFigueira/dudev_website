import 'package:dudev_website/src/constants/colors.dart';
import 'package:dudev_website/src/constants/nav_items.dart';
import 'package:dudev_website/src/styles/style.dart';
import 'package:dudev_website/src/widgets/header_mobile.dart';
import 'package:dudev_website/src/widgets/header_web.dart';
import 'package:dudev_website/src/widgets/site_logo.dart';
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
            //const HeaderWeb(),
            HeaderMobile(
              onMenuTap: () {},
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
