import 'package:flutter/material.dart';
import 'package:uniqhire/model/agencies.dart';

class AgencyProvider extends ChangeNotifier {
  final List<Agency> _items = [];

  List<Agency> get items =>  _items;

  void add(Agency item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Agency item) {
    _items.remove(item);
    notifyListeners();
  }

  void removeAll(Agency item) {
    _items.clear();
    notifyListeners();
  }
}