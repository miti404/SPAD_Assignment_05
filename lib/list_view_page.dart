import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var bakeryItems = [
      {
        "img": "https://upload.wikimedia.org/wikipedia/commons/b/ba/Freshly_baked_bread_loaves.jpg",
        "name": "Freshly Baked Bread",
        "price": "\$3.50"
      },
      {
        "img": "https://upload.wikimedia.org/wikipedia/commons/2/2e/Croissant_1.jpg",
        "name": "Croissant",
        "price": "\$2.00"
      },
      {
        "img": "https://upload.wikimedia.org/wikipedia/commons/5/50/Chocolate_chip_cookies.jpg",
        "name": "Chocolate Chip Cookies",
        "price": "\$4.00"
      },
      {
        "img": "https://upload.wikimedia.org/wikipedia/commons/e/e9/Cupcake_%281%29.jpg",
        "name": "Cupcake",
        "price": "\$3.00"
      },
      {
        "img": "https://upload.wikimedia.org/wikipedia/commons/1/1c/Donuts.jpg",
        "name": "Donuts",
        "price": "\$1.50"
      },
      {
        "img": "https://upload.wikimedia.org/wikipedia/commons/6/6e/Fruit_tart.png",
        "name": "Fruit Tart",
        "price": "\$5.00"
      },
      {
        "img": "https://upload.wikimedia.org/wikipedia/commons/3/3a/Macaron_2.jpg",
        "name": "Macarons",
        "price": "\$6.00"
      },
      {
        "img": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Apple_pie.jpg/1280px-Apple_pie.jpg",
        "name": "Apple Pie",
        "price": "\$7.00"
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bakery Items"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
          itemCount: bakeryItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: SizedBox(
                child: Card(
                  child: Row(
                    children: [
                      Image.network(
                        bakeryItems[index]['img']!,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bakeryItems[index]['name']!,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            bakeryItems[index]['price']!,
                            style: const TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }));
  }
}
