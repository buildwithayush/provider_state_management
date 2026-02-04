import 'package:flutter/foundation.dart';

class FavoriteItemProvider with ChangeNotifier {
  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(int index){
   _selectedItem.add(index);
   notifyListeners();
  }

  void removeItem(int index) {
  selectedItem.remove(index);
  notifyListeners();
}

}