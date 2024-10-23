import 'package:flutter/material.dart';

class CheckBoxListTilePage extends StatefulWidget {
  const CheckBoxListTilePage({super.key});

  @override
  State<CheckBoxListTilePage> createState() => _CheckBoxListTilePageState();
}

class _CheckBoxListTilePageState extends State<CheckBoxListTilePage> {
  bool _isChecked = false;
  bool _isLeading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox ListTile"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CheckboxListTile(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
                title: const Text("This is title text"),
                subtitle: const Text("This is subtitle text"),
                controlAffinity: _isLeading
                    ? ListTileControlAffinity.leading
                    : ListTileControlAffinity.trailing,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                setState(() {
                  _isLeading = !_isLeading;
                });
              },
              child: const Text("Toggle CheckBox Place"),
            ),
          ],
        ),
      ),
    );
  }
}
