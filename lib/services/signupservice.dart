import 'package:dio/dio.dart';
import 'package:finall/models/status.dart';

class SignUpService {
  static Dio dio = Dio();
  static Future<StatusModel> addData(
      String name, String phone, String email, String password) async {
    try {
      Response response =
          await dio.post('https://student.valuxapps.com/api/register', data: {
        "name": name,
        "phone": phone,
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
