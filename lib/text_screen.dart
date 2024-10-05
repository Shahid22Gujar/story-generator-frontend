import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/text_time_period_screen.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class text_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_screen({super.key});

  @override
  State<text_screen> createState() {
    return _text_screenState();
  }
}

@NowaGenerated()
class _text_screenState extends State<text_screen> {
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
              top: 34,
              left: 23.5,
              height: 93,
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
              top: 162,
              left: 23.5,
              width: 342.5,
              height: 211,
              child: Text(
                'First, tell me what the genre of your story\nshould be, like \'romance\', \'thriler\', \n\'detective story\', \'love story\', \'science fiction\', \n\'future\', and so on.',
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(4282157982),
                  fontFamily: 'Abril Fatface',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 505,
              left: 87,
              height: 53,
              width: 213,
              child: CustomButton(
                onPressed: () {
                  story_input.of(context, listen: false).story_genre =
                      genre.text;
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
            ),
            Positioned(
              top: 388,
              left: 48,
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
