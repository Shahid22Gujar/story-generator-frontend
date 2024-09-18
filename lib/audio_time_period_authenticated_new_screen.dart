import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/audio_character_authenticated_new_screen.dart';

@NowaGenerated()
class audio_time_period_authenticated_new_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_time_period_authenticated_new_screen({super.key});

  @override
  State<audio_time_period_authenticated_new_screen> createState() {
    return _audio_time_period_authenticated_new_screenState();
  }
}

@NowaGenerated()
class _audio_time_period_authenticated_new_screenState
    extends State<audio_time_period_authenticated_new_screen> {
  TextEditingController audio_time_period_input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 40,
              left: 23,
              width: 347,
              height: 154,
              child: Text(
                'Now, let\'s define the time period for your story.',
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
              top: 233,
              left: 6.5,
              width: 380,
              height: 201,
              child: Text(
                'When would you like it to take place?\nLike \'today\', \'near future\', \'medieval\ntimes\' ot name a specific year or a rime period.',
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
              top: 478,
              left: 24.5,
              width: 344,
              height: 104.5,
              child: Stack(
                fit: StackFit.expand,
                alignment: const Alignment(0, 0),
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    width: 344,
                    height: 104.5,
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
                            'Enter time_period',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
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
                  )
                ],
              ),
            ),
            Positioned(
              top: 613,
              left: 65,
              height: 57,
              width: 210,
              child: CustomButton(
                onPressed: () {
                  story_input.of(context, listen: false).time_period_input =
                      audio_time_period_input.text;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const audio_character_authenticated_new_screen()));
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
              top: 509,
              left: 51,
              width: 274,
              height: 35,
              child: TextFormField(
                controller: audio_time_period_input,
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
