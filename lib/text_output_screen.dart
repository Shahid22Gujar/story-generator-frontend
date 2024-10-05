import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_output.dart';
import 'package:mvp/homepage.dart';
import 'package:mvp/dynamic_asset.dart';
import 'package:mvp/api/BackendCollection.api.dart';
import 'package:mvp/story_input.dart';

@NowaGenerated({'auto-width': 428, 'auto-height': 934})
class text_output_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_output_screen({super.key});

  @override
  State<text_output_screen> createState() {
    return _text_output_screenState();
  }
}

@NowaGenerated()
class _text_output_screenState extends State<text_output_screen> {
  String? regenerate_progress =
      'https://sgujar.pythonanywhere.com/media/assets/NewDoItAgain.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 35,
          children: [
            const FlexSizedBox(
              width: 334.8094482421875,
              height: 38,
              child: Text(
                'Great - here is your story',
                style: TextStyle(
                  fontFamily: 'Abril Fatface',
                  fontSize: 29,
                  color: Color(4278219392),
                ),
              ),
            ),
            FlexSizedBox(
              width: 362.40472412109375,
              height: 411,
              child: SingleChildScrollView(
                child: Text(
                  story_output.of(context).story_text_output!,
                  style: const TextStyle(),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            FlexSizedBox(
              width: 405,
              height: 191,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(4278219392),
                    borderRadius: BorderRadius.circular(0)),
                child: Stack(
                  alignment: const Alignment(0, 0),
                  children: [
                    Positioned(
                      top: 46.25,
                      left: 233,
                      width: 131,
                      height: 137,
                      child: GestureDetector(
                        child: Image(
                          image: const AssetImage(
                              'assets/DALL·E 2024-07-10 20.06.46 - Create a simple round icon featuring the phrase \'New Story\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text i.png'),
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const homepage()));
                        },
                      ),
                    ),
                    Positioned(
                      top: 46.25,
                      left: 43,
                      width: 131,
                      height: 137,
                      child: GestureDetector(
                        child: Image(
                          image: NetworkImage(regenerate_progress!),
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          regenerate_progress =
                              DynamicAsset.of(context, listen: false)
                                  .processing_img;
                          setState(() {});
                          BackendCollection()
                              .CreateStoriesByGuestUser(
                            time_period: story_input
                                .of(context, listen: false)
                                .time_period_input,
                            character: story_input
                                .of(context, listen: false)
                                .character_input,
                            writing_style: story_input
                                .of(context, listen: false)
                                .writing_style_input,
                            is_audio_to_generate: false,
                            is_regenerate: true,
                            story_genre: story_input
                                .of(context, listen: false)
                                .story_genre,
                          )
                              .then((value) {
                            regenerate_progress =
                                DynamicAsset.of(context, listen: false)
                                    .do_it_again_img;
                            setState(() {});
                            story_output
                                .of(context, listen: false)
                                .story_text_output = value?.storyText;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const text_output_screen()));
                          }, onError: (error) {
                            regenerate_progress =
                                DynamicAsset.of(context, listen: false)
                                    .do_it_again_img;
                            setState(() {});
                            print('error: ${error}');
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
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
