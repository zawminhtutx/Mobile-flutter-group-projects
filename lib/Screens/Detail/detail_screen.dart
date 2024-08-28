import 'package:ecommerce_shop/Screens/Detail/Widgets/addto_cart.dart';
import 'package:ecommerce_shop/Screens/Detail/Widgets/description.dart';
import 'package:ecommerce_shop/Screens/Detail/Widgets/detail_app_bar.dart';
import 'package:ecommerce_shop/Screens/Detail/Widgets/image_slider.dart';
import 'package:ecommerce_shop/Screens/Detail/Widgets/item_detail.dart';
import 'package:ecommerce_shop/models/product_model.dart';
import 'package:flutter/material.dart';

class DetailCartScreen extends StatefulWidget {
  final Product product;
  const DetailCartScreen({super.key, required this.product});

  @override
  State<DetailCartScreen> createState() => _DetailCartScreenState();
}

class _DetailCartScreenState extends State<DetailCartScreen> {
  @override
  Widget build(BuildContext context) {
    int currentImage = 0;
    int currentColor = 1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const DetailAppBar(),
            DetailImageSlider(
              onChange: (index) {
                setState(() {
                  currentImage = index;
                });
              },
              image: widget.product.image,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentImage == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 100,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //for product name,price,rating and seller
                  ItemDetail(
                    product: widget.product,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Color',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: List.generate(
                      widget.product.colors.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: currentColor == index
                                ? Border.all(
                                    color: widget.product.colors[index],
                                  )
                                : null,
                            color: currentColor == index
                                ? Colors.white
                                : widget.product.colors[index],
                            shape: BoxShape.circle,
                          ),
                          padding: currentColor == index
                              ? const EdgeInsets.all(2)
                              : null,
                          margin: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: widget.product.colors[index],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //for Description
                  const SizedBox(
                    height: 20,
                  ),
                  DetailDescription(
                    text: widget.product.description,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
