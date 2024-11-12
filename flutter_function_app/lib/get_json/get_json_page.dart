import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'model.dart';

class GetJsonFromFilePage extends StatefulWidget {
  const GetJsonFromFilePage({super.key});

  @override
  State<GetJsonFromFilePage> createState() => _GetJsonFromFilePageState();
}

class _GetJsonFromFilePageState extends State<GetJsonFromFilePage> {
  List<Events> eventList = [];

  @override
  void initState() {
    super.initState();
    _getEvents();
  }

  Future<void> _getEvents() async {
    final textData =
        jsonDecode(await rootBundle.loadString("assets/data/events_data.json"));
    final data =
        textData.map<Events>((event) => Events.fromJson(event)).toList();
    setState(() {
      eventList = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get data from json file"),
      ),
      body: eventList.isNotEmpty
          ? Expanded(
              child: ListView.builder(
                  itemCount: eventList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: ListTile(
                        tileColor: Colors.grey[200],
                        title: Text(eventList[index].eventTitle),
                        subtitle: Text(eventList[index].eventText),
                      ),
                    );
                  }),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
