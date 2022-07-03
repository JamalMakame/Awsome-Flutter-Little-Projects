import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/grocery_item.dart';

class GroceryTile extends StatelessWidget {
  // 4
  GroceryTile({
    Key? key,
    required this.item,
    this.onComplete,
  })  : textDecoration =
            item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
        super(key: key);

  // 2
  final Function(bool?)? onComplete;

  // 1
  final GroceryItem item;

  // 3
  final TextDecoration textDecoration;

  Widget buildImportance() {
    if (item.importance == Importance.low) {
      return Text(
        'Low',
        style: TextStyle(
          decoration: textDecoration,
        ),
      );
    } else if (item.importance == Importance.medium) {
      return Text(
        'Medium',
        style: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
          decoration: textDecoration,
        ),
      );
    } else if (item.importance == Importance.high) {
      return Text(
        'High',
        style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.red,
          fontWeight: FontWeight.w900,
          decoration: textDecoration,
        ),
      );
    } else {
      throw Exception('This importance type does not exist');
    }
  }

  Widget buildDate() {
    final dateFormatter = DateFormat('MMMM dd h:mm a');
    final dateString = dateFormatter.format(item.date);
    return Text(
      dateString,
      style: TextStyle(decoration: textDecoration),
    );
  }

  Widget buildCheckbox() {
    return Checkbox(
      // 1
      value: item.isComplete,
      // 2
      onChanged: onComplete,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // 2
          Container(width: 5.0, color: item.color),
// 3
          const SizedBox(width: 16.0),
// 4
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 5
              Text(
                item.name,
                style: TextStyle(
                  decoration: textDecoration,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              buildDate(),
              const SizedBox(height: 4.0),
              buildImportance(),
            ],
          ),
          const Spacer(),
          // 6
          Row(
            children: [
              // 7
              Text(
                item.quantity.toString(),
                style: TextStyle(
                  decoration: textDecoration,
                  fontSize: 21.0,
                ),
              ),
              // 8
              buildCheckbox(),
            ],
          ),
        ],
      ),
    );
  }
}
