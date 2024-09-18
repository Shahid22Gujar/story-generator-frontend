import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class One1 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const One1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 37,
              left: 64.5,
              width: 261,
              height: 252,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 18.41.10 - Create a modern logo for \'Stories with Joy\' featuring the letters \'JOY\'. The logo should include a stylized, geometric representation of a feather qui.jpg')),
                ),
              ),
            ),
            Positioned(
              left: 13,
              height: 71,
              width: 377,
              top: 289,
              child: Text(
                'Hello, I am Joy.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                  color: const Color(4278219392),
                  fontFamily: 'ADLaM Display',
                ),
                textAlign: TextAlign.justify,
                textDirection: TextDirection.ltr,
              ),
            ),
            Positioned(
              top: 382,
              left: 0,
              height: 148,
              width: 390,
              child: Text(
                'Let\'s create a story with joy !',
                style: TextStyle(
                  fontSize: 37,
                  fontFamily: 'Architects Daughter',
                  color: const Color(4278219392),
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 79,
              left: 38,
              height: 40,
            ),
            const Positioned(
              top: 97,
              left: 367,
              height: 40,
            ),
            const Positioned(
              top: 0,
              left: 0,
              width: 390,
              height: 844,
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
