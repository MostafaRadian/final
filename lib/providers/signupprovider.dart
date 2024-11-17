import 'package:finall/models/status.dart';
import 'package:finall/services/signupservice.dart';
import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  StatusModel? statusModel;
  AddData(String password, String email, String phone, String username) async {
    try {
      statusModel =
          await SignUpService.addData(email, password, phone, username);
      notifyListeners();
    } catch (e) {
      throw Exception("The Error is $e");
    }
  }
}
