import 'package:flutter/material.dart';
import 'package:flutter_b17/asset_image.dart';
import 'package:flutter_b17/dialog_box_demo.dart';
import 'package:flutter_b17/dynamic_list_view.dart';
import 'package:flutter_b17/grid_view.dart';
import 'package:flutter_b17/multiple_selection.dart';
import 'package:flutter_b17/page_view_demo.dart';
import 'package:flutter_b17/providers/user_provider.dart';
import 'package:flutter_b17/screen_a.dart';
import 'package:flutter_b17/single_selection.dart';
import 'package:flutter_b17/tabbar_view.dart';
import 'package:provider/provider.dart';

import 'bottom_bar.dart';
import 'bottom_sheet_demo.dart';
import 'list_view_demo.dart';
import 'login.dart';
import 'network_image.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenAView(),
    );
  }
}
