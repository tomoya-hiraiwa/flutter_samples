import 'package:flutter/material.dart';

class MaterialComponentsPage extends StatelessWidget {
  const MaterialComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black),
          onPressed: (){
            Navigator.pop(context);
          },
          tooltip: "Leading Icon",
        ),
        title: const Text("Material Components"),
        actions: const [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            tooltip: "Search",
            onPressed: null,
          ),
        ],
      ),
      body:  const Center(
        child: Text("Hello, world!"),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "FAB",
        child: const Icon(Icons.add),
        onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("FAB taped!")));
        },
      ),
    );
  }
}
