import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors_style.dart';
import 'package:food_delivery_app/screens/login/components/custom_tab.dart';
import 'package:food_delivery_app/screens/login/components/form_login.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BrandColors.colorBodyBg,
        body: Column(
          children: [
            Container(
              height: 382.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 0,
                      blurRadius: 30.0,
                      offset: Offset(0, 4),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/head_login_screen.png'),
                  SizedBox(height: 45.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTab(
                        title: 'Login',
                        isSelected: selectedIndex == 0,
                        onTap: () {
                          onTapItem(0);
                        },
                      ),
                      CustomTab(
                        title: 'Sign-up',
                        isSelected: selectedIndex == 1,
                        onTap: () {
                          onTapItem(1);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 60.0),
            FormLogin(
              index: selectedIndex,
            ),
          ],
        ));
  }

  void onTapItem(int i) {
    setState(() {
      selectedIndex = i;
    });
  }
}
