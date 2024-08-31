

import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController search_product = TextEditingController();
  final List<String> filters = <String>['All', 'Adidas', 'Nike', 'Bata', 'Bay'];
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
            child: FilterChip(
          label: const Center(
            child: Text('Chip Widget'),
          ),
          selected: isSelected,
          onSelected: (value) {
            setState(() {
              isSelected = !isSelected;
            });
          },
          // avatar: Text('A'),
        )),
      ),
    );
  }
}
