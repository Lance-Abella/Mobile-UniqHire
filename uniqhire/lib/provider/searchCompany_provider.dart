// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:uniqhire/model/companies.dart';

class SearchCompanyProvider extends ChangeNotifier {
  List<Company> _results = companies;

  List<Company> get results => _results;

  void updateResults(String keyword) {
    _results = companies;

    if(keyword.isNotEmpty){
      _results = _filteredCompany(keyword);
    }
    notifyListeners();
  }

  List<Company> _filteredCompany(String keyword) {
    return companies.where((company) {
      final lowerCaseKeyword = keyword.toLowerCase();
      return company.name.toLowerCase().contains(lowerCaseKeyword);
    }).toList();
  }
}