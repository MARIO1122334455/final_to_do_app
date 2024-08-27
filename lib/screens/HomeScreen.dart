import 'package:final_to_do_app/components/addTaskBottom.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});
  static const String routeName = 'HomeScreen';
  int selectedIndex = 0;
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
                widget.selectedIndex = index;
                setState(() {});
              },
              currentIndex: widget.selectedIndex,
              backgroundColor: Colors.transparent,
              items: const [
                BottomNavigationBarItem(label: '', icon: Icon(Icons.list)),
                BottomNavigationBarItem(label: '', icon: Icon(Icons.settings))
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            AddTaskBottomSheet();
          },
          child: const Icon(Icons.add)),
    );
  }
}
