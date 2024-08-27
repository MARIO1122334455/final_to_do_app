// ignore_for_file: sort_child_properties_last

import 'package:final_to_do_app/theming/Appcolors.dart';
import 'package:flutter/material.dart';



class AddTaskBottomSheet extends StatefulWidget {
  AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  var selectedTime = DateTime.now();
  var formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text('Add New Task', style: Theme.of(context).textTheme.titleMedium),
          Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    onChanged: (text) => title = text,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'This Field Is Required';
                      } else if (text.length <= 3) {
                        return 'cant add this title';
                      }
                      return null;
                    },
                    decoration:
                        const InputDecoration(hintText: 'Enter Task Title'),
                  ),
                  TextFormField(
                    onChanged: (text) => description = text,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'This Field Is Required';
                      } else if (text.length <= 3) {
                        return 'cant add this description';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        hintText: 'Enter Task Description'),
                    maxLines: 4,
                  ),
                  Text(
                    'Select Date',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {
                        showCalender();
                      },
                      child: Text(
                        '${selectedTime.day} / ${selectedTime.month} / ${selectedTime.year}',
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      addTask();
                    },
                    child: Text(
                      'Add',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Appcolors.primaryColor),
                  )
                ],
              ))
        ],
      ),
    );
  }

  void showCalender() async {
    var choseenDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    selectedTime = choseenDate ?? selectedTime;
    setState(() {});
  }

  void addTask() {
    if (formKey.currentState?.validate() == true) {}
    // setState(() {});
  }
}
