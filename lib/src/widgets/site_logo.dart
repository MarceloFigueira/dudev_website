import 'package:dudev_website/src/constants/colors.dart';
import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Text(
        'Dudev',
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: AppColors.yellowSecondary),
      ),
    );
  }
}
