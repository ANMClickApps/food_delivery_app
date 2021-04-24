import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors_style.dart';
import 'package:food_delivery_app/models/product_model.dart';
import 'package:food_delivery_app/screens/home/components/body_home/product_carousel.dart';

class BodyContent extends StatefulWidget {
  BodyContent({Key key}) : super(key: key);

  @override
  _BodyContentState createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => builItem(context, index)),
        ),
        ProductCarousel(currentIndex: selectedCategory),
      ],
    );
  }

  Widget builItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              categories[index].title,
              style: TextStyle(
                fontSize: 17.0,
                color: index == selectedCategory
                    ? BrandColors.colorPrimary
                    : BrandColors.colorCategory,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
              height: 3.0,
              width: 87.0,
              decoration: BoxDecoration(
                  color: index == selectedCategory
                      ? BrandColors.colorPrimary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0)),
            )
          ],
        ),
      ),
    );
  }
}
