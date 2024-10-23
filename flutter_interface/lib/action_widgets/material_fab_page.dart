import 'package:flutter/material.dart';

class MaterialFabPage extends StatelessWidget {
  const MaterialFabPage({super.key});

  void _onTap(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("FAB taped!")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material FABs"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Small"),
              const SizedBox(width: 10),
              FloatingActionButton.small(
                  onPressed: ()=> _onTap(context),
                  child: const Icon(Icons.add),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Regular"),
              const SizedBox(width: 10),
              FloatingActionButton(
                onPressed: ()=> _onTap(context),
                child: const Icon(Icons.add),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Large"),
              const SizedBox(width: 10),
              FloatingActionButton.large(
                onPressed: ()=> _onTap(context),
                child: const Icon(Icons.add),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Extended"),
              const SizedBox(width: 10),
              FloatingActionButton.extended(
                onPressed: ()=> _onTap(context),
                icon: const Icon(Icons.add),
                label: const Text("Add"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
