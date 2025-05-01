import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: bakeryItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network(
                  bakeryItems[index]['img']!,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Text(
                  bakeryItems[index]['name']!,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  bakeryItems[index]['price']!,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
