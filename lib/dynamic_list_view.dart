import 'package:flutter/material.dart';
import 'package:flutter_b17/models/notification.dart';

class DynamicListView extends StatefulWidget {
  DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  List<NotificationModel> notificationList = [
    NotificationModel(
        title: 'First Title', subTitle: 'First Subtitle', time: '11:30 AM'),
    NotificationModel(
        title: 'Second Title', subTitle: 'Second Subtitle', time: '12:30 AM'),
    NotificationModel(
        title: 'Third Title', subTitle: 'Third Subtitle', time: '1:30 AM'),
    NotificationModel(
        title: 'Fourth Title', subTitle: 'Fourth Subtitle', time: '2:30 AM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dynamic List View Demo"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return Card(
                elevation: 10,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(notificationList[i].title),
                  subtitle: Text(notificationList[i].subTitle),
                  trailing: Text(notificationList[i].time),
                  // tileColor: Colors.blue,
                ),
              );
            }));
  }
}
