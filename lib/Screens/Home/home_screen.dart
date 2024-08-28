import 'package:ecommerce_shop/Screens/Home/Widgets/product_cart.dart';
import 'package:ecommerce_shop/models/product_model.dart';
import 'package:flutter/material.dart';
import 'Widgets/category.dart';
import 'Widgets/home_app_bar.dart';
import 'Widgets/image_slider.dart';
import 'Widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int currentSlide = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              const MySearchBar(),
              const SizedBox(
                height: 20,
              ),
              ImageSlider(
                currentSlide: currentSlide,
                onChange: (value) {
                  currentSlide = value;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Categories(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special For You',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ProductCart(
                    product: products[index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
