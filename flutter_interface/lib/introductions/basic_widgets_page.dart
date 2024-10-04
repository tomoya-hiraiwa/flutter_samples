import 'package:flutter/material.dart';
import 'package:flutter_interface/main.dart';

class BasicWidgetsPage extends StatelessWidget {
  const BasicWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
       child: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(title: Text("Basic widgets",style: Theme.of(context).primaryTextTheme.titleLarge,)),
          const Expanded(
            child: Center(child: Text('Hello, world!')),
          ),
        ],
      ),
    );
  }
}




class MyAppBar extends StatelessWidget {
  final Widget title;

  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
      return Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(color: Colors.blue[500]),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back,color: Colors.white,),
              onPressed: (){
                Navigator.pop(context);
              },
              tooltip: "Back to home",
            ),
            Expanded(child: title),
            const IconButton(
              icon: Icon(Icons.search,color: Colors.white,),
              tooltip: "Search",
              onPressed: null,
            ),
          ],
        ),
      );
  }
}

