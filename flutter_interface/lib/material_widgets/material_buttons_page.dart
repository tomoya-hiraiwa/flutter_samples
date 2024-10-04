import 'package:flutter/material.dart';

class MaterialButtonsPage extends StatelessWidget {
  const MaterialButtonsPage({super.key});

  void _tapButton(BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Button taped!")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material Buttons"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Text("ElevatedButton"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _tapButton(context),
                    child: const Text("Elevated"),
                  ),
                  const SizedBox(width: 16),
                  const ElevatedButton(
                    onPressed: null,
                    child: Text("Elevated"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Text("FilledButton"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () => _tapButton(context),
                    child: const Text("Filled"),
                  ),
                  const SizedBox(width: 16),
                  const FilledButton(
                    onPressed: null,
                    child: Text("Filled"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Text("FilledButton.tonal"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton.tonal(
                    onPressed: () => _tapButton(context),
                    child: const Text("Filled Tonal"),
                  ),
                  const SizedBox(width: 16),
                  const FilledButton.tonal(
                    onPressed: null,
                    child: Text("Filled Tonal"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Text("OutlinedButton"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () => _tapButton(context),
                    child: const Text("Outlined"),
                  ),
                  const SizedBox(width: 16),
                  const OutlinedButton(
                    onPressed: null,
                    child: Text("Outlined"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Text("TextButton"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => _tapButton(context),
                    child: const Text("Text"),
                  ),
                  const SizedBox(width: 16),
                  const TextButton(
                    onPressed: null,
                    child: Text("Text"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
