import 'package:flutter/material.dart';
import '../model/home_model.dart';

class HomeProvider extends ChangeNotifier
{
  List<HomeModel> l1=[];

  void Add(HomeModel m1)
  {
    l1.add(m1);
    notifyListeners();
  }
  void Delete(int index)
  {
    l1.removeAt(index);
    notifyListeners();
  }
  void Update(HomeModel m1,int index)
  {
    l1[index]=m1;
    notifyListeners();
  }
}