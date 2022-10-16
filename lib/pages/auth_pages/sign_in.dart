import 'package:flutter/material.dart';
import 'package:food_app1/pages/auth_pages/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SignIn extends StatefulWidget {
  static const String id = "SJCUDH";
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isshow = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: Lottie.asset(
                  "assets/lotties/food1.json",
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: 16,
                ),
                child: Text(
                  "Akkauntga Kirish".toUpperCase(),
                  style: GoogleFonts.lacquer(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 4,
                  right: 8,
                ),
                margin: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 12,
                  bottom: 6,
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black38,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: TextField(
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                    controller: emailController,
                    cursorColor: Colors.green.shade900,
                    cursorHeight: 25,
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 4,
                  right: 8,
                ),
                margin: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 12,
                  bottom: 6,
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black38,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: TextField(
                    obscureText: isshow,
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                    controller: passwordController,
                    cursorColor: Colors.green.shade900,
                    cursorHeight: 25,
                    decoration: InputDecoration(
                      hintText: "Parol",
                      border: InputBorder.none,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isshow = !isshow;
                          });
                        },
                        icon: Icon(
                          isshow ? Icons.visibility : Icons.visibility_off,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 120,
                  right: 120,
                  top: 12,
                ),
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 8,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "KIRISH",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Akkuntingiz yo'qmi?",
                        style: GoogleFonts.arsenal(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, SignUp.id);
                        },
                        child: const Text(
                          "Ro'yhatdan o'tish",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
