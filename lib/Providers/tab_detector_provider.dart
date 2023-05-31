import 'package:flutter/material.dart';
class TabDetectorProvider extends ChangeNotifier{
  int currentIndex=0;
  TabDetectorProvider(
      {
        this.currentIndex = 0,
      }
      );
  void updateIndex(int newIndex){
    currentIndex = newIndex;
    notifyListeners();
  }
}