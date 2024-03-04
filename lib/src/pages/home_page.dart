import 'package:dudev_website/src/constants/colors.dart';
import 'package:dudev_website/src/constants/sizes.dart';
import 'package:dudev_website/src/widgets/drawer_mobile.dart';
import 'package:dudev_website/src/widgets/header_mobile.dart';
import 'package:dudev_website/src/widgets/header_web.dart';
import 'package:dudev_website/src/widgets/main_mobile.dart';
import 'package:dudev_website/src/widgets/main_web.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: AppColors.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinWebWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if (constraints.maxWidth >= kMinWebWidth)
                const HeaderWeb()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (constraints.maxWidth >= kMinWebWidth)
                const MainWeb()
              else
                const MainMobile(),

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
    });
  }
}
