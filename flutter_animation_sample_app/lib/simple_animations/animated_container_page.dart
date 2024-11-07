import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              setState(() {
                final random = Random();
                _width = random.nextInt(300).toDouble();
                _height = random.nextInt(300).toDouble();
                _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
                _borderRadius = BorderRadius.circular(random.nextDouble() * 100);
              });

            }, child: const Text("Change Shape"))
          ],
        ),
      ),
    );
  }
}

