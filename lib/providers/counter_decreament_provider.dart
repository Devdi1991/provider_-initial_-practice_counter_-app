import 'package:flutter/material.dart';

class CounterDecreamentApp extends ChangeNotifier{
  var count=0;
  void decreament(){
    count--;
    notifyListeners();

  }
}