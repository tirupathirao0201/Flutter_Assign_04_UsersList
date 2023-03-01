import 'package:flutter/material.dart';
import 'package:peopleinfo/common_widgets/user_details_card.dart';

class ListOfPeople extends StatefulWidget {
  final List<Map<String,dynamic>> listOfUser=[];
  

  ListOfPeople({super.key,});

  @override
  State<ListOfPeople> createState() => _ListOfPeopleState();
}

class _ListOfPeopleState extends State<ListOfPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          UserDetailsCard(userName: "Ram",age: 20,index: 1),
          UserDetailsCard(userName: "Ram",age: 20,index: 1),
          UserDetailsCard(userName: "Ram",age: 20,index: 1)
        ],
      )
    );
  }
}