import 'package:flutter/material.dart';

class BadgePage extends StatefulWidget {
  const BadgePage({super.key});

  @override
  State<BadgePage> createState() => _BadgePageState();
}

class _BadgePageState extends State<BadgePage> {
  int badgeCount = 1;
  bool isShowLabel = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Badge"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Column(
              children: [
                Text("Text label"),
                SizedBox(height: 10),
                Badge(
                  label: Text("Sample Label"),
                  backgroundColor: Colors.blueAccent,
                  child: Icon(Icons.receipt),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Column(
              children: [
                const Text("Number label"),
                const SizedBox(height: 10),
                Badge.count(
                  count: badgeCount,
                  isLabelVisible: isShowLabel,
                  child: const Icon(Icons.notifications),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      badgeCount += 1;
                    });
                  },
                  child: const Text("Add Badge Count"),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isShowLabel = !isShowLabel;
                    });
                  },
                  child: const Text("Toggle badge Visibility"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
