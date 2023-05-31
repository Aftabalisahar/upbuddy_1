import 'package:flutter/material.dart';
class WorkAsSelectProvider extends ChangeNotifier{
  List<String> chipList = [];
  List<String> filteredUsers = [
    'AI Machine Learning',
    'Android App Developer',
    'IOS developer',
    'Graphics Designer',
    'Content Writer',
    'Flutter Developer',
    'React Native developer',
    'Marketing Manager'
  ];
  List<String> options = [
    'AI Machine Learning',
    'Android App Developer',
    'IOS developer',
    'Graphics Designer',
    'Content Writer',
    'Flutter Developer',
    'React Native developer',
    'Marketing Manager'
  ];
  String dropDownTitle = "Categories" ;
  void onValueChanged(val){
    filteredUsers = options
        .where((element) =>
        element.contains(val.toLowerCase()))
        .toList();
    notifyListeners();
  }
}