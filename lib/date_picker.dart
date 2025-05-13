import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime? dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        firstDate: DateTime(1970),
                        lastDate: DateTime.now())
                    .then((val) {
                  dateTime = val;
                  setState(() {});
                });
              },
              child: Text("Pick Date")),
          if (dateTime != null) Text(DateFormat.yMd().format(dateTime!))
        ],
      ),
    );
  }
}
