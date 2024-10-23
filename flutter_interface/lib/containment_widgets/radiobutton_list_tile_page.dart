import 'package:flutter/material.dart';

class RadioButtonListTilePage extends StatefulWidget {
  const RadioButtonListTilePage({super.key});

  @override
  State<RadioButtonListTilePage> createState() => _RadioButtonListTilePageState();
}

class _RadioButtonListTilePageState extends State<RadioButtonListTilePage> {
  final List<String> _gender = ["Male","Female"];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("RadioButton ListTile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              value: _gender[0],
              groupValue: _gender[_selectedIndex],
              title: Text(_gender[0]),
              onChanged: (value){
                setState(() {
                  _selectedIndex = _gender.indexOf(value as String);
                });
              },
            ),
            const SizedBox(height: 10),
            RadioListTile(
              value: _gender[1],
              groupValue:  _gender[_selectedIndex],
              title: Text(_gender[1]),
              onChanged: (value){
                setState(() {
                  _selectedIndex = _gender.indexOf(value as String);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
