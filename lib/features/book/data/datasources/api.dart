import 'dart:convert';

import 'package:bookly_app/features/book/data/models/book.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Api extends ChangeNotifier {
  List<Book> booklist = [];
  fetchdata({String book='science'}) async {
    var response = await http.get(Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest%20&q=$book'));
    var jsonbody = jsonDecode(response.body)['items'] as List;
    booklist = jsonbody.map((json) => Book.fromjson(json)).toList();
    notifyListeners();
  }
  String? value;
    changelist(String val) {
    value = val;
    notifyListeners();
  }
}
