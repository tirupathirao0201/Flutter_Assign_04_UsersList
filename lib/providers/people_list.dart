import 'package:flutter/material.dart';

class PeopleList extends ChangeNotifier{
  List<Map<String,dynamic>> listOfPeople =[];


  void addPerson({required String name, required int age}){
    listOfPeople.insert(0,{'name': name, 'age': age});
    notifyListeners();
  }

  void deletePerson({required int index}){
    listOfPeople.removeAt(index);
    notifyListeners();
  }

  void updatePerson({required int index,required String name,required int age}){
    listOfPeople[index]['name']=name;
    listOfPeople[index]['age']=age;
    notifyListeners();
  }
}