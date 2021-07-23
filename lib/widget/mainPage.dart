import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter6_app/data/product_data.dart';
import 'package:flutter6_app/module/product_module.dart';
import 'package:flutter6_app/views/favourite.dart';
import 'package:flutter6_app/views/screen1.dart';
import 'package:flutter6_app/widget/product_box.dart';
import 'package:flutter6_app/widget/sliderWidget.dart';
class MainPage extends StatefulWidget {
  Product products;
  MainPage({this.products});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  toggleProduct(Product product){
    setState(() {
      int index= productsList.indexOf(product);
      productsList[index].isFavourite= !productsList[index].isFavourite;               
   });
    
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu),
          title: Text('Ecomerce App'),
          centerTitle: true,
          actions: [
            Icon(Icons.search),
            SizedBox(width: 15),
            Icon(Icons.notifications),
            SizedBox(width: 15),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                child: Text('Home'),
              ),
              Tab(
                icon: Icon(Icons.favorite),
                child: Text('Favourite'),
              ),
            ]),
        ),
        body: TabBarView(
          children: [Screen1(toggleProduct),FavouritePage(toggleProduct) ]
          ),
      ),
    );
  }
}
