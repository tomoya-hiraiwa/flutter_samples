import 'package:flutter/material.dart';

class HeroAnimationPage1 extends StatelessWidget {
  const HeroAnimationPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(child: const Hero(tag: "android", child: Icon(Icons.android, size: 50), ),onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroAnimationPage2(icon: Icons.android,tag: "android")));}),
              InkWell(child: const Hero(tag: "apple", child: Icon(Icons.apple, size: 50), ),onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroAnimationPage2(icon: Icons.apple, tag: "apple")));}),
              InkWell(child: const Hero(tag: "person", child: Icon(Icons.person, size: 50), ),onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroAnimationPage2(icon: Icons.person, tag: "person",)));}),
            ],
          ),
        ),
      ),);
  }
}


class HeroAnimationPage2 extends StatelessWidget {
  final IconData icon;
  final String tag;
  const HeroAnimationPage2({super.key, required this.icon, required this.tag});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: Colors.lightBlue[100],
   body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Hero(tag: tag,child: Icon(icon,size: 200,)),
         const SizedBox(height: 30),
         Text(tag, style: const TextStyle(fontSize: 20)),
       ],
     ),
   ),
 );
  }
}




