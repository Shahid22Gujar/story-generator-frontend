import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 348, 'auto-height': 819})
class mvp9 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const mvp9({super.key});

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
              left: 6,
              width: 378,
              height: 123,
              child: Text(
                'Hey, I am glad you like stories with joy.\nLet\'s continue after you created an \naccount',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color(4278219392),
                  fontFamily: 'Abril Fatface',
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 215,
              left: 88.5,
              height: 48,
              width: 213,
              child: CustomButton(
                onPressed: () {},
                child: const Text(
                  'name',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    color: Color(4294967295),
                    fontSize: 15,
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 287,
              left: 88,
              height: 46,
              width: 213.5,
              child: CustomButton(
                onPressed: () {},
                child: const Text(
                  'e-mail',
                  style: TextStyle(fontSize: 15, color: Color(4294967295)),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 362,
              left: 88.5,
              width: 212.5,
              height: 47,
              child: CustomButton(
                onPressed: () {},
                child: const Text(
                  'repeat e-mail',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontSize: 15,
                    color: Color(4294967295),
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 436,
              left: 88,
              width: 213.5,
              height: 52,
              child: CustomButton(
                onPressed: () {},
                child: const Text(
                  'password',
                  style: TextStyle(fontSize: 15, color: Color(4294967295)),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 540,
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
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
