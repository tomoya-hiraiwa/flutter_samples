import 'package:flutter/material.dart';

class LinearProgressIndicatorPage extends StatefulWidget {
  const LinearProgressIndicatorPage({super.key});

  @override
  State<LinearProgressIndicatorPage> createState() =>
      _LinearProgressIndicatorPageState();
}

class _LinearProgressIndicatorPageState
    extends State<LinearProgressIndicatorPage> with TickerProviderStateMixin {
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
        title: const Text("LinearProgressIndicator"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Determinate Indicator"),
              const SizedBox(height: 10),
              LinearProgressIndicator(
                value: singleAnimationController.value,
                semanticsLabel: "Determinate Indicator",
              ),
              Text(
                  "value: ${(singleAnimationController.value * 100).toInt()}%"),
              const SizedBox(height: 40),
              const Text("Indeterminate Indicator"),
              const SizedBox(height: 10),
              const LinearProgressIndicator(
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
