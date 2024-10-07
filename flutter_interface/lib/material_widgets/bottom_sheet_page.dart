import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  const BottomSheetPage({super.key});

  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
               return const BottomSheetItem();
              },
              showDragHandle: true,
            );
          },
          child: const Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}

class BottomSheetItem extends StatelessWidget {
  const BottomSheetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Show Bottom Sheet"),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Hide Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
