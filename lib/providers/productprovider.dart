import 'package:finall/models/productmodel.dart';
import 'package:finall/services/productservice.dart';
import 'package:flutter/cupertino.dart';

class ProductsProvider extends ChangeNotifier {
  ProductsModel? productsModel;
  GetData() async {
    productsModel = await ProductsService.getData();
    notifyListeners();
  }
}
