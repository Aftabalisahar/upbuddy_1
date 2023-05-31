import 'package:flutter/material.dart';
class ProposalBottomSheetProvider extends ChangeNotifier{
  int index = -1 ;
  void updateIndex(int newIndex){
    index = newIndex ;
    notifyListeners();
  }

}