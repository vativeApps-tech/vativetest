import 'package:flutter/material.dart';

class ProviderState with ChangeNotifier{
  var count = 0;
  void UpdateCount(){
    count++;
    notifyListeners();
  }
}