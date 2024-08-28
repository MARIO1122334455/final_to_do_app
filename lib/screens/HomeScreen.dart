// ignore_for_file: unrelated_type_equality_checks

import 'package:final_to_do_app/components/addTaskBottom.dart';
import 'package:final_to_do_app/screens/Settinglistscreen.dart';
import 'package:final_to_do_app/screens/TaskListScreen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});
  static const String routeName = 'HomeScreen';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * .2,
          title: const Text('To Do List'),
        ),
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * .11,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: BottomNavigationBar(
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                currentIndex: selectedIndex,
                backgroundColor: Colors.transparent,
                items: const [
                  BottomNavigationBarItem(label: '', icon: Icon(Icons.list)),
                  BottomNavigationBarItem(label: '', icon: Icon(Icons.settings))
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              addBottomShet();
              setState(() {});
            },
            child: const Icon(Icons.add)),
        body: selectedIndex == 0
            ? const Tasklistscreen()
            : const Settinglistscreen());
  }

  addBottomShet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return AddTaskBottomSheet();
        });
  }

  List<Widget> tabs = [const Tasklistscreen(), const Settinglistscreen()];
}
