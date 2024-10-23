import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedItem = 1;
  final _popupMenuItem = const [
    PopupMenuItem(value: 1,child: Text("Item1")),
    PopupMenuItem(value: 2,child: Text("Item2")),
    PopupMenuItem(value: 3,child: Text("Item3")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Item${_selectedItem} is Selected.",style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            PopupMenuButton(
              initialValue: _selectedItem,
              onSelected: (int value){
                setState(() {
                  _selectedItem = value;
                });
              },
              itemBuilder: (BuildContext context) => _popupMenuItem,
            )
          ],
        ),
      ),
    );
  }
}
