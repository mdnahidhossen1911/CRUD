import 'package:flutter/material.dart';

import '../screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Image.network(
              'https://adminapi.applegadgetsbd.com/storage/media/large/iPhone-14-Starlight-8954.jpg'),
          title: const Text('Iphone 14'),
          subtitle: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Product Code: #CODE'),
              Text('Quantity: 12'),
              Text('Price: 34535'),
              Text('Total Price: 23232323'),
            ],
          ),
          trailing: Wrap(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, UpdateProductScreen.name);
                },
                icon: const Icon(Icons.edit),
              ),
            ],
          ),
        ),
        Divider(
          height: 0.3,
          color: Colors.grey.shade200,
        )
      ],
    );
  }
}
