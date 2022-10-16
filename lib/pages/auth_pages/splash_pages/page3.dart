import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

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
              padding: const EdgeInsets.all(20),
              child: Lottie.asset(
                "assets/lotties/fod3.json",
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
                      "Foydali retsept".toUpperCase(),
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
                    "So'nggi yillardagi uchraydigan kasalliklarning aksariyati noto'g'ri ovqatlanish tufayli yuzaga kelishi barchamizga sir emas. Shu sababli ham biz ilovamizda foydali tarkibga ega bo'lgan hamda parhez uchun mo'ljallangan taomlarni va salatlarni ham jamladik. Marhamat, ro'yxatdan o'ting va o'z oshxonagizning qiroli(chasi)ga aylaning!",
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
