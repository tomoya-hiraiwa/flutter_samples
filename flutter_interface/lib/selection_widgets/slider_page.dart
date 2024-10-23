import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _simpleSliderValue = 10;
  double _divisionsSliderValue = 10;
  RangeValues _rangeValues = RangeValues(10, 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Simple Slider",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              _simpleSliderValue.toString(),
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Slider(
              value: _simpleSliderValue,
              min: 0,
              max: 100,
              onChanged: (double value) {
                setState(() {
                  _simpleSliderValue = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Divisions Slider",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Slider(
              value: _divisionsSliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              label: _divisionsSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _divisionsSliderValue = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Range Slider",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            RangeSlider(
              values: _rangeValues,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels(_rangeValues.start.round().toString(),
                  _rangeValues.end.round().toString()),
              onChanged: (RangeValues values) {
                setState(() {
                  _rangeValues = values;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
