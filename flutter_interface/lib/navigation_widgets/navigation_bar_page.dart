import 'package:flutter/material.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int currentPageIndex = 0;
  final List<SamplePage> pageList = const [
    SamplePage(title: "Page1"),
    SamplePage(title: "Page2"),
    SamplePage(title: "Page3")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationBar"),
      ),
      body: pageList[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          const NavigationDestination(icon: Icon(Icons.home), label: "Page1"),
          NavigationDestination(
              icon: currentPageIndex != 1
                  ? const Badge(child: Icon(Icons.notifications))
                  : const Icon(Icons.notifications),
              label: "Page2"),
          NavigationDestination(
              icon: currentPageIndex != 2
                  ? const Badge(label: Text("3"), child: Icon(Icons.message))
                  : const Icon(Icons.message),
              label: "Page3"),
        ],
      ),
    );
  }
}

class SamplePage extends StatelessWidget {
  final String title;

  const SamplePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: const TextStyle(fontSize: 20)),
    );
  }
}
