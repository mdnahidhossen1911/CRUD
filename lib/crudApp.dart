import 'package:crud/ui/screens/add_product_screen.dart';
import 'package:crud/ui/screens/product_list_screen.dart';
import 'package:crud/ui/screens/update_product_screen.dart';
import 'package:flutter/material.dart';

class CRUDapp extends StatelessWidget {
  const CRUDapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=> const ProductListScreen(),
        AddProductScreen.name : (context)=> const AddProductScreen(),
        UpdateProductScreen.name : (context)=> const UpdateProductScreen(),
      },
    );
  }
}
