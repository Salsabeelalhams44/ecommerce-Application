import 'package:flutter/material.dart';
import 'package:flutter6_app/module/product_module.dart';

class ProductBoxWidget extends StatelessWidget {
  Product produc;
  Function func;
  ProductBoxWidget(this.produc, this.func);
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
           color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
         
          margin: EdgeInsets.all(15),
          child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(produc.image),
              ),
              title:Text(produc.name),
              subtitle: Text(produc.price.toString()),
              trailing: IconButton(
                onPressed: (){
                  func(produc);
                  
                },
                icon: Icon(
                  Icons.favorite,
                  color: produc.isFavourite? Colors.red: Colors.grey,

                  ),
              ),
            ),
        ),
      ],
    );
  }
}