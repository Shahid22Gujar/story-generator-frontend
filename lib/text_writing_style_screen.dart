import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/api/BackendCollection.api.dart';
import 'package:mvp/story_output.dart';
import 'package:mvp/text_output_screen.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class text_writing_style_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_writing_style_screen({super.key});

  @override
  State<text_writing_style_screen> createState() {
    return _text_writing_style_screenState();
  }
}

@NowaGenerated()
class _text_writing_style_screenState extends State<text_writing_style_screen> {
  TextEditingController writing_style_text_input = TextEditingController();

  bool? story_loader = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 75,
              left: 23,
              width: 344,
              height: 243,
              child: Text(
                'Finally, let\'s define the writing style.\nIs there a famous writer whose style\nyou\'d like your story to emulate? Choose \nfreely your favourite author, just name him \not them. Like Sonnet\n',
                style: const TextStyle(
                  fontFamily: 'Abril Fatface',
                  color: Color(4278219392),
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 505,
              left: 45,
              height: 57,
              width: 251,
              child: CustomButton(
                onPressed: () {
                  story_loader = true;
                  setState(() {});
                  story_input.of(context, listen: false).writing_style_input =
                      writing_style_text_input.text;
                  BackendCollection()
                      .CreateStoriesByGuestUser(
                    writing_style: writing_style_text_input.text,
                    time_period: story_input
                        .of(context, listen: false)
                        .time_period_input,
                    character:
                        story_input.of(context, listen: false).character_input,
                    story_genre:
                        story_input.of(context, listen: false).story_genre,
                  )
                      .then((value) {
                    story_loader = false;
                    setState(() {});
                    story_output.of(context, listen: false).story_text_output =
                        '${value?.storyText}';
                    story_output.of(context, listen: false).story_id =
                        value?.id;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const text_output_screen()));
                  }, onError: (error) {
                    print('error: ${error}');
                    story_loader = false;
                    setState(() {});
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
            ),
            Positioned(
              top: 363,
              left: 23,
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
              top: 393,
              left: 45,
              width: 275,
              height: 37,
              child: TextFormField(
                controller: writing_style_text_input,
              ),
            ),
            const Positioned(
              top: 368.5,
              left: 152,
              child: Visibility(
                visible: false,
                child: CircularProgressIndicator(
                  color: Color(4293252565),
                ),
              ),
            ),
            const Positioned(
              top: 368.5,
              left: 164.5,
              child: Visibility(
                visible: false,
                child: CircularProgressIndicator(
                  backgroundColor: Color(4293252308),
                ),
              ),
            ),
            const Positioned(
              top: 368.5,
              left: 177,
              child: Visibility(
                visible: false,
                child: CircularProgressIndicator(
                  color: Color(4293319643),
                ),
              ),
            ),
            Positioned(
              top: 512.5,
              left: 158.5,
              child: Visibility(
                visible: story_loader!,
                child: const CircularProgressIndicator(
                  backgroundColor: Color(4292199877),
                ),
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
