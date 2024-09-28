import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/text_writing_style_screen.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class text_character_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_character_screen({super.key});

  @override
  State<text_character_screen> createState() {
    return _text_character_screenState();
  }
}

@NowaGenerated()
class _text_character_screenState extends State<text_character_screen> {
  TextEditingController character_text_input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 68,
              left: 0,
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
              left: 22.5,
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
              top: 371,
              left: 90,
              height: 43,
              width: 210,
              child: CustomButton(
                onPressed: () {
                  story_input.of(context, listen: false).character_input =
                      character_text_input.text;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const text_writing_style_screen()));
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
            ),
            Positioned(
              top: 237,
              left: 46,
              width: 343.5,
              height: 110,
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
              top: 263,
              left: 70,
              width: 230,
              height: 39,
              child: TextFormField(
                controller: character_text_input,
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
