import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 860})
class audio_output_feedback_screen extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_output_feedback_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 92,
              left: -20,
              width: 430,
              height: 95,
              child: Text(
                'Story headline ...',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 607,
              left: 32,
              width: 326,
              height: 78,
              child: Text(
                'Just tell me if you like it or not.\nSay \'like it\' or \'please redo\'.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: const Color(4278219392),
                ),
              ),
            ),
            Positioned(
              top: 289.5,
              left: 52.5,
              width: 285,
              height: 281,
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
