import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/people_list.dart';
import './list_of_people.dart';

class UserInput extends StatefulWidget {
  final TextEditingController nameControl = TextEditingController();
  final TextEditingController ageControl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // validator for name
  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "please enter name";
    } else {
      return null;
    }
  }

  // validator for age
  String? ageValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter age";
    } else {
      return null;
    }
  }

  UserInput({super.key});

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 235, 242, 210),
                Color.fromARGB(168, 208, 237, 158)
              ]),
        ),
        child: Form(
          key: widget._formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(width: 2)),
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  controller: widget.nameControl,
                  validator: widget.nameValidator,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: Icon(Icons.person_2_outlined),
                    labelText: "Enter name",
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 3, 113, 6)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 2)),
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                    controller: widget.ageControl,
                    validator: widget.ageValidator,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      icon: Icon(Icons.calendar_month_outlined),
                      labelText: "Enter age",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 113, 6)),
                    )),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 82, 232, 134),
                    foregroundColor: const Color.fromARGB(255, 69, 91, 28),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50)),
                onPressed: () {
                  var peopleListProvider =
                      Provider.of<PeopleList>(context, listen: false);
                  peopleListProvider.addPerson(
                      name: widget.nameControl.text,
                      age: int.parse(widget.ageControl.text));
                  widget.ageControl.clear();
                  widget.nameControl.clear();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListOfPeople()));
                },
                child: const Text("ADD"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
