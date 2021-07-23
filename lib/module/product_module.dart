import 'package:flutter/cupertino.dart';

class Product{
  @required String name , image ;
 @required double price ;
  bool isFavourite ;
  Product({this.name, this.image, this.price, this.isFavourite});
}