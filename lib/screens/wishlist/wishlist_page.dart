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
    return BlocConsumer<AddToCartBloc, AddToCartState>(
      listener: (context, state) {
        if (state is RemoveProductFromWishlistSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Product removed to Wishlist")));
        }
      },
      builder: (context, state) {
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
              return ListedProductTile(
                product: products.elementAt(index),
                icon: Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.blue[700],
                  size: 40,
                ),
                removeFrom: () {
                  context.read<AddToCartBloc>().add(
                        RemoveProductFromWishlistEvent(
                          true,
                          productDataModel: products.elementAt(index),
                        ),
                      );
                },
                from: 'wishlist',
              );
            },
          ),
        );
      },
    );
  }
}
