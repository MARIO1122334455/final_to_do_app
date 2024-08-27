// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:carousel_calendar/carousel_calendar.dart';
import 'package:final_to_do_app/components/addTaskBottom.dart';
import 'package:final_to_do_app/screens/settingListScreen.dart';
import 'package:final_to_do_app/screens/TaskListScreen.dart';
import 'package:final_to_do_app/theming/Appcolors.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatefulWidget {
  Homescreen({super.key});
  static const String routeName = 'HomeScreeen';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Appcolors.primaryColor,
          child: const Icon(Icons.add),
          onPressed: () {
            showNoteSheet();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.18,
          title: Text(
            'Todo App',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 7,
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (int selctedIndex) {
                currentIndex = selctedIndex;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu_sharp, size: 20), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings, size: 20), label: ''),
              ]),
        ),
        body:  const Column(
          
          children: [
              CalendarCarousel(onChanged: );
            ,
            Expanded(
                child: currentIndex == 0
                    ? const Tasklistscreen()
                    : const Settinglistscreen()),
          ],
        ));
  }

  void showNoteSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext) {
          return AddTaskBottomSheet();
        });
  }
}


