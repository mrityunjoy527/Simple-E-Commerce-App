import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/product_data/data_model.dart';

import '../show_dialog.dart';

class ListedProductTile extends StatelessWidget {
  final ProductDataModel product;
  final Icon icon;
  final Function removeFrom;
  final String from;

  const ListedProductTile({
    super.key,
    required this.product,
    required this.icon,
    required this.removeFrom,
    required this.from,
  });

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
                CarouselSlider(
                  items: product.images.map((image) {
                    return Container(
                      decoration:
                          const BoxDecoration(shape: BoxShape.rectangle),
                      child: Image.network(image,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    padEnds: false,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () async {
                        bool sure = await showConfirmingDialog(context, from);
                        if(!sure) return;
                        removeFrom();
                      },
                      icon: icon,
                    ),
                  ],
                ),
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
