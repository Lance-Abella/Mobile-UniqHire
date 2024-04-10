// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:uniqhire/model/agencies.dart';

class SearchAgencyProvider extends ChangeNotifier {
  List<Agency> _results = agencies;

  List<Agency> get results => _results;

  void updateResults(String keyword) {
    _results = agencies;

    if(keyword.isNotEmpty){
      _results = _filteredAgency(keyword);
    }
    notifyListeners();
  }

  List<Agency> _filteredAgency(String keyword) {
    return agencies.where((agency) {
      final lowerCaseKeyword = keyword.toLowerCase();
      return agency.name.toLowerCase().contains(lowerCaseKeyword);
    }).toList();
  }
}