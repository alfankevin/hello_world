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
      name: 'Saltz',
      price: 3000,
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
          crossAxisCount: 2, childAspectRatio: 0.65
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
                padding: const EdgeInsets.all(8),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber),
                              Text(
                                item.rating.toString(),
                                style: const TextStyle(
                                  color: Colors.amber,
                                  fontSize: 14
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, bottom: 8),
                      child: Text(
                        'Rp.${item.price}',
                        style: const TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14
                        )
                      ),
                    ),
                    Text(
                      'Stock: ${item.stock}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14
                      )
                    )
                  ],
                )
              )
            ),
          );
        }
      ),
    ),
    bottomNavigationBar: BottomAppBar(
      child: Container(
        padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Alfan Farchi Al-Hadi',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16
                )
              ),
              Text(
                '2141720084',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}