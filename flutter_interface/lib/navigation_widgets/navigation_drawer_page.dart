
import 'package:flutter/material.dart';

import 'navigation_bar_page.dart';

class NavigationDrawerPage extends StatefulWidget {
  const NavigationDrawerPage({super.key});

  @override
  State<NavigationDrawerPage> createState() => _NavigationDrawerPAgeState();
}

class _NavigationDrawerPAgeState extends State<NavigationDrawerPage> {
  int currentIndex = 0;

  //SamplePage is from navigation_bar_page.dart
  final List<SamplePage> pageList = const [
    SamplePage(title: "Page1"),
    SamplePage(title: "Page2"),
    SamplePage(title: "Page3")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationDrawer"),
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.home)),
        ],
      ),
      drawer: NavigationDrawer(
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
          Navigator.pop(context);
        },
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text("Header"),
          ),
          SizedBox(height: 10,),
          NavigationDrawerDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: Text("Page1"),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.notifications_outlined),
            selectedIcon: Icon(Icons.notifications),
            label: Text("Page2"),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.message_outlined),
            selectedIcon: Icon(Icons.message),
            label: Text("Page3"),
          ),
        ],
      ),
      body: pageList[currentIndex],
    );
  }
}
