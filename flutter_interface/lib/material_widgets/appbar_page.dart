import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            tooltip: "leading",
          ),
          title: const Text("Title text"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.list),
              tooltip: "actions 1",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              tooltip: "actions 2",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
              tooltip: "actions 3",
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Page 1",
              ),
              Tab(
                text: "Page 2",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Page 1"),
            ),
            Center(
              child: Text("Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
