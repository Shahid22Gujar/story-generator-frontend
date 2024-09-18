import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class mvp9a extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const mvp9a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 86,
              left: 18.5,
              width: 353,
              height: 130,
              child: Text(
                'Welcome back . It\'s a joy to see you \nPlease log in to ecperience even more \nyou with your stories.',
                style: const TextStyle(
                  fontFamily: 'Abril Fatface',
                  fontSize: 20,
                  color: Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 238,
              left: 108.5,
              height: 52,
              width: 173,
              child: CustomButton(
                onPressed: () {},
                child: const Text(
                  'e-mail',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Abril Fatface',
                    color: Color(4294967295),
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 319,
              left: 108.5,
              width: 173,
              height: 52,
              child: CustomButton(
                onPressed: () {},
                child: const Text(
                  'password',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontSize: 20,
                    color: Color(4294967295),
                    backgroundColor: Color(4278219392),
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 554,
              left: 117.5,
              width: 155,
              height: 150,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(155),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 20.00.36 - Create a simple round icon featuring the phrase \'Go\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text in a mod Kopie.png')),
                ),
              ),
            ),
            Positioned(
              top: 409,
              left: 128.5,
              width: 133.5,
              height: 26,
              child: Text(
                'forget password?',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: const Color(4278219392)),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
