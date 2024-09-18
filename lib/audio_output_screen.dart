import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class audio_output_screen extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_output_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 113,
              left: 16,
              width: 358,
              height: 92,
              child: Text(
                'Ok, let\'s create with joy.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: const Color(4278219392),
                ),
              ),
            ),
            Positioned(
              top: 645,
              left: 0,
              width: 388,
              height: 111,
              child: Text(
                'Great, tjank you . Here we go. Listen to \nthe story created with Joy!',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 306,
              left: 55,
              width: 269,
              height: 278,
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
