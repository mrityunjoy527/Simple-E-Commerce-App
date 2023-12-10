import 'package:flutter/material.dart';
import 'package:untitled/product_data/data_model.dart';

class ListedProductTile extends StatelessWidget {
  final ProductDataModel product;

  const ListedProductTile({super.key, required this.product});

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
              ],
            ),
            ListTile(
              title: Text(product.name, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),),
              subtitle: Text(product.description, style: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400)),
              trailing: Text("\$${product.price}", style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),),
            )
          ],
        ),
      ),
    );
  }
}
