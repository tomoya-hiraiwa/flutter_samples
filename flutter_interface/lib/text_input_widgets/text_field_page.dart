import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField"),),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Simple TextField",style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter your name"
                ),
              ),
              SizedBox(height: 20,),
              Text("Outlined TextField",style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter your name"
                ),
              ),
              SizedBox(height: 20,),
              Text("Password TextField",style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your name"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
