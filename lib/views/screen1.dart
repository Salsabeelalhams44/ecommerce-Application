import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter6_app/data/product_data.dart';
import 'package:flutter6_app/module/product_module.dart';
import 'package:flutter6_app/widget/product_box.dart';
import 'package:flutter6_app/widget/sliderWidget.dart';
class Screen1 extends StatelessWidget {
  Product products;
  Function func;
  Screen1(this.func);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderWidget(),
            SizedBox(height: 20),
            Text(
              'PRODUCTS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            SizedBox(height: 20),
            SingleChildScrollView(
              child: Column(
                children: productsList.map((e) {
                 return  ProductBoxWidget(e, func);
                }).toList(),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
