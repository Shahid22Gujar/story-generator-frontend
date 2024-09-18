import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/text_writing_style_authenticated_screen.dart';

@NowaGenerated({'auto-width': 393, 'auto-height': 808})
class text_character_authenticate_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_character_authenticate_screen({super.key});

  @override
  State<text_character_authenticate_screen> createState() {
    return _text_character_authenticate_screenState();
  }
}

@NowaGenerated()
class _text_character_authenticate_screenState
    extends State<text_character_authenticate_screen> {
  TextEditingController character_authenticated_input = TextEditingController();

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
              left: 1.5,
              width: 390,
              height: 80,
              child: Text(
                'Next, let\'s define the charters for your story.',
                style: TextStyle(
                  fontSize: 21,
                  color: const Color(4278219392),
                  fontFamily: 'Abril Fatface',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 144,
              left: 17,
              width: 359,
              height: 93,
              child: Text(
                'Who would you like to be part of it?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(4278219392),
                  fontFamily: 'Abril Fatface',
                ),
              ),
            ),
            Positioned(
              top: 267,
              left: 49,
              width: 343.5,
              height: 115.5,
              child: Stack(
                fit: StackFit.expand,
                alignment: const Alignment(0, 0),
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    width: 130,
                    height: 29,
                    child: Text(
                      'Enter character',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 29,
                    left: 0,
                    width: 267,
                    height: 37,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(4291085508),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: const Color(4282157982), width: 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 285,
              left: 70,
              width: 228.5,
              height: 55,
              child: TextFormField(
                controller: character_authenticated_input,
              ),
            ),
            Positioned(
              top: 382.5,
              left: 64,
              height: 43,
              width: 210,
              child: CustomButton(
                onPressed: () {
                  story_input.of(context, listen: false).character_input =
                      character_authenticated_input.text;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const text_writing_style_authenticated_screen()));
                },
                child: const Text(
                  'Enter',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontSize: 20,
                    color: Color(4294967295),
                  ),
                ),
                color: const Color(4278219392),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
