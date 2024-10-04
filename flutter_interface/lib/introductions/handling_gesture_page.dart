import 'package:flutter/material.dart';

class HandlingGesturePage extends StatelessWidget {
  const HandlingGesturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Handling Gesture"),
      ),
      body: const Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Button taped!")));
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.lightGreen[500]
        ),
        child: const Center(
          child: Text("Engage"),
        ),
      ),
    );
  }
}

