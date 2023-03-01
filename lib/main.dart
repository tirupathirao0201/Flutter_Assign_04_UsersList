import 'package:flutter/material.dart';
import 'package:peopleinfo/user_interfaces/homepage.dart';
import 'package:peopleinfo/user_interfaces/list_of_people.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'People Info',
      initialRoute: '/list',
      routes: {
        '/': (context) => UserInput(),
        '/list': (context) => const ListOfPeople()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
