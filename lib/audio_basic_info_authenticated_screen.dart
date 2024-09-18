import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/audio_time_period_authenticated_new_screen.dart';

@NowaGenerated({'auto-width': 450})
class audio_basic_info_authenticated_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_basic_info_authenticated_screen({super.key});

  @override
  State<audio_basic_info_authenticated_screen> createState() {
    return _audio_basic_info_authenticated_screenState();
  }
}

@NowaGenerated()
class _audio_basic_info_authenticated_screenState
    extends State<audio_basic_info_authenticated_screen> {
  TextEditingController genre_input = TextEditingController();

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
              left: 25,
              width: 400,
              height: 136,
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
              top: 204,
              left: 35.5,
              width: 379,
              height: 219,
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
              top: 423,
              left: 53,
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
                  )
                ],
              ),
            ),
            Positioned(
              top: 596,
              left: 120,
              height: 57,
              width: 210,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const audio_time_period_authenticated_new_screen()));
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
              top: 456,
              left: 87,
              width: 262,
              height: 40,
              child: TextFormField(
                controller: genre_input,
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
