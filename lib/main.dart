import 'package:flutter/material.dart';
import 'package:flutterapp/cart_app/collections/carousel.dart';
import 'package:flutterapp/cart_app/page/StoreList.dart';
import 'package:flutterapp/cart_app/page/cart.dart';
import 'package:flutterapp/cart_app/page/explore.dart';
import 'package:flutterapp/cart_app/page/home.dart';
import 'package:flutterapp/cart_app/page/shop.dart';

void main() =>
    runApp(MaterialApp(
//        home: Home(),
    initialRoute: '/',
    routes: {
      '/': (context)=> Home(),
      '/date': (context)=> Home(),
      '/store': (context)=> StoreList(),
      '/cart': (context)=>Cart()
    },
        debugShowCheckedModeBanner: false));

class HomeTemp extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeTemp> {
  static const initialPage = 0;
  int activePage = initialPage;
  PageController _pageController = PageController(initialPage: initialPage);

  whenPageChanges(int page) {
    setState(() {
      activePage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int val) {
              print(val);
              _pageController.animateToPage(val,
                  duration: Duration(milliseconds: 420), curve: Curves.ease);
            },
            currentIndex: activePage,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_grocery_store), title: Text('Shop')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text('Explore')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer), title: Text('Savings')),
            ],
          ),
          body: PageView(
              children: <Widget>[
                Shop(),
                Explore(),
                Carousel(title: 'Page 3'),
              ],
              controller: _pageController,
              onPageChanged: whenPageChanges,
              physics: NeverScrollableScrollPhysics())),
    );
  }
}
