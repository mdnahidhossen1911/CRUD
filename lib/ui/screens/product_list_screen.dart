import 'package:crud/ui/screens/add_product_screen.dart';
import 'package:crud/ui/widget/product_item.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Product List'),
        backgroundColor: Colors.blue,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddProductScreen.name);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductItem();
        },
      ),
    );
  }
}
