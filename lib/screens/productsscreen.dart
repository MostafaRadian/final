import 'package:finall/providers/productprovider.dart';
import 'package:finall/screens/detailsscreen.dart';
import 'package:finall/widgets/customwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Products"),
        ),
        body: Center(
          child: Consumer<ProductsProvider>(
            builder: (context, value, child) {
              var modelOfData = value.productsModel;
              if (modelOfData == null) {
                value.GetData();
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DatailsPage(
                                  product: DetailsProduct(
                                      image: modelOfData.products[index]
                                          ['image'],
                                      name: modelOfData.products[index]['name'],
                                      descreption: modelOfData.products[index]
                                          ['description']),
                                ),
                              ));
                        },
                        child: CustomeProduct(
                          name: modelOfData.products[index]['name'],
                          image: modelOfData.products[index]['image'],
                          price: modelOfData.products[index]['price'],
                        ));
                  },
                  itemCount: modelOfData.products.length,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class DetailsProduct {
  String image;
  String name;
  String descreption;
  DetailsProduct(
      {required this.image, required this.name, required this.descreption});
}
