import 'package:flutter/material.dart';
import 'package:flutter6_app/module/product_module.dart';

class ContainerImageWidget extends StatelessWidget {
  String img, nameImage; 
  Product prod;
  ContainerImageWidget(this.prod);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 200,
      height: 200,
      margin: EdgeInsets.all(20),
      padding:EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        backgroundBlendMode: BlendMode.darken ,
        image: DecorationImage(
          image:AssetImage(prod.image), 
          fit: BoxFit.cover
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 200,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          prod.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
      ),
    );
  }
}