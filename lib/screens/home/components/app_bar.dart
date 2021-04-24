import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors_style.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      splashRadius: 24.0,
      onPressed: () {
        print('menu icon on tap');
      },
      icon: Image.asset('assets/images/appbar_menu_ic.png'),
    ),
    actions: [
      IconButton(
        splashRadius: 24.0,
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: BrandColors.colorGrey,
        ),
        onPressed: () {
          print('card icon on tap');
        },
      ),
    ],
  );
}
