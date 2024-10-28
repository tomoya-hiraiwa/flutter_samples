import 'package:figma_coffee_shop_interface/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderHomePage extends StatefulWidget {
  const OrderHomePage({super.key});

  @override
  State<OrderHomePage> createState() => _OrderHomePageState();
}

class _OrderHomePageState extends State<OrderHomePage> {
  int _selectLocationIndex = 0;
  final List<DropdownMenuItem<int>> _dropdownList = const [
    DropdownMenuItem(value: 0, child: Text("Blizen, Tanjungbalai")),
    DropdownMenuItem(value: 1, child: Text("Tokyo, Japan")),
    DropdownMenuItem(value: 2, child: Text("Guangzhou, China")),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 80, bottom: 10, left: 15, right: 15),
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Location",
                        style: TextStyle(color: Colors.grey)),
                    DropdownButton<int>(
                      items: _dropdownList,
                      onChanged: (int? value) {
                        setState(() {
                          _selectLocationIndex = value!;
                        });
                      },
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconEnabledColor: Colors.white,
                      dropdownColor: Colors.black87,
                      style: const TextStyle(color: Colors.white),
                      value: _dropdownList[_selectLocationIndex].value,
                      underline: Container(),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              color: Colors.grey[900],
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Search coffee",
                                  labelStyle: TextStyle(color: Colors.grey),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  )),
                              cursorColor: mainColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Container(width: 60,height: 60,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                        ),
                          child: Image.asset("assets/data/images/icon1.png"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
