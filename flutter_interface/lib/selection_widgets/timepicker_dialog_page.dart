import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerDialogPage extends StatefulWidget {
  const TimePickerDialogPage({super.key});

  @override
  State<TimePickerDialogPage> createState() => _TimePickerDialogPageState();
}

class _TimePickerDialogPageState extends State<TimePickerDialogPage> {
  bool _isInputMode = false;
  String _timeText = "select Time";

  Future<void> _getTime(BuildContext context) async {
    final time = await showTimePicker(
      context: context,
      initialEntryMode: _isInputMode
          ? TimePickerEntryMode.input
          : TimePickerEntryMode.dial,
      initialTime: const TimeOfDay(hour: 0, minute: 0),
    );
    if (time != null) {
      setState(() {
        _timeText = time.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TimePickerDialog"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Dial or Input"),
            const SizedBox(height: 10),
            Switch(
              value: _isInputMode,
              onChanged: (bool value) {
                setState(() {
                  _isInputMode = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                _getTime(context);
              },
              child: const Text("Show TimePicker"),
            ),
            const SizedBox(height: 10),
            Text(_timeText, style: const TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
