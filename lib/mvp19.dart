import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class mvp19 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const mvp19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 116,
              left: 70.5,
              child: Text(
                'Change account data',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: const Color(4278219392),
                ),
              ),
            ),
            Positioned(
              top: 186,
              left: 92.5,
              height: 42,
              width: 204.950927734375,
              child: CustomButton(
                onPressed: () {},
                child: Text(
                  'name',
                  style: TextStyle(
                    fontFamily: 'Fraunces',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: const Color(4294967295),
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 262,
              left: 92.5,
              height: 40,
              width: 202.5,
              child: CustomButton(
                onPressed: () {},
                child: Text(
                  'e-mail',
                  style: TextStyle(
                    fontFamily: 'Fraunces',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: const Color(4294967295),
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 330,
              left: 92.5,
              height: 43,
              width: 204.5,
              child: CustomButton(
                onPressed: () {},
                child: Text(
                  'repeat e-mail',
                  style: TextStyle(
                    fontFamily: 'Fraunces',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: const Color(4294967295),
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 401.5,
              left: 91,
              height: 41,
              width: 207.5,
              child: CustomButton(
                onPressed: () {},
                child: Text(
                  'password',
                  style: TextStyle(
                    fontFamily: 'Fraunces',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: const Color(4294967295),
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 507,
              left: 126,
              width: 138,
              height: 137,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffc4c4c4),
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/DALL·E 2024-07-10 20.00.36 - Create a simple round icon featuring the phrase \'Go\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text in a mod Kopie.png')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
