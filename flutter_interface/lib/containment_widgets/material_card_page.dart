import 'package:flutter/material.dart';

class MaterialCardPage extends StatelessWidget {
  const MaterialCardPage({super.key});

  void _tapCard(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Card taped!")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: InkWell(
                    onTap: (){
                      _tapCard(context);
                    },
                    child: const Center(
                      child: Text("Elevated Card"),
                    ),
                  ),
                ),
              ),
              Card.filled(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: InkWell(
                    onTap: (){
                      _tapCard(context);
                    },
                    child: const Center(
                      child: Text("Filled Card"),
                    ),
                  ),
                ),
              ),
              Card.outlined(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: InkWell(
                    onTap: (){
                      _tapCard(context);
                    },
                    child: const Center(
                      child: Text("Outlined Card"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
