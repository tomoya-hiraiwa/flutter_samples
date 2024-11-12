import 'package:flutter/material.dart';

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({super.key});

  @override
  State<StopWatchPage> createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  final stopwatch = Stopwatch();
  String time = "00:00.000";

  Future<void> _getTime() async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (stopwatch.isRunning) {
      setState(() {
        time =
            " ${stopwatch.elapsed.inMinutes.toString().padLeft(2, "0")}:${stopwatch.elapsed.inSeconds.toString().padLeft(2, "0")}.${(stopwatch.elapsed.inMilliseconds % 1000).toString().padLeft(3, "0")}";
      });
      _getTime();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StopWatch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(time, style: const TextStyle(fontSize: 40)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (stopwatch.isRunning) {
                        stopwatch.stop();
                      } else {
                        stopwatch.start();
                        _getTime();
                      }
                    },
                    child: Text(stopwatch.isRunning ? "Stop" : "Start")),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      stopwatch.reset();
                      setState(() {
                        time = "00:00.000";
                      });
                    },
                    child: const Text("Reset")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
