// ignore_for_file: await_only_futures

import 'package:final_to_do_app/screens/HomeScreen.dart';
import 'package:final_to_do_app/theming/mytheme.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Mythemedata.lightTheme,
        initialRoute: Homescreen.routeName,
        routes: {
          Homescreen.routeName: (context) => Homescreen(),
        },
        home: Homescreen());
  }
}
