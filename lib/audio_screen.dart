import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class audio_screen extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 238,
              left: 62.5,
              width: 265,
              height: 269,
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
            ),
            Positioned(
              top: 543,
              left: 18,
              width: 354,
              height: 165,
              child: Text(
                'I will create your story with joy \nand  will ask you chapter by \nchapter if you like it or not.\n\n',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 708,
              left: 9,
              width: 372,
              height: 88,
              child: Text(
                'Just say \'like it\' or \'please redo\'\nafter any chapter.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 91,
              left: 40,
              width: 310,
              height: 111,
              child: Text(
                'Ok,let\'s talk',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  color: const Color(4278219392),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
