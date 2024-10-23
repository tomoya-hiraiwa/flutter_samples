import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  String _dateText = "yyyy/MM/dd";
  String _dateRangeText = "yyyy/MM/dd ~ yyyy/MM/dd";

  Future<void> _getDate(BuildContext context) async {
    final format = DateFormat("yyyy/MM/dd");
    final date = await showDatePicker(
        context: context,
        firstDate: DateTime(2024),
        lastDate: DateTime(2025),
        initialDate: DateTime.now());
    if (date != null) {
      setState(() {
        _dateText = format.format(date);
      });
    }
  }

  Future<void> _getDateRange(BuildContext context) async {
    final format = DateFormat("yyyy/MM/dd");
    final dateRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2024),
        lastDate: DateTime(2025),
        initialDateRange: DateTimeRange(
            start: DateTime(2024, 10, 23), end: DateTime(2024, 10, 25)));
    if (dateRange != null) {
      setState(() {
        _dateRangeText =
            "${format.format(dateRange.start)} ~ ${format.format(dateRange.end)}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_dateText),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  _getDate(context);
                },
                child: const Text("Show DatePicker")),
            const SizedBox(height: 20),
            Text(_dateRangeText),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _getDateRange(context);
              },
              child: const Text("Show DateRangePicker"),
            ),
          ],
        ),
      ),
    );
  }
}
