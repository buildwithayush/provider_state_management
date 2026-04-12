import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _mylist = [];
  List getlist() => _mylist;
  void addinlist(Map<String, dynamic> value) {
    _mylist.add(value);
    notifyListeners();
  }
}
