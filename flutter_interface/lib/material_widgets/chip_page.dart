import 'package:flutter/material.dart';

class ChipPage extends StatefulWidget {
  const ChipPage({super.key});

  @override
  State<ChipPage> createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {
  bool _isInputChipSelected = false;
  bool _isFilterChipSelected = false;
  bool _isActionChipSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Input Chip", style: TextStyle(fontSize: 20)),
            InputChip(
              label: const Text("Input Chip"),
              selected: _isInputChipSelected,
              onSelected: (bool value) {
                setState(() {
                  _isInputChipSelected = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text("Filter Chip", style: TextStyle(fontSize: 20)),
            InputChip(
              label: const Text("Filter Chip"),
              selected: _isFilterChipSelected,
              onSelected: (bool value) {
                setState(() {
                  _isFilterChipSelected = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text("Action Chip", style: TextStyle(fontSize: 20)),
            ActionChip(
              label: const Text("Action Chip"),
              avatar: Icon(_isActionChipSelected
                  ? Icons.favorite
                  : Icons.favorite_border),
              onPressed: () {
                setState(() {
                  _isActionChipSelected = !_isActionChipSelected;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
