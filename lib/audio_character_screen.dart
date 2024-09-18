import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class audio_character_screen extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_character_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 115,
              left: 19,
              width: 352,
              height: 102,
              child: Text(
                'Ok, let\'s create with joy.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 592,
              left: 19,
              width: 352,
              height: 85,
              child: Text(
                'Next, let\'s define the characters for \nyour story.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(4278223488),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 677,
              left: -0.5,
              width: 391,
              height: 167,
              child: Text(
                'Who would uou like to be part of it? Like\n\'\'a man\', \'a woman\', \'a man like Tom\', \'two\nteenage girl\', \'a rabbit and a unicorn \nfeel free to choose.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(4278223488),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 267,
              left: 57,
              width: 269,
              height: 262,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(1000),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 19.27.41 - Create a modern icon representing audio output. The icon should be clean and minimalist, featuring elements such as a speaker or sound waves. Use a mo.png')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
