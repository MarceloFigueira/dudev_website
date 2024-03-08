import 'package:dudev_website/src/constants/app_colors.dart';
import 'package:dudev_website/src/constants/app_sizes.dart';
import 'package:dudev_website/src/constants/nav_items.dart';
import 'package:dudev_website/src/styles/style.dart';
import 'package:dudev_website/src/widgets/site_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderWeb extends StatelessWidget {
  const HeaderWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,
      decoration: KHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
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
                      fontSize: AppSizes.s20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whitePrimary),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
