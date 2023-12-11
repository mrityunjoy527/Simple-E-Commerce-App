import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/add_to_card_bloc.dart';
import 'package:untitled/product_data/data.dart';
import 'package:untitled/product_data/data_model.dart';
import 'package:untitled/product_item/product_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late Data _data;
  late List<ProductDataModel> products;

  @override
  void initState() {
    _data = Data();
    products = _data.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddToCartBloc, AddToCartState>(
      listener: (context, state) {
        if(state is AddProductToCartSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Product added to Cart")));
        }else if(state is AddProductToWishlistSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Product added to Wishlist")));
        }else if(state is RemoveProductFromCartSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Product removed from Cart")));
        }else if(state is RemoveProductFromWishlistSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Product removed to Wishlist")));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              "Add To Cart",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  context.read<AddToCartBloc>().add(
                      NavigateToWishlistPageEvent());
                },
                icon: const Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<AddToCartBloc>().add(NavigateToCartPageEvent());
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductTile(product: products[index]);
            },
          ),
        );
      },
    );
  }
}
