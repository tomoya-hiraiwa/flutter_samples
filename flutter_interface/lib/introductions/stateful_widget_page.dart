import 'package:flutter/material.dart';

class StatefulWidgetPage extends StatefulWidget {
  const StatefulWidgetPage({super.key});

  @override
  State<StatefulWidgetPage> createState() => _StatefulWidgetPageState();
}

class _StatefulWidgetPageState extends State<StatefulWidgetPage> {

  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _increment,
              child: const Text("Increment"),
            ),
            const SizedBox(width: 16),
            Text("count: $_counter")
          ],
        ),
      ),
    );
  }
}
