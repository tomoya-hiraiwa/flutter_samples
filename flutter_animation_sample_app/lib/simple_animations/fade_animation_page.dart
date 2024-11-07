import 'package:flutter/material.dart';

class FadeAnimationPage extends StatefulWidget {
  const FadeAnimationPage({super.key});

  @override
  State<FadeAnimationPage> createState() => _FadeAnimationPageState();
}

class _FadeAnimationPageState extends State<FadeAnimationPage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fade Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _visible = !_visible;
                  });
                },
                child: const Text("Change Visibility")),
          ],
        ),
      ),
    );
  }
}
