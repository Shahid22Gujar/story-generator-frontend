import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/api/BackendCollection.api.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/story_output.dart';
import 'package:mvp/text_output_screen.dart';
import 'package:mvp/text_time_period_screen.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 77})
class FeedBackComponent extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const FeedBackComponent({super.key});

  @override
  State<FeedBackComponent> createState() {
    return _FeedBackComponentState();
  }
}

@NowaGenerated()
class _FeedBackComponentState extends State<FeedBackComponent> {
  String? regenerate_progress = 'Regenerate';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(4291085508),
          borderRadius: BorderRadius.circular(0)),
      child: Stack(
        alignment: const Alignment(0, 0),
        children: [
          Positioned(
            top: 10,
            left: 91,
            height: 40,
            child: CustomButton(
              onPressed: () {
                regenerate_progress = 'Wait';
                setState(() {});
                BackendCollection()
                    .CreateStoriesByGuestUser(
                  is_regenerate: true,
                  is_audio_to_generate: false,
                  time_period:
                      story_input.of(context, listen: false).time_period_input,
                  character:
                      story_input.of(context, listen: false).character_input,
                  writing_style: story_input
                      .of(context, listen: false)
                      .writing_style_input,
                )
                    .then((value) {
                  regenerate_progress = 'Regenerate';
                  setState(() {});
                  story_output.of(context, listen: false).story_text_output =
                      value?.storyText;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const text_output_screen()));
                }, onError: (error) {
                  regenerate_progress = 'Regenerate';
                  setState(() {});
                  print('error: ${error}');
                });
              },
              child: Text(
                regenerate_progress!,
                style: const TextStyle(),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 258,
            height: 40,
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const text_time_period_screen()));
              },
              child: const Text(
                'New Story',
                style: TextStyle(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
