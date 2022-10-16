import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

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
              padding: const EdgeInsets.all(10),
              child: Lottie.asset(
                "assets/lotties/yt.json",
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
                      "Sodda va qulay interfeys".toUpperCase(),
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
                    "Mobil ilovamiz foydalanuvchilari uchun ajoyib dizayn, qulay va sodda interfeys. Istalgan payt istalgan taomingizni tayyorlash uchun yordam beramiz. Hech qnaday reklamalarsiz, bepul va sifatli videolar, qo'llanmalar. Biz bilan oshxonada qiynalib qolmaysiz!",
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
