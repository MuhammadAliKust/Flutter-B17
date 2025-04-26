import 'package:flutter/material.dart';
import 'package:flutter_b17/asset_image.dart';
import 'package:flutter_b17/dynamic_list_view.dart';
import 'package:flutter_b17/grid_view.dart';
import 'package:flutter_b17/multiple_selection.dart';
import 'package:flutter_b17/page_view_demo.dart';
import 'package:flutter_b17/single_selection.dart';

import 'list_view_demo.dart';
import 'login.dart';
import 'network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: GridViewDemo(),
    );
  }
}
