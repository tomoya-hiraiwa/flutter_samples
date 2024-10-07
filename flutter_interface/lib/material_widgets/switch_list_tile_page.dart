import 'package:flutter/material.dart';

class SwitchListTilePage extends StatefulWidget {
  const SwitchListTilePage({super.key});

  @override
  State<SwitchListTilePage> createState() => _SwitchListTilePageState();
}

class _SwitchListTilePageState extends State<SwitchListTilePage> {
  bool _isChecked = false;
  bool _isLeading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch ListTile"),
      ),
      backgroundColor: _isChecked ? Colors.lightBlue.shade300 : Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SwitchListTile(
                title: const Text("Change Background Color"),
                value: _isChecked,
                onChanged: (value){
                  setState(() {
                    _isChecked = value;
                  });
                },
                controlAffinity: _isLeading
                    ? ListTileControlAffinity.leading
                    : ListTileControlAffinity.trailing,
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
      ),
    );
  }
}
