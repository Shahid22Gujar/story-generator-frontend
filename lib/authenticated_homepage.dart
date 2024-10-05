import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/audio_basic_info_authenticated_screen.dart';
import 'package:mvp/text_screen_authenticated_screen.dart';
import 'package:mvp/my_stories_generated_screen.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class authenticated_homepage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const authenticated_homepage({super.key});

  @override
  State<authenticated_homepage> createState() {
    return _authenticated_homepageState();
  }
}

@NowaGenerated()
class _authenticated_homepageState extends State<authenticated_homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 242,
              left: 39,
              width: 391,
              height: 83,
              child: Text(
                'Hello, I am Joy.',
                style: TextStyle(
                  fontSize: 45,
                  color: const Color(4282157982),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Abril Fatface',
                ),
              ),
            ),
            Positioned(
              top: 310,
              left: 0,
              width: 390,
              height: 111,
              child: Text(
                'Let\'s create a story with joy !',
                style: const TextStyle(
                  fontFamily: 'Architects Daughter',
                  fontSize: 35,
                  color: Color(4282157982),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 445,
              left: 96,
              width: 198,
              height: 66,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const audio_basic_info_authenticated_screen()));
                },
                child: const Text(
                  'Audio',
                  style: TextStyle(
                    color: Color(4294967295),
                    backgroundColor: Color(4282157982),
                    fontFamily: 'Abril Fatface',
                    fontSize: 25,
                  ),
                ),
                color: const Color(4282157982),
              ),
            ),
            Positioned(
              top: 531,
              left: 96,
              height: 55,
              width: 198,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const text_screen_authenticated_screen()));
                },
                child: const Text(
                  'Text',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontSize: 25,
                    color: Color(4294967295),
                    backgroundColor: Color(4282157982),
                  ),
                ),
                color: const Color(4282157982),
              ),
            ),
            Positioned(
              top: 614,
              left: 96,
              height: 61,
              width: 198,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const my_stories_generated_screen()));
                },
                child: const Text(
                  'My stories',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontSize: 25,
                    color: Color(4294967295),
                    backgroundColor: Color(4282157982),
                  ),
                ),
                color: const Color(4282157982),
              ),
            ),
            Positioned(
              top: 52,
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
      appBar: AppBar(
        title: const Text(
          'Back',
          style: TextStyle(),
        ),
        actions: [],
      ),
    );
  }
}
