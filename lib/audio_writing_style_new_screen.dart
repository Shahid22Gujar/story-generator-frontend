import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/api/BackendCollection.api.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/story_output.dart';
import 'package:mvp/story_audio_player_screen.dart';

@NowaGenerated({'auto-width': 393, 'auto-height': 808})
class audio_writing_style_new_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_writing_style_new_screen({super.key});

  @override
  State<audio_writing_style_new_screen> createState() {
    return _audio_writing_style_new_screenState();
  }
}

@NowaGenerated()
class _audio_writing_style_new_screenState
    extends State<audio_writing_style_new_screen> {
  TextEditingController audio_writing_style_input = TextEditingController();

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
              top: 64,
              left: 1.5,
              width: 390,
              height: 198,
              child: Text(
                'Finally, let\'s define the writing style.\nIs there a famous writer whose style\nyou\'d like your story to emulate? Choose \nfreely your favourite author, just name him \not them.\n',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 262,
              left: 24.5,
              width: 344,
              height: 91,
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
                      'Enter  writing style',
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
              top: 421,
              left: 91.5,
              height: 48,
              width: 210,
              child: CustomButton(
                onPressed: () {
                  story_loader = true;
                  setState(() {});
                  BackendCollection()
                      .CreateStoriesByGuestUser(
                    writing_style: audio_writing_style_input.text,
                    character:
                        story_input.of(context, listen: false).character_input,
                    time_period: story_input
                        .of(context, listen: false)
                        .time_period_input,
                  )
                      .then((value) {
                    story_loader = false;
                    setState(() {});
                    story_output.of(context, listen: false).story_audio_url =
                        value?.storyAudio;
                    story_output.of(context, listen: false).story_text_output =
                        value?.storyText;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const StoryAudioPlayerScreen()));
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
              top: 291,
              left: 57,
              width: 268,
              height: 37,
              child: TextFormField(
                controller: audio_writing_style_input,
              ),
            ),
            Positioned(
              top: 427,
              left: 178.5,
              child: Visibility(
                visible: story_loader!,
                child: const CircularProgressIndicator(
                  backgroundColor: Color(4293451229),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
