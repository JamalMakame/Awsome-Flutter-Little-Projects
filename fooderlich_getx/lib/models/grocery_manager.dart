import 'package:fooderlich/models/grocery_item.dart';
import 'package:get/get.dart';

class GroceryManager extends GetxController {
  final _groceryItems = <GroceryItem>[].obs;

  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);

  void deleteItem(int index) {
    _groceryItems.removeAt(index);
  }

  void addItem(GroceryItem item) {
    _groceryItems.add(item);
  }

  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
  }

  void completeItem(int index, bool change) {
    final item = _groceryItems[index];
    _groceryItems[index] = item.copyWith(isComplete: change);
  }
}
