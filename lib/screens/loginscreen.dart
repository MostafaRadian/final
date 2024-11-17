import 'package:finall/providers/loginprovider.dart';
import 'package:finall/screens/productsscreen.dart';
import 'package:finall/screens/signupscreen.dart';
import 'package:finall/widgets/textform.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Consumer<LoginProvider>(
          builder: (context, value, child) {
            return Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  CustomeTextForm(
                    controler: email,
                    hintText: "Email",
                    icon: Icon(Icons.email),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomeTextForm(
                    controler: password,
                    hintText: "Password",
                    icon: Icon(Icons.password),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      value.AddData(password.text, email.text);
                    },
                    child: Text("Sign Up"),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductsScreen(),
                            ));
                      },
                      child: Text("Home Page")),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                      },
                      child: Text("Sign Up")),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
