import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                        content: const Text("Fixed SnackBar"),
                         action: SnackBarAction(
                           label: "Action",
                           onPressed: (){},
                         ),
                      )
                  );
                },
                child: const Text("Show Fixed SnackBar")
            ),
            const SizedBox(width: 20),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text("Floating SnackBar"),
                        action: SnackBarAction(
                          label: "Action",
                          onPressed: (){},
                        ),
                        behavior: SnackBarBehavior.floating,
                      )
                  );
                },
                child: const Text("Show Floating SnackBar")
            ),
          ],
        ),
      ),
    );
  }
}
