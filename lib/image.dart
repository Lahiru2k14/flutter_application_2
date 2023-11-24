import 'package:flutter/material.dart';
import 'package:flutter_application_2/new_group.dart';

class Img extends StatelessWidget {
  const Img({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            //image: AssetImage("assets/images/img1.png"),
            image: AssetImage("assets/images/img2.jpg"),
          fit: BoxFit.cover),
        
          
        ),
        child: const Center(child: NewGroup(),),
        
      ),
    );
  }
}