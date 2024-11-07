import 'package:flutter/material.dart';

class CurvedAnimationPage extends StatefulWidget {
  const CurvedAnimationPage({super.key});

  @override
  State<CurvedAnimationPage> createState() => _CurvedAnimationPageState();
}

class _CurvedAnimationPageState extends State<CurvedAnimationPage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late CurvedAnimation _curved;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 5),vsync: this);
    _curved = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _curved.addListener(() {
      setState(() {
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curved Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(_curved.value.toStringAsFixed(2),
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
                  "CurvedAnimation can setting animation curve(interpolator).\n\nIn this code sets easeInOut as curve."),
            )
          ],
        ),
      ),
    );
  }
}
