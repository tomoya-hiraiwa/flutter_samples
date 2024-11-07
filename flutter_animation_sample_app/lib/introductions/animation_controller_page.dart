import "package:flutter/material.dart";

class AnimationControllerPage extends StatefulWidget {
  const AnimationControllerPage({super.key});

  @override
  State<AnimationControllerPage> createState() =>
      _AnimationControllerPageState();
}

class _AnimationControllerPageState extends State<AnimationControllerPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimationController"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_controller.value.toStringAsFixed(2),
                style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  _controller.reset();
                  _controller.forward();
                },
                child: const Text("Start Animation")),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                  "AnimationController is used to control animation.\n\nThe value increases or decreases in the range of 0.0 to 1.0 during a given duration."),
            )
          ],
        ),
      ),
    );
  }
}
