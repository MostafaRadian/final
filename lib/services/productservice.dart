import 'package:dio/dio.dart';
import 'package:finall/models/productmodel.dart';

class ProductsService {
  static Dio dio = Dio();
  static Future<ProductsModel> getData() async {
    try {
      Response response =
          await dio.get('https://student.valuxapps.com/api/home');
      if (response.statusCode == 200) {
        return ProductsModel.fromjson(response.data);
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception("The Error Is $e");
    }
  }
}
