import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/model/navigation_item.dart';
import 'package:unit_converter/provider/navigation_provider.dart';

class MyTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final NavigationItem item;

  const MyTile(
      {Key? key, required this.icon, required this.title, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    // ignore: prefer_const_declarations
    final color = isSelected ?  Colors.orange : Colors.white;

    void selectItem(context, NavigationItem item) {
      
      final provider = Provider.of<NavigationProvider>(context, listen: false);
      provider.setNavigationItem(item);
    }

    return Material(
      color: Colors.transparent,
      child: ListTile(
        selected: isSelected,
        leading: Icon(
          icon,
          color: color,
          size: 41,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 25,
            color: color,
          ),
        ),
        onTap: () {
          selectItem(context, item);
        },
      ),
    );
  }
}
