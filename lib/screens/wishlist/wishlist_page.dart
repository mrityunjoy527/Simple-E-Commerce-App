import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/add_to_card_bloc.dart';
import '../../product_data/data.dart';
import '../../product_item/listed_product_tile.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {

  static final _data = Data();
  final products = _data.getWishlistProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Wishlist Products",
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
              context.read<AddToCartBloc>().add(NavigateToCartPageEvent());
            },
            icon: const Icon(
              CupertinoIcons.cart_fill,
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
