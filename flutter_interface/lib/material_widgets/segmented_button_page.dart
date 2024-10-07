import 'package:flutter/material.dart';

class SegmentedButtonPage extends StatefulWidget {
  const SegmentedButtonPage({super.key});

  @override
  State<SegmentedButtonPage> createState() => _SegmentedButtonPageState();
}

class _SegmentedButtonPageState extends State<SegmentedButtonPage> {
    static const List<String> _calendar = ["Day","Week","Month","Year"];
    static const List<String> _size = ["XS","S","M","L","XL"];
    int _calendarIndex= 0;
    Set<int> _sizeIndexList= {0,2};

    void _setCalenderIndex(int index) {
      setState(() {
        _calendarIndex =  index;
      });
    }

    void _setSizeIndex(Set<int> index) {
      setState(() {
        _sizeIndexList =  index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segmented Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Single Choice"),
            const SizedBox(height: 10),
            SegmentedButton<int>(
              segments:  [
                ButtonSegment(value: 0, label: Text(_calendar[0]),icon: const Icon(Icons.calendar_view_day)),
                ButtonSegment(value: 1, label: Text(_calendar[1]),icon: const Icon(Icons.calendar_view_week)),
                ButtonSegment(value: 2, label: Text(_calendar[2]),icon: const Icon(Icons.calendar_view_month)),
                ButtonSegment(value: 3, label: Text(_calendar[3]),icon: const Icon(Icons.calendar_today)),
              ], selected: <int> {_calendarIndex},
              onSelectionChanged: (Set<int> index) {
                _setCalenderIndex(index.first);
              },
            ),
            const SizedBox(height: 40),

            const Text("Multiple Choice"),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            SegmentedButton<int>(
              segments:  [
                ButtonSegment(value: 0, label: Text(_size[0])),
                ButtonSegment(value: 1, label: Text(_size[1])),
                ButtonSegment(value: 2, label: Text(_size[2])),
                ButtonSegment(value: 3, label: Text(_size[3])),
                ButtonSegment(value: 4, label: Text(_size[4])),
              ], selected: _sizeIndexList,
              onSelectionChanged: (Set<int> index) {
                _setSizeIndex(index);
              },
              multiSelectionEnabled: true,
              emptySelectionAllowed: true,
            ),
          ],
        ),
      ),
    );
  }
}
