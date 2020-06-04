import 'package:flutter/material.dart';
import 'package:flutter_redux_dev_tools/flutter_redux_dev_tools.dart';
import 'package:flutterapp/state_management/redux/list/shopping_list.dart';
import 'package:flutterapp/state_management/redux/model/CartItem.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';

import 'add_item/add_item_dialog.dart';

class ShoppingCartApp extends StatelessWidget {
  final DevToolsStore<List<CartItem>> store;

  ShoppingCartApp(this.store);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ShoppingCart',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ShoppingCart(store),
    );
  }
}

class ShoppingCart extends StatelessWidget {
  final DevToolsStore<List<CartItem>> store;

  ShoppingCart(this.store);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ShoppingCart'),
      ),
      body: ShoppingList(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => _openAddItemDialog(context),
        child: new Icon(Icons.add),
      ),
      endDrawer: new Container(
          width: 240.0,
          color: Colors.white,
          child: ReduxDevTools(store)),
    );
  }
}

_openAddItemDialog(BuildContext context) {
  showDialog(
      context: context, builder: (context) => AddItemDialog());
}
