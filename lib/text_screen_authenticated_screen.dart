import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/text_time_period_authenticate_screen.dart';

@NowaGenerated({'auto-width': 393, 'auto-height': 808})
class text_screen_authenticated_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_screen_authenticated_screen({super.key});

  @override
  State<text_screen_authenticated_screen> createState() {
    return _text_screen_authenticated_screenState();
  }
}

@NowaGenerated()
class _text_screen_authenticated_screenState
    extends State<text_screen_authenticated_screen> {
  TextEditingController genre = TextEditingController(text: 'romance');

  TextEditingController text = TextEditingController();

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
                style: TextStyle(
                  fontFamily: 'Abril Fatface',
                  color: const Color(4282157982),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 552,
              left: 90,
              height: 50,
              width: 213,
              child: CustomButton(
                onPressed: () {
                  story_input.of(context, listen: false).story_genre =
                      genre.text;
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
            ),
            Positioned(
              top: 438,
              left: 49,
              width: 344,
              height: 104,
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
                      'Enter genre',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 29,
                    left: 0,
                    width: 316,
                    height: 45,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(4291085508),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: const Color(4282157982), width: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 493,
                    left: 68,
                    width: 259,
                    height: 41,
                    child: TextFormField(
                      controller: text,
                    ),
                  ),
                  Positioned(
                    top: 29.5,
                    left: 31,
                    width: 282,
                    height: 45,
                    child: TextFormField(
                      controller: genre,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 189,
              left: 21,
              width: 350.5,
              height: 202,
              child: Text(
                'First, tell me what the genre of your story\nshould be, like \'romance\', \'thriler\', \n\'detective story\', \'love story\', \'science fiction\', \n\'future\', and so on.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
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
