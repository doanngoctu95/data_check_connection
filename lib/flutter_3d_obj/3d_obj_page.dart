import 'package:flutter/material.dart';
import 'package:flutter_3d_obj/flutter_3d_obj.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Flutter3dObjPage extends StatefulWidget {
  @override
  _Flutter3dObjPageState createState() => _Flutter3dObjPageState();
}

class _Flutter3dObjPageState extends State<Flutter3dObjPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3D obj demo"),
      ),
      body: new Center(
        child: Object3D(
          size: const Size(400.0, 400.0),
          path: "assets/abc.obj",
          asset: true,
        ),
      ),
    );
  }
}
