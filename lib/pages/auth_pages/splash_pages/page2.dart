import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.amberAccent.shade400,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Lottie.asset(
                "assets/lotties/food11.json",
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              //color: Colors.red,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: Text(
                      "O'zbek va jahon oshxonasi".toUpperCase(),
                      maxLines: 3,
                      textScaleFactor: 1,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.farro(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Text(
                    "Dasturimizda o'zbek milliy oshxonasidagi va jahon oshxonasining eng mazali taomlarini tayyorlash retseptlari ham o'rin olgan. Eng muhimi siz bu taomlar va pishiriqlarni uy sharoitida be'malol tayyorlashingiz mumkin bo'ladi. Xullas, biz bilan oshxonada zerikib qolmaysiz",
                    style: GoogleFonts.actor(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
