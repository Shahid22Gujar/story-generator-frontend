import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/api/BackendCollection.api.dart';
import 'package:mvp/login_response.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/story_output.dart';
import 'package:mvp/text_output_screen.dart';

@NowaGenerated({'auto-width': 393, 'auto-height': 808})
class text_writing_style_authenticated_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_writing_style_authenticated_screen({super.key});

  @override
  State<text_writing_style_authenticated_screen> createState() {
    return _text_writing_style_authenticated_screenState();
  }
}

@NowaGenerated()
class _text_writing_style_authenticated_screenState
    extends State<text_writing_style_authenticated_screen> {
  TextEditingController writing_style_authenticated_input =
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
              top: 48,
              left: 24.5,
              width: 344,
              height: 126,
              child: Text(
                'Finally, let\'s define the writing style Is there a famous writer whose style you\'d like your story to emulate?',
                style: const TextStyle(
                  fontFamily: 'Abril Fatface',
                  color: Color(4278219392),
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 211,
              left: 24.5,
              width: 344,
              height: 109,
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
                      'Enter writing style',
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
              top: 246,
              left: 44,
              width: 273,
              height: 31,
              child: TextFormField(
                controller: writing_style_authenticated_input,
              ),
            ),
            Positioned(
              top: 375.5,
              left: 91.5,
              height: 57,
              width: 210,
              child: CustomButton(
                onPressed: () {
                  BackendCollection()
                      .CreateStoriesByLoggedInUser(
                    jwt_api_token:
                        login_response.of(context, listen: false).access_token,
                    time_period: story_input
                        .of(context, listen: false)
                        .time_period_input,
                    character:
                        story_input.of(context, listen: false).character_input,
                    writing_style: writing_style_authenticated_input.text,
                  )
                      .then((value) {
                    story_output.of(context, listen: false).story_text_output =
                        '${value?.storyText}';
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const text_output_screen()));
                  }, onError: (error) {
                    print('error: ${error}');
                  });
                },
                child: Text(
                  'Generate Story',
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
    );
  }
}
