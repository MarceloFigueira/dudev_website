import 'package:dudev_website/src/constants/colors.dart';
import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                AppColors.scaffoldBg.withOpacity(0.6),
                AppColors.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/foto.jpeg",
              width: screenWidth,
              height: screenHeight / 2,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // intro text
          const Text(
            "Olá,\nEu sou o Marcelo\nUm Desenvolvedor Mobile",
            style: TextStyle(
                fontSize: 24,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: AppColors.whitePrimary),
          ),
          const SizedBox(
            height: 15,
          ),
          //btn
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Clique aqui'),
            ),
          ),
        ],
      ),
    );
  }
}
