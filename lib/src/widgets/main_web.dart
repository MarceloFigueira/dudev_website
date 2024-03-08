import 'package:dudev_website/src/constants/app_colors.dart';
import 'package:dudev_website/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class MainWeb extends StatelessWidget {
  const MainWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: screenHeight / 1.1,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // intro message
              const Text(
                "Marcelo Figueira",
                style: TextStyle(
                    fontSize: AppSizes.s48,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whitePrimary),
              ),
              const SizedBox(
                height: 48,
              ),
              //contact btn
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Saiba mais sobre mim'),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 40,
          ),
          // avatar img
          Image.asset(
            "assets/foto.jpeg",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
