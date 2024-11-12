import 'package:flutter/material.dart';

class PinchDragPage extends StatelessWidget {
  const PinchDragPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pinch and Drag"),
      ),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(10),
          minScale: 0.5,
            maxScale: 2.0,
          child: Image.asset("assets/images/map.jpg"),
        ),
      ),
    );
  }
}
