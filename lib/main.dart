import 'package:flutter/material.dart';
import 'package:peopleinfo/providers/people_list.dart';
import 'package:peopleinfo/user_interfaces/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => PeopleList(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'People Info',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
