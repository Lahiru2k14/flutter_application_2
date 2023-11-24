/// Flutter Course - Session 2
/// Date: 11th November 2023
/// Auther: Shelan Cooray
/// Email: shlncooray@gmail.com
/// app.dart - Contain the Material App root & Scaffold

import 'package:flutter/material.dart';
import 'package:flutter_application_2/image.dart';

class RollerDiceApp extends StatelessWidget {
  const RollerDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Grouping Student'),
            backgroundColor: Color.fromARGB(255, 32, 168, 186),
          ),
          body:const Img(),
          ),);
  }
}


