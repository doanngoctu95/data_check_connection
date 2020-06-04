import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterapp/state_management/redux/model/CartItem.dart';
import 'package:flutterapp/state_management/redux/redux/reducers.dart';
import 'package:flutterapp/state_management/redux/shopping_cart_app.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';

// https://hackernoon.com/flutter-redux-how-to-make-shopping-list-app-1cd315e79b65
void main() {
  final store = new DevToolsStore<List<CartItem>>(cartItemsReducer,
      initialState: new List());

//  final store = new Store<List<String>>(addItemReducer,
//      initialState: new List());

  runApp(new FlutterReduxApp(store));
}

class FlutterReduxApp extends StatelessWidget {
  final DevToolsStore<List<CartItem>> store;

  FlutterReduxApp(this.store);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<List<CartItem>>(
      store: store,
      child: ShoppingCartApp(store),
    );
  }
}