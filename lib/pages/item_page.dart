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
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'productImage${itemArgs.name}',
                child: Image.asset(itemArgs.photo, fit: BoxFit.cover)
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${itemArgs.name}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      Text(
                        itemArgs.rating.toString(),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp.${itemArgs.price}',
                    style: const TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20
                    )
                  ),
                  Text(
                    'Stock: ${itemArgs.stock}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}