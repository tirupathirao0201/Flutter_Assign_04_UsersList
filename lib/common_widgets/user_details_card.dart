import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/people_list.dart';

class UserDetailsCard extends StatelessWidget {
  final String? userName;
  final int? age;
  final int? index;
  const UserDetailsCard({super.key, this.userName, this.age, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 5),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.blue),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(userName!),
                const SizedBox(
                  width: 30,
                  height: 0,
                ),
                Text(age!.toString()),
              ],
            ),
            Row(
              children: [
                IconButton(
                    tooltip: "Delete",
                    onPressed: () {
                      var peopleListProvider =
                          Provider.of<PeopleList>(context, listen: false);
                      peopleListProvider.deletePerson(index: index!);
                    },
                    icon: const Icon(Icons.delete_outlined)),
                IconButton(
                    tooltip: "Edit",
                    onPressed: () {
                      
                      var peopleListProvider =
                          Provider.of<PeopleList>(context, listen: false);
                      peopleListProvider.updatePerson(
                          index: index!, name: userName!, age: age!);
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.edit))
              ],
            )
          ],
        ));
  }
}
