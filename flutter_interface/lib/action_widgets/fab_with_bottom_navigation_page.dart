import 'package:flutter/material.dart';

class FabWithBottomNavigationPage extends StatefulWidget {
  const FabWithBottomNavigationPage({super.key});

  @override
  State<FabWithBottomNavigationPage> createState() =>
      _FabWithBottomNavigationPageState();
}

class _FabWithBottomNavigationPageState
    extends State<FabWithBottomNavigationPage> {
  bool isCenter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAB with BottomNavigation"),
      ),
      body: const Center(
        child: Text("Hello world!"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'send'),
          BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'delete'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isCenter = !isCenter;
          });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: !isCenter
          ? FloatingActionButtonLocation.endDocked
          : FloatingActionButtonLocation.centerDocked,
    );
  }
}
