import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/text_character_authenticate_screen.dart';

@NowaGenerated({'auto-width': 393, 'auto-height': 808})
class text_time_period_authenticate_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_time_period_authenticate_screen({super.key});

  @override
  State<text_time_period_authenticate_screen> createState() {
    return _text_time_period_authenticate_screenState();
  }
}

@NowaGenerated()
class _text_time_period_authenticate_screenState
    extends State<text_time_period_authenticate_screen> {
  TextEditingController time_period_authenticated_input =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 30,
              left: 48,
              width: 306,
              height: 76,
              child: Text(
                'Now, let\'s define the time period for your story.',
                style: TextStyle(
                  fontFamily: 'Abril Fatface',
                  fontSize: 20,
                  color: const Color(4278219392),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 359,
              left: 53.5,
              width: 315.5,
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
                      'Enter time period',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 29,
                    left: 0,
                    width: 272,
                    height: 38,
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
              top: 479.5,
              left: 85.5,
              height: 43,
              width: 210,
              child: CustomButton(
                onPressed: () {
                  story_input.of(context, listen: false).time_period_input =
                      time_period_authenticated_input.text;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const text_character_authenticate_screen()));
                },
                child: const Text(
                  'Enter',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(4294967295),
                    backgroundColor: Color(4278219392),
                  ),
                ),
                onLongPress: () {},
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 377,
              left: 68,
              width: 233.5,
              height: 67,
              child: TextFormField(
                controller: time_period_authenticated_input,
              ),
            ),
            Positioned(
              top: 135,
              left: 39,
              width: 315,
              height: 181,
              child: Text(
                'When would you like it to take place?\nLike \'today\', \'near future\', \'medieval\ntimes\' ot name a specific year or a time period.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
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
