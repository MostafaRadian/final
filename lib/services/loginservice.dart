import 'package:dio/dio.dart';
import 'package:finall/models/status.dart';

class SignInService {
  static Dio dio = Dio();
  static Future<StatusModel> addData(String email, String password) async {
    try {
      Response response =
          await dio.post('https://student.valuxapps.com/api/login', data: {
        "email": email,
        "password": password,
      });
      if (response.statusCode == 200) {
        return StatusModel.fromjson(response.data);
      } else {
        throw Exception("Server Error");
      }
    } catch (e) {
      throw Exception("The Error Is $e");
    }
  }
}
