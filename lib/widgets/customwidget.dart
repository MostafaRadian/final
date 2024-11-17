import 'package:finall/providers/productprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomeProduct extends StatelessWidget {
  final String image;
  final String name;
  final int price;
  CustomeProduct(
      {required this.name, required this.image, required this.price});
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ProductsProvider>(context);
    return Column(
      children: [
        CircleAvatar(
          child: Image.network(image),
        ),
        Text(name),
        Text(price.toString()),
      ],
    );
  }
}
