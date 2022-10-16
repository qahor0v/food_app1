import 'package:flutter/material.dart';
import 'package:food_app1/pages/auth_pages/sign_in.dart';
import 'package:food_app1/pages/auth_pages/sign_up.dart';
import 'package:food_app1/pages/home_page.dart';
import 'package:food_app1/pages/searching_pages/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
      routes: {
        SignIn.id: (context) => const SignIn(),
        SignUp.id: (context) => const SignUp(),
        SearchPage.id: (context) => const SearchPage(),
      },
    );
  }
}
