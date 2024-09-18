import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/audio_basic_info_new_screen.dart';
import 'package:mvp/text_screen.dart';
import 'package:mvp/login.dart';
import 'package:mvp/sign_up.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class homepage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const homepage({super.key});

  @override
  State<homepage> createState() {
    return _homepageState();
  }
}

@NowaGenerated()
class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 277,
              left: 39,
              width: 391,
              height: 83,
              child: Text(
                'Hello, I am Joy.',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 45,
                  color: const Color(4282157982),
                  fontFamily: 'Abril Fatface',
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Positioned(
              top: 334,
              left: 0,
              width: 390,
              height: 111,
              child: Text(
                'Let\'s create a story with joy !',
                style: const TextStyle(
                  fontFamily: 'Architects Daughter',
                  fontSize: 35,
                  color: Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 461,
              left: 96,
              width: 198,
              height: 66,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const audio_basic_info_new_screen()));
                },
                child: const Text(
                  'Audio',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    color: Color(4294967295),
                    backgroundColor: Color(4282157982),
                    fontSize: 25,
                  ),
                ),
                color: const Color(4282157982),
              ),
            ),
            Positioned(
              top: 560,
              left: 96,
              height: 55,
              width: 198,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const text_screen()));
                },
                child: Text(
                  'Text',
                  style: const TextStyle(
                    fontSize: 25,
                    color: Color(4294967295),
                    backgroundColor: Color(4282157982),
                    fontFamily: 'Abril Fatface',
                  ),
                  textAlign: TextAlign.center,
                ),
                color: const Color(4282157982),
              ),
            ),
            Positioned(
              top: 740,
              left: 96,
              height: 61,
              width: 198,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const login()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontSize: 25,
                    color: Color(4294967295),
                    backgroundColor: Color(4282157982),
                  ),
                ),
                color: const Color(4282157982),
                onLongPress: () {},
              ),
            ),
            Positioned(
              top: 645,
              left: 93.5,
              width: 203,
              height: 60,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const sign_up()));
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Color(4294967295),
                    fontSize: 25,
                    fontFamily: 'Abril Fatface',
                  ),
                ),
                color: const Color(4282157982),
              ),
            ),
            Positioned(
              top: 78,
              left: 116,
              width: 158,
              height: 168,
              child: Image(
                image: const AssetImage('assets/pasted_image_a3-Wp1.png'),
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
