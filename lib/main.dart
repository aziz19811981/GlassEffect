import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(GlassEffect());
}

class GlassEffect extends StatelessWidget {
  bool isPressed = false;

  GlassEffect({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text(
            'Glass Effect',
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
          backgroundColor: Colors.white.withOpacity(0.3),
        ),
        drawer:const Drawer(
            ),
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.mexatk.com/wp-content/uploads/2016/01/%D8%B3%D8%AD%D8%A7%D8%A8-%D8%A8%D8%A7%D9%84%D8%B5%D9%88%D8%B1-HD-3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white60, Colors.white10]),
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 2, color: Colors.white30),
                ),
                child: const Center(
                    child: Text(
                  'noting impossible',
                  style: TextStyle(fontSize: 30, color: Colors.white54),
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
