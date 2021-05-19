import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/product_model.dart';
import 'package:food_delivery_app/screens/details/product_details_screen.dart';
import 'package:food_delivery_app/screens/home/components/body_home/product_card.dart';

class ProductCarousel extends StatefulWidget {
  final int currentIndex;

  const ProductCarousel({Key key, this.currentIndex}) : super(key: key);

  @override
  _ProductCarouselState createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  PageController _pageController;
  int initPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: initPage,
      viewportFraction: 0.63,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.85,
      child: PageView.builder(
        itemCount: categories[widget.currentIndex].productList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                      product:
                          categories[widget.currentIndex].productList[index]),
                  fullscreenDialog: true,
                ));
          },
          child: ProductCard(
            product: categories[widget.currentIndex].productList[index],
          ),
        ),
        controller: _pageController,
      ),
    );
  }
}
