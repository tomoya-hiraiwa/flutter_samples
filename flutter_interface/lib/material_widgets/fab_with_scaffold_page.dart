import 'package:flutter/material.dart';

class FabWithScaffoldPage extends StatefulWidget {
  const FabWithScaffoldPage({super.key});

  @override
  State<FabWithScaffoldPage> createState() => _FabWithScaffoldPageState();
}

class _FabWithScaffoldPageState extends State<FabWithScaffoldPage> {
  static const List<(Color?, Color? background, ShapeBorder?)> customizations = [
    (null, null, null), // The FAB uses its default for null parameters.
    (null, Colors.red, null),
    (Colors.white, Colors.red, null),
    (Colors.white, Colors.red, CircleBorder()),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("FAB with Scaffold"),
        ),
        body: const Center(
          child: Text("Hello World"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              index = (index + 1) % customizations.length;
            });
          },
          foregroundColor: customizations[index].$1,
          backgroundColor: customizations[index].$2,
          shape: customizations[index].$3,
          child: const Icon(Icons.navigation),
        ));
  }
}
