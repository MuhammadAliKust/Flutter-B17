import 'package:flutter/material.dart';

class ScreenBView extends StatelessWidget {
  final String name;
  final String email;

  const ScreenBView({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        title: Text("Screen B"),
      ),
      body: Column(
        children: [
          Text(name.toString(),style: TextStyle(fontSize: 30),),
          Text(email.toString(),style: TextStyle(fontSize: 30),),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go back to Screen A")),
          ),
        ],
      ),
    );
  }
}
