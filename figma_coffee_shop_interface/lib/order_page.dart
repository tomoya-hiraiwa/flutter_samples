import 'package:figma_coffee_shop_interface/order_bag_page.dart';
import 'package:figma_coffee_shop_interface/order_favorite_page.dart';
import 'package:figma_coffee_shop_interface/order_home_page.dart';
import 'package:figma_coffee_shop_interface/order_notification_page.dart';
import 'package:figma_coffee_shop_interface/util.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectPage = 0;

  final List<IconData> _unselectedIcon = [
    Icons.home_outlined,
    Icons.favorite_border,
    Icons.shopping_bag_outlined,
    Icons.notifications_outlined,
  ];

  final List<IconData> _selectedIcon = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_bag_rounded,
    Icons.notifications
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          _selectPage = _tabController.index;
        });
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SafeArea(
      child: TabBar(
        dividerColor: Colors.transparent,
        indicatorColor: mainColor,
        labelColor: mainColor,
        unselectedLabelColor: Colors.grey,
        controller: _tabController,
        tabs: List.generate(4, (index) {
          return Tab(
            icon: Icon(_selectPage == index
                ? _selectedIcon[index]
                : _unselectedIcon[index]),
          );
        }),
      ),
    ),
      body: TabBarView(
        controller: _tabController,
        children: [
          OrderHomePage(),
          OrderFavoritePage(),
          OrderBagPage(),
          OrderNotificationPage()
        ],
      ),
    );
  }
}
