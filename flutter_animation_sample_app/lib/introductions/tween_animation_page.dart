import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  const TweenAnimationPage({super.key});

  @override
  State<TweenAnimationPage> createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    IntTween tween = IntTween(begin: 100, end: 1000);
    _animation = tween.animate(_controller);
    _animation.addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(_animation.value.toString(),
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
                  "Tween can setting begin value and end value.\n\nIn this code sets the value as follows:\n\nbegin: 100\nend: 1000\nduration: 5sec"),
            )
          ],
        ),
      ),
    );
  }
}
