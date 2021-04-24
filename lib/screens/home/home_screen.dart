import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors_style.dart';
import 'package:food_delivery_app/screens/home/components/app_bar.dart';
import 'package:food_delivery_app/screens/home/components/body_home/body_home.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> tabs = [
    BodyHome(),
    Center(
      child: Container(
        child: Text('Favorite'),
      ),
    ),
    Center(
      child: Container(
        child: Text('Profile'),
      ),
    ),
    Center(
      child: Container(
        child: Text('History'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.colorHomeBG,
      appBar: homeAppBar(context),
      body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: tabs[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: _currentIndex,
        iconSize: 31.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: BrandColors.colorGrey,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: BrandColors.colorPrimary,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: BrandColors.colorGrey,
              ),
              label: 'Favorite',
              activeIcon: Icon(
                Icons.favorite,
                color: BrandColors.colorPrimary,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: BrandColors.colorGrey,
              ),
              label: 'Profile',
              activeIcon: Icon(
                Icons.person,
                color: BrandColors.colorPrimary,
              )),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: BrandColors.colorGrey,
            ),
            label: 'History',
            activeIcon: Icon(
              Icons.history,
              color: BrandColors.colorPrimary,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: BrandColors.colorPrimary,
      ),
    );
  }
}
