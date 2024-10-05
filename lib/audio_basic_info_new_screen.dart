import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/audio_time_period_new_screen2.dart';

@NowaGenerated({'auto-width': 414, 'auto-height': 825})
class audio_basic_info_new_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_basic_info_new_screen({super.key});

  @override
  State<audio_basic_info_new_screen> createState() {
    return _audio_basic_info_new_screenState();
  }
}

@NowaGenerated()
class _audio_basic_info_new_screenState
    extends State<audio_basic_info_new_screen> {
  TextEditingController audio_genre_input =
      TextEditingController(text: 'romantic');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 69,
              left: 0,
              width: 383,
              height: 81,
              child: Text(
                'Please provide some basic information,\nand we\'ll get started immediately.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 177,
              left: 0,
              width: 371,
              height: 225,
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
            ),
            Positioned(
              top: 552,
              left: 91.5,
              height: 57,
              width: 210,
              child: CustomButton(
                onPressed: () {
                  story_input.of(context, listen: false).story_genre =
                      audio_genre_input.text;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const audio_time_period_new_screen2()));
                },
                child: Text(
                  'Enter',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: const Color(4294967295),
                    backgroundColor: const Color(4278219392),
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 402,
              left: 35,
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
                      controller: audio_genre_input,
                    ),
                  ),
                  Positioned(
                    top: 29.5,
                    left: 31,
                    width: 282,
                    height: 45,
                    child: TextFormField(
                      controller: audio_genre_input,
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
