import 'package:flutter/material.dart';

class BottomAppBarPage extends StatefulWidget {
  const BottomAppBarPage({super.key});

  @override
  State<BottomAppBarPage> createState() => _BottomAppBarPageState();
}

class _BottomAppBarPageState extends State<BottomAppBarPage> {
  bool _isNotch = false;
  bool _isCenter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isNotch = !_isNotch;
                  });
                },
                child: const Text("Toggle Notch")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isCenter = !_isCenter;
                  });
                },
                child: const Text("Toggle Fab Location")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "FAB",
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: _isCenter
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: Builder(builder: (context) {
        return BottomAppBar(
          shape: _isNotch ? const CircularNotchedRectangle() : null,
          color: Colors.blue,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  tooltip: "Action 1",
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.list),
                  tooltip: "Action 2",
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  tooltip: "Action 3",
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
