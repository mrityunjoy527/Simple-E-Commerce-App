import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/add_to_card_bloc.dart';
import 'package:untitled/product_data/data_model.dart';

class ProductTile extends StatelessWidget {
  final ProductDataModel product;

  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.grey,
        elevation: 10,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(shape: BoxShape.rectangle),
                  child: Image.network(
                    product.images.first,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<AddToCartBloc>().add(
                            AddProductToWishlistEvent(
                                productDataModel: product));
                      },
                      icon: product.isWishlisted
                          ? Icon(
                              CupertinoIcons.heart_fill,
                              color: Colors.blue[700],
                              size: 40,
                            )
                          : Icon(
                              CupertinoIcons.heart,
                              color: Colors.blue[700],
                              size: 40,
                            ),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<AddToCartBloc>().add(
                            AddProductToCartEvent(productDataModel: product));
                      },
                      icon: product.isCarted
                          ? Icon(
                              CupertinoIcons.cart_fill,
                              color: Colors.blue[700],
                              size: 40,
                            )
                          : Icon(
                              CupertinoIcons.shopping_cart,
                              color: Colors.blue[700],
                              size: 40,
                            ),
                    ),
                  ],
                )
              ],
            ),
            ListTile(
              title: Text(
                product.name,
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(product.description,
                  style: const TextStyle(
                      fontSize: 17.0, fontWeight: FontWeight.w400)),
              trailing: Text(
                "\$${product.price}",
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
