import 'package:flutter/material.dart';
import 'package:flutter_b17/providers/user_provider.dart';
import 'package:flutter_b17/screen_b.dart';
import 'package:provider/provider.dart';

class ScreenAView extends StatelessWidget {
  const ScreenAView({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              userProvider.setName('Basit');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenBView()));
            },
            child: Text("Go to Screen B")),
      ),
    );
  }
}
