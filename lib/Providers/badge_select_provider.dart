import 'package:flutter/material.dart';
class BadgeSelectScreenProvider extends ChangeNotifier{
  int currentIndex;
  BadgeSelectScreenProvider(
      {
        this.currentIndex = -1,
      }
      );
  void updateIndex(int newIndex){
    currentIndex = newIndex;
    notifyListeners();
  }
}