import 'package:flutter/material.dart';

class UserDetailsCard extends StatelessWidget {
  final String? userName;
  final int? age;
  final int? index;
  const UserDetailsCard({super.key, this.userName, this.age, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
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
                    onPressed: () {},
                    icon: const Icon(Icons.delete_outlined)),
                IconButton(
                    tooltip: "Edit",
                    onPressed: () {},
                    icon: const Icon(Icons.edit))
              ],
            )
          ],
        ));
  }
}
