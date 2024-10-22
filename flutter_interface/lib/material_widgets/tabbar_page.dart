import 'package:flutter/material.dart';
import 'package:flutter_interface/material_widgets/navigation_bar_page.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(title: const Text("TabBar"),
            bottom: const TabBar(
            tabs: [
              Tab(icon: Icon((Icons.home))),
              Tab(icon: Icon((Icons.notifications))),
              Tab(icon: Icon((Icons.message))),
            ],
        ),
        ),
        body: const TabBarView(
          children: [
            //SamplePage is from navigation_bar_page.dart
            SamplePage(title: "Page1"),
            SamplePage(title: "Page2"),
            SamplePage(title: "Page3"),
          ],
        ),
      ),
    );
  }
}
