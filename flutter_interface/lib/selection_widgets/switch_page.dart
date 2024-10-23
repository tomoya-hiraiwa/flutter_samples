import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _isSimpleSwitchChecked = false;
  bool _isIconSwitchChecked = false;
  MaterialStateProperty<Icon> icons =
      MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.selected)) {
      return Icon(Icons.check);
    } else {
      return Icon(Icons.close);
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Simple Switch",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Switch(
              value: _isSimpleSwitchChecked,
              onChanged: (bool value) {
                setState(() {
                  _isSimpleSwitchChecked = value;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Change Icon Switch",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Switch(
              value: _isIconSwitchChecked,
              thumbIcon: icons,
              onChanged: (bool value) {
                setState(() {
                  _isIconSwitchChecked = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
