import 'package:dudev_website/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class DudevWebApp extends StatelessWidget {
  const DudevWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marcelo "Dudev" Figueira',
      theme: ThemeData.dark(),
      home: const HomePage(title: 'Marcelo "Dudev" Figueira'),
    );
  }
}
