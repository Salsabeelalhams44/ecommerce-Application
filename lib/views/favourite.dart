import 'package:flutter/material.dart';
import 'package:flutter6_app/data/product_data.dart';
import 'package:flutter6_app/module/product_module.dart';
import 'package:flutter6_app/widget/product_box.dart';

class FavouritePage extends StatelessWidget {
  Function func;
  FavouritePage(this.func);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
                  child: Column(
                    children: productsList.where((element) => element.isFavourite).map((e) {
                     return  ProductBoxWidget(e, func);
                    }).toList(),
                  ),
                ),
                
              
            ),
    );
        
    
  }
}