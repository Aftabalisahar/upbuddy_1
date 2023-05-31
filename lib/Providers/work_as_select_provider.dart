import 'package:flutter/material.dart';
class WorkAsScreenProvider extends ChangeNotifier{
  bool agencySelection = false ;
  bool individualSelection = false ;
  void updateAgency(){
    agencySelection = true ;
    individualSelection = false ;
    notifyListeners();
  }
  void updateIndividual(){
    individualSelection = true ;
    agencySelection = false ;
    notifyListeners();
  }

}