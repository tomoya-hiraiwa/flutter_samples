import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _simpleIsChecked = false;
  bool? _samplesIsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CheckBox")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Simple CheckBox", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Checkbox(
              value: _simpleIsChecked,
              onChanged: (bool? value) {
                setState(() {
                  _simpleIsChecked = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text("Samples", style: TextStyle(fontSize: 20)),
            Checkbox(
              tristate: true,
              value: _samplesIsChecked,
              onChanged: (bool? value) {
                setState(() {
                  _samplesIsChecked = value;
                });
              },
            ),
            const SizedBox(height: 10),
            Checkbox(
              tristate: true,
              isError: true,
              value: _samplesIsChecked,
              onChanged: (bool? value) {
                setState(() {
                  _samplesIsChecked = value;
                });
              },
            ),
            const SizedBox(height: 10),
            Checkbox(
                tristate: true,
                isError: true,
                value: _samplesIsChecked,
                onChanged: null),
          ],
        ),
      ),
    );
  }
}
