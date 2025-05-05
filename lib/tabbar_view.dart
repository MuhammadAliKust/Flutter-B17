import 'package:flutter/material.dart';
import 'package:flutter_b17/login.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Earning"),
          bottom: const TabBar(tabs: [
            Text("Daily"),
            Text("Weekly"),
            Text("Monthly"),
          ]),
        ),
        body: TabBarView(children: [
          const Center(
            child: Text("Daily Screen"),
          ),
          const Center(
            child: Text("Weekly Screen"),
          ),
          LoginView(),
        ]),
      ),
    );
  }
}
