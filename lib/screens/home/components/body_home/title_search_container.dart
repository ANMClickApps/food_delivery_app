import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors_style.dart';

class TitleSearchContainer extends StatelessWidget {
  const TitleSearchContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delicious\nfood for you',
            style: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
                fillColor: Color(0xFFEFEEEE),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: BrandColors.colorPrimary,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'Search'),
          )
        ],
      ),
    );
  }
}
