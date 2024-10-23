import 'package:flutter/material.dart';

class CircularProgressIndicatorPage extends StatefulWidget {
  const CircularProgressIndicatorPage({super.key});

  @override
  State<CircularProgressIndicatorPage> createState() =>
      _CircularProgressIndicatorPageState();
}

class _CircularProgressIndicatorPageState
    extends State<CircularProgressIndicatorPage> with TickerProviderStateMixin {
  late AnimationController singleAnimationController;

  @override
  void initState() {
    super.initState();
    singleAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )
      ..addListener(() {
        setState(() {});
      })
      ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CircularProgressIndicator"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Determinate Indicator"),
              const SizedBox(height: 10),
              CircularProgressIndicator(
                value: singleAnimationController.value,
                semanticsLabel: "Determinate Indicator",
              ),
              Text(
                  "value: ${(singleAnimationController.value * 100).toInt()}%"),
              const SizedBox(height: 40),
              const Text("Indeterminate Indicator"),
              const SizedBox(height: 10),
              const CircularProgressIndicator(
                value: null,
                semanticsLabel: "Indeterminate Indicator",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
