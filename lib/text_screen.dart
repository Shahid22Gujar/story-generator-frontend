import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/text_time_period_screen.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class text_screen extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 34,
              left: 23.5,
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
              top: 130,
              left: 24,
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
              top: 226,
              left: 48,
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
              top: 336,
              left: 87,
              height: 58,
              width: 213,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const text_time_period_screen()));
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
      appBar: AppBar(
        title: const Text(
          'Back',
          style: TextStyle(),
        ),
        backgroundColor: const Color(4294967295),
      ),
    );
  }
}
