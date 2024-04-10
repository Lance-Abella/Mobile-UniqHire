import 'package:flutter/material.dart';
import 'package:uniqhire/model/companies.dart';

class CompanyProvider extends ChangeNotifier {
  final List<Company> _items = [];

  List<Company> get items =>  _items;

  void add(Company item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Company item) {
    _items.remove(item);
    notifyListeners();
  }

  void removeAll(Company item) {
    _items.clear();
    notifyListeners();
  }
}