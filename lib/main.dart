import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25,
          ),
          title: Text(
            "First Screen",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 40,top: 30,right: 60),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "First Text",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.thumb_up),
                  Icon(Icons.thumb_up),
                  Icon(Icons.thumb_up),
                  Icon(Icons.thumb_up),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
