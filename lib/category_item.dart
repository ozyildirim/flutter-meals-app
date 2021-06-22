import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color itemColor;

  CategoryItem(this.title, this.itemColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        title,
        style: Theme.of(context).textTheme.title,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [itemColor.withOpacity(0.7), itemColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
