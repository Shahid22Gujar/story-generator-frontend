import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/text_time_period_authenticate_screen.dart';

@NowaGenerated({'auto-width': 393, 'auto-height': 808})
class text_screen_authenticated_screen extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_screen_authenticated_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 29,
              left: 25,
              height: 128,
              width: 343,
              child: Text(
                'I will create a story tailored for you, bringing joy to the creation',
                style: const TextStyle(
                  fontFamily: 'Abril Fatface',
                  color: Color(4282157982),
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 192,
              left: 27,
              width: 366,
              height: 96,
              child: Text(
                'Simply provide some basic information and we\'ll get starteed immedieately',
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(4282157982),
                  fontFamily: 'Abril Fatface',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 332,
              left: 49.5,
              width: 293.5,
              height: 80,
              child: Text(
                'First, let\'s choose the genre for your story.',
                style: const TextStyle(
                  fontFamily: 'Abril Fatface',
                  fontSize: 20,
                  color: Color(4282157982),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 456,
              left: 90,
              height: 58,
              width: 213,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const text_time_period_authenticate_screen()));
                },
                child: Text(
                  'Choose Genre',
                  style: const TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontSize: 25,
                    color: Color(4294967295),
                    backgroundColor: Color(4282157982),
                  ),
                  textAlign: TextAlign.center,
                ),
                color: const Color(4282157982),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
