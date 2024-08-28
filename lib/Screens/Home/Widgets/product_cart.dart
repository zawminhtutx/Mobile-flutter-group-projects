import 'package:ecommerce_shop/constants.dart';
import 'package:ecommerce_shop/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final Product product;
  const ProductCart({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Image.asset(
                    product.image,
                    width: 120,
                    height: 120,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
