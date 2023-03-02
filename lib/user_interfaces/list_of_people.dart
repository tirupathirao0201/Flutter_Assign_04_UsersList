import 'package:flutter/material.dart';
import 'package:peopleinfo/common_widgets/user_details_card.dart';
import 'package:peopleinfo/providers/people_list.dart';
import 'package:provider/provider.dart';

class ListOfPeople extends StatefulWidget {
  const ListOfPeople({super.key});

  @override
  State<ListOfPeople> createState() => _ListOfPeopleState();
}

class _ListOfPeopleState extends State<ListOfPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Of People"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.add,
                size: 25,
              ),
              tooltip: "ADD USER",
            )
          ],
        ),
        body: Consumer<PeopleList>(
          builder: (context, value, child) {
            var temp = value.listOfPeople;
            List<Widget> widList = [];
            for (int i = 0; i < temp.length; i++) {
              widList.add(UserDetailsCard(
                userName: temp[i]["name"],
                age: temp[i]["age"],
                index: 0,
              ));
            }
            return Column(
              children: widList.isNotEmpty ? widList : [const Text("Empty")],
            );
          },
        ));
  }
}
