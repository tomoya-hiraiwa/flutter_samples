import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlertDialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text("Alert Dialog"),
                content: const Text("This is content Text"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("OK")),
                ],
              ),
            );
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
