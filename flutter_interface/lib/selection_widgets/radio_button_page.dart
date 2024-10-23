import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({super.key});

  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  final List<String> _gender = ["Male","Female","Other","None"];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("RadioButton"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(_gender[0]),
              leading: Radio(
                value: 0,
                groupValue: _selectedIndex,
                onChanged: (int? value) {
                  setState(() {
                    _selectedIndex = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(_gender[1]),
              leading: Radio(
                value: 1,
                groupValue: _selectedIndex,
                onChanged: (int? value) {
                  setState(() {
                    _selectedIndex = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(_gender[2]),
              leading: Radio(
                value: 2,
                groupValue: _selectedIndex,
                onChanged: (int? value) {
                  setState(() {
                    _selectedIndex = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(_gender[3]),
              leading: Radio(
                value: 3,
                groupValue: _selectedIndex,
                onChanged: (int? value) {
                  setState(() {
                    _selectedIndex = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
