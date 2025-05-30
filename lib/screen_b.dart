import 'package:flutter/material.dart';
import 'package:flutter_b17/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ScreenBView extends StatefulWidget {
  final String name;

  const ScreenBView({super.key, required this.name});

  @override
  State<ScreenBView> createState() => _ScreenBViewState();
}

class _ScreenBViewState extends State<ScreenBView> {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        title: Text("Screen B"),
      ),
      body: Column(
        children: [
          Text(widget.name.toString()),
          Text(
            userProvider.getName().toString(),
            style: TextStyle(fontSize: 30),
          ),
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
