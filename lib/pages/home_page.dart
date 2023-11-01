import 'package:flutter/material.dart';
import 'package:hello_world/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      photo: 'assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',
      stock: 10,
      rating: 5
    ),
    Item(
      name: 'Salt',
      price: 2000,
      photo: 'assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',
      stock: 10,
      rating: 5
    ),
    Item(
      name: 'Salty',
      price: 3000,
      photo: 'assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',
      stock: 10,
      rating: 5
    ),
    Item(
      name: 'Salts',
      price: 2000,
      photo: 'assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',
      stock: 10,
      rating: 5
    ),
    Item(
      name: 'Salta',
      price: 2000,
      photo: 'assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',
      stock: 10,
      rating: 5
    ),
    Item(
      name: 'Saltz',
      price: 2000,
      photo: 'assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',
      stock: 10,
      rating: 5
    ),
  ];
  
  return Scaffold(
    appBar: AppBar(
      title: const Text('Shopping List'),
    ),
    body: Container(
      margin: EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7
        ),
        padding: EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'productImage${item.name}',
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(item.photo, fit: BoxFit.cover)
                      )
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          )
                        )
                      ],
                    ),
                    Text('hello')
                  ],
                )
              )
            ),
          );
        }
      ),
    ));
  }
}