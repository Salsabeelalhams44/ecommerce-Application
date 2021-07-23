import 'package:flutter/material.dart';
import 'package:flutter6_app/data/product_data.dart';

import 'container_image.dart';

class SliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: productsList.map((e) {
          return ContainerImageWidget(e);
        }).toList(),
      ),
    );
  }
}