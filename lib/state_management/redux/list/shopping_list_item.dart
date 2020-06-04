import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterapp/state_management/redux/model/CartItem.dart';
import 'package:flutterapp/state_management/redux/redux/actions.dart';

class ShoppingListItem extends StatelessWidget {
  final CartItem item;

  ShoppingListItem(this.item);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<List<CartItem>, OnStateChanged>(converter: (store) {
      return (item) => store.dispatch(ToggleItemStateAction(item));
    }, builder: (context, callback) {
      return new ListTile(
        title: new Text(item.name),
        leading: new Checkbox(
            value: item.checked,
            onChanged: (bool newValue) {
              callback(CartItem(item.name, newValue));
            }),
      );
    });
  }
}

typedef OnStateChanged = Function(CartItem item);
