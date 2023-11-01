import 'package:flutter/material.dart';
import 'package:hello_world/models/item.dart';

class ItemPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Center(
        child: Text(itemArgs.price.toString()),
      )
    );
  }
}