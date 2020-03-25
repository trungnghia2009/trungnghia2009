import 'dart:async';

import 'package:flutter/cupertino.dart';

class SearchBloc with ChangeNotifier {
  var data = [
    "Android",
    "iOS",
    "Windows",
    "Mac",
    "Linux",
    "Ruby",
    "Golang",
    "Php",
    "Swift",
    "Java",
    "Dart",
    "JavaScript",
    "Python",
    "Html",
    "Sql",
    "C#",
    "C++",
  ];

  StreamController<List<String>> searchController =
      StreamController<List<String>>.broadcast();

  search(String query) {
    query = query.toLowerCase();
    if (query.isEmpty) {
      searchController.sink.add(data);
      return;
    }
    List resultList =
        data.where((item) => item.toLowerCase().contains(query)).toList();
    searchController.sink.add(resultList);
  }

  void dispose() {
    searchController.close();
  }
}
