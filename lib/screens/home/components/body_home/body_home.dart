import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/components/body_home/body_content.dart';
import 'package:food_delivery_app/screens/home/components/body_home/title_search_container.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TitleSearchContainer(),
          SizedBox(height: 24.0),
          BodyContent(),
        ],
      ),
    );
  }
}
