import 'package:flutter/material.dart';

class Product {
  final String name;

  const Product({required this.name});
}

typedef CartChangeCallback = Function(Product product, bool inCart);

class ExtraStatefulWidgetPage extends StatefulWidget {
  const ExtraStatefulWidgetPage({super.key});

  final List<Product> products = const [
    Product(name: 'Eggs'),
    Product(name: 'Flour'),
    Product(name: 'Chocolate chips'),
  ];

  @override
  State<ExtraStatefulWidgetPage> createState() =>
      _ExtraStatefulWidgetPageState();
}

class _ExtraStatefulWidgetPageState extends State<ExtraStatefulWidgetPage> {
  final _shoppingCart = <Product>{};

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (!inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Extra Stateful Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: widget.products.map((product) {
          return ShoppingListItem(
              product: product,
              inCart: _shoppingCart.contains(product),
              onCartChanged: _handleCartChanged);
        }).toList(),
      ),
    );
  }
}

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem(
      {required this.product,
      required this.inCart,
      required this.onCartChanged})
      : super(key: ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangeCallback onCartChanged;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    if (!inCart) return null;
    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: _getTextStyle(context),
      ),
    );
  }
}
