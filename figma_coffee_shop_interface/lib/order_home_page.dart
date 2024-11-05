import 'package:figma_coffee_shop_interface/model.dart';
import 'package:figma_coffee_shop_interface/util.dart';
import 'package:flutter/material.dart';

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

  final List<String> _categoryList = [
    "All Coffee",
    "Machiato",
    "Latte",
    "American",
    "Other"
  ];

  String _selectCategory = "All Coffee";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Expanded(
                child: Stack(
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
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      color: Colors.grey[900],
                                    ),
                                    child: TextField(
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: "Search coffee",
                                          labelStyle:
                                              TextStyle(color: Colors.grey),
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: Colors.white,
                                          )),
                                      cursorColor: mainColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                  ),
                                  child: Image.asset(
                                      "assets/data/images/icon1.png"),
                                ),
                              ],
                            ),
                            const SizedBox(height: 100),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.3,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Stack(
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                    "assets/data/images/promo_banner.png",
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 30,
                              child: Container(
                                width: 70,
                                height: 30,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.redAccent,
                                ),
                                child: const Center(
                                  child: Text("Promo",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 50,
                              left: 30,
                              child: Image.asset(
                                  "assets/data/images/promo_text.png"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: _categoryList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return OrderCategoryItem(
                      name: _categoryList[index],
                      isSelected: _categoryList[index] == _selectCategory,
                      onTap: (String name) {
                        setState(() {
                          _selectCategory = name;
                        });
                      });
                },
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                  itemCount: menuItemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return OrderMenuItem(data: menuItemList[index]);
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                      childAspectRatio: 0.6),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderCategoryItem extends StatelessWidget {
  final String name;
  final bool isSelected;
  final Function(String) onTap;

  const OrderCategoryItem(
      {super.key,
      required this.name,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () => onTap(name),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: isSelected ? mainColor : Colors.grey[100],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Center(
                child: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.white : Colors.black,
              ),
            )),
          ),
        ),
      ),
    );
  }
}

class OrderMenuItem extends StatelessWidget {
  final MenuItem data;

  const OrderMenuItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    data.image,
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    height: 150,
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(50)),
                  child: Container(
                    color: Colors.black26,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "${data.rating}",
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              data.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              data.category,
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "\$ ${data.price}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: mainColor),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
