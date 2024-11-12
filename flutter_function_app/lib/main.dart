import 'package:flutter/material.dart';

import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Functions List"),
      ),
      body:  ListView.builder(
        itemCount: functionsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(functionsList[index].name),
            subtitle: Text(functionsList[index].description),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => functionsList[index].page));
            },
          );
        },
      ),
    );
  }
}


