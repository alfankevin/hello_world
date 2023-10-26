import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});

  static const routeName = '/item';

  @override
  Widget build(BuildContext context) {

  return MaterialApp(
      title: 'Shopee',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shopping List'),
        ),
        body: Container(
          child: Text('Item'),
        )
      ),
    );
  }
}