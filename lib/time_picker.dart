import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerDemo extends StatefulWidget {
  TimePickerDemo({super.key});

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  TimeOfDay? timeOfDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Picker"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now())
                    .then((val) {
                  timeOfDay = val;
                  setState(() {});
                });
              },
              child: Text("Pick Time")),
          if (timeOfDay != null) Text(timeOfDay!.format(context).toString())
        ],
      ),
    );
  }
}
