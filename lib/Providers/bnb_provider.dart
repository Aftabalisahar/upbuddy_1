import 'package:flutter/material.dart';
class HomeScreenProvider extends ChangeNotifier{
  int currentIndex;
  HomeScreenProvider(
      {
        this.currentIndex = 0,
      }
      );
  void updateIndex(int newIndex){
    currentIndex = newIndex;
    notifyListeners();
  }
}