import 'package:flutter/material.dart';
class ProviderTest with ChangeNotifier {
  String text = 'provider first';
  void change(String value){
    text = value;
    notifyListeners();
  }
}