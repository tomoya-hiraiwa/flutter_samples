import 'package:flutter/material.dart';

class IconButtonPage extends StatelessWidget {
  const IconButtonPage({super.key});

  void _onTap(BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Button taped!")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon Button"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Text('Normal'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        _onTap(context);
                      },
                      icon: const Icon(Icons.filter_drama)),
                  const SizedBox(width: 10),
                  const IconButton(onPressed: null, icon: Icon(Icons.filter_drama)),
                ],
              ),
            ],
          ),

          Column(
            children: [
              const Text('Filled'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton.filled(
                      onPressed: () {
                        _onTap(context);
                      },
                      icon: const Icon(Icons.filter_drama)),
                  const SizedBox(width: 10),
                  const IconButton.filled(
                      onPressed: null, icon: Icon(Icons.filter_drama)),
                ],
              ),
            ],
          ),

          Column(
            children: [
              const Text('Filled Tonal'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton.filledTonal(
                      onPressed: () {
                        _onTap(context);
                      },
                      icon: const Icon(Icons.filter_drama)),
                  const SizedBox(width: 10),
                  const IconButton.filledTonal(
                      onPressed: null, icon: Icon(Icons.filter_drama)),
                ],
              ),
            ],
          ),

          Column(
            children: [
              const Text('Outlined'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton.outlined(
                      onPressed: () {
                        _onTap(context);
                      },
                      icon: const Icon(Icons.filter_drama)),
                  const SizedBox(width: 10),
                  const IconButton.outlined(
                      onPressed: null, icon: Icon(Icons.filter_drama)),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
