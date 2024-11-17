import 'package:finall/models/status.dart';
import 'package:finall/services/loginservice.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  StatusModel? statusModel;
  Future<bool> AddData(String password, String email) async {
    try {
      statusModel = await SignInService.addData(email, password);
      notifyListeners();
      return true;
    } catch (e) {
      throw Exception("The Error is $e");
    }
  }
}
