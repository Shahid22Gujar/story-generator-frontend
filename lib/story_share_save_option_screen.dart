import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class story_share_save_option_screen extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const story_share_save_option_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 80,
              left: 41,
              width: 295,
              height: 86,
              child: Text(
                'Thanks you for sharing\n\'Stories with Joy\'',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 166,
              left: 163.5,
              width: 63,
              height: 63,
              child: Icon(
                IconData(61508, fontFamily: 'MaterialIcons'),
                color: Color(4278190080),
                size: 100,
              ),
            ),
            Positioned(
              top: 274,
              left: 41,
              width: 299,
              height: 404,
              child: Material(
                child: Stack(
                  fit: StackFit.expand,
                  alignment: const Alignment(0, 0),
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      width: 299,
                      height: 135,
                      child: Text(
                        '\nJoy created a great stroy especially for \nme.Exactly how I like it.\n"Harry and the murder"\nCreate your story with joy. It\'s \nawesome and it\'s free!',
                        style: TextStyle(
                          shadows: [const Shadow(offset: Offset(0, 0))],
                          fontFamily: 'Fraunces',
                          fontWeight: FontWeight.w100,
                          fontSize: 15,
                          color: const Color(4291677131),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(4278219392), width: 3),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Positioned(
              top: 709,
              left: 41,
              width: 96,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 20.06.46 - Create a simple round icon featuring the phrase \'New Story\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text i.png')),
                ),
              ),
            ),
            Positioned(
              top: 709,
              left: 163.5,
              width: 86.5,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 20.28.53 - Create a simple round icon featuring the word \'Share\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text in a mo.png')),
                ),
              ),
            ),
            Positioned(
              top: 709,
              left: 290,
              width: 75,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 19.56.38 - Create a simple round icon featuring the phrase \'Save it\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text in .png')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
