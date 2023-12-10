import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/add_to_card_bloc.dart';
import 'package:untitled/product_data/data.dart';

import '../../product_item/listed_product_tile.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  static final _data = Data();
  final products = _data.getCartProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Cart Products",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<AddToCartBloc>().add(NavigateToHomePageEvent());
            },
            icon: const Icon(
              CupertinoIcons.house_fill,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<AddToCartBloc>().add(NavigateToWishlistPageEvent());
            },
            icon: const Icon(
              CupertinoIcons.heart_fill,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListedProductTile(product: products.elementAt(index));
        },
      ),
    );
  }
}
