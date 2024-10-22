import 'package:flutter/material.dart';


class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({super.key});

  @override
  State<NavigationRailPage> createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
  int currentIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
      children: [
          NavigationRail(
            selectedIndex: currentIndex,
            onDestinationSelected: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            labelType: labelType,
            leading: IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(Icons.arrow_back)),
            destinations: const[
              NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: Text("Page1")
              ),
              NavigationRailDestination(
                  icon: Icon(Icons.notifications_outlined),
                  selectedIcon: Icon(Icons.notifications),
                  label: Text("Page2")
              ),
              NavigationRailDestination(
                  icon: Icon(Icons.message_outlined),
                  selectedIcon: Icon(Icons.message),
                  label: Text("Page3")
              ),
            ],
          ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      labelType = NavigationRailLabelType.none;
                    });
                  },
                    child: const Text("LabelType none"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      labelType = NavigationRailLabelType.selected;
                    });
                  },
                    child: const Text("LabelType selected"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      labelType = NavigationRailLabelType.all;
                    });
                  },
                    child: const Text("LabelType all"),
                  ),
                ],
              ),
            ),
        ),
        ],
      ),

    );
  }
}
