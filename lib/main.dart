import 'package:finall/providers/loginprovider.dart';
import 'package:finall/providers/productprovider.dart';
import 'package:finall/providers/signupprovider.dart';
import 'package:finall/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductsProvider(),
        )
      ],
      child: MaterialApp(
        home: SignUpScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
