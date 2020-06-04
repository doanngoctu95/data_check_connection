import 'package:flutter/material.dart';
import 'package:flutterapp/flutter_3d_obj/3d_obj_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Flutter3dObjPage()
    );
  }

}