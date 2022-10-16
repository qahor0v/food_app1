import 'package:flutter/material.dart';
import 'package:food_app1/pages/auth_pages/sign_up.dart';
import 'package:food_app1/pages/auth_pages/splash_pages/page1.dart';
import 'package:food_app1/pages/auth_pages/splash_pages/page2.dart';
import 'package:food_app1/pages/auth_pages/splash_pages/page3.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (i) {
          setState(() {
            index = i;
          });
        },
        controller: controller,
        children: const [
          Splash1(),
          Splash2(),
          Splash3(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.only(left: 8, right: 8),
        // color: Colors.red,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            index != 0
                ? GestureDetector(
                    child: const Icon(Icons.arrow_back_ios_new),
                    onTap: () {
                      if (index == 1) {
                        controller.jumpToPage(0);
                      } else {
                        controller.jumpToPage(1);
                      }
                    },
                  )
                : const SizedBox.shrink(),
            Text(
              "${index + 1}/3",
              style: GoogleFonts.farro(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            index != 2
                ? GestureDetector(
                    child: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      if (index == 1) {
                        controller.jumpToPage(2);
                      } else {
                        controller.jumpToPage(1);
                      }
                    },
                  )
                : GestureDetector(
                    child: Text(
                      "BOSHLASH",
                      style: GoogleFonts.farro(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, SignUp.id);
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
