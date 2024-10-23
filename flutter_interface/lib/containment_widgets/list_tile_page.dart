import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({super.key});

  @override
  State<ListTilePage> createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  bool _isIconClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTile"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Clickable and LongClickable ListTile"),
              const SizedBox(height: 10),
              ListTile(
                tileColor: Colors.grey.shade300,
                title: const Text("This is Title Text"),
                subtitle: const Text("This is subtitle Text"),
                leading: const Icon(Icons.help_rounded),
                trailing: const Icon(Icons.more_vert_rounded),
                minVerticalPadding: 4.0,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("List Item taped!")));
                },
                onLongPress: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("List Item LongPressed!")));
                },
              ),
              const SizedBox(height: 40),
              const Text("Leading and Trailing Icon Clickable ListTile"),
              const SizedBox(height: 10),
              ListTile(
                tileColor: Colors.grey.shade300,
                title: const Text("This is Title Text"),
                subtitle: const Text("This is subtitle Text"),
                leading: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Leading Icon taped!")));
                    setState(() {
                      _isIconClicked = !_isIconClicked;
                    });
                  },
                  icon: Icon(
                      _isIconClicked ? Icons.favorite : Icons.favorite_border,
                      color: _isIconClicked ? Colors.red : Colors.black54),
                ),
                trailing: IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Trailing Icon taped!")));
                    },
                    icon: const Icon(Icons.more_vert_rounded)),
                minVerticalPadding: 4.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
