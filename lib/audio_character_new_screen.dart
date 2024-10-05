import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/audio_writing_style_new_screen.dart';

@NowaGenerated({'auto-width': 452, 'auto-height': 808})
class audio_character_new_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_character_new_screen({super.key});

  @override
  State<audio_character_new_screen> createState() {
    return _audio_character_new_screenState();
  }
}

@NowaGenerated()
class _audio_character_new_screenState
    extends State<audio_character_new_screen> {
  TextEditingController audio_character_input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 54,
              left: 25,
              width: 373,
              height: 72,
              child: Text(
                'Next, let\'s define the characters for \nyour story.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(4278223488),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 160,
              left: 41.25,
              width: 304.5,
              height: 176,
              child: Text(
                'Who would uou like to be part of it? Like\n\'\'a man\', \'a woman\', \'a man like Tom\', \'two\nteenage girl\', \'a rabbit and a unicorn \nfeel free to choose.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(4278223488),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 358,
              left: 54,
              width: 344,
              height: 100,
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
                      'Enter  character',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 29,
                    left: 0,
                    width: 316,
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
              top: 391,
              left: 76,
              width: 257,
              height: 32,
              child: TextFormField(
                controller: audio_character_input,
              ),
            ),
            Positioned(
              top: 471,
              left: 121,
              height: 57,
              width: 210,
              child: CustomButton(
                onPressed: () {
                  story_input.of(context, listen: false).character_input =
                      audio_character_input.text;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const audio_writing_style_new_screen()));
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
