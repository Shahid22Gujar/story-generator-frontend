import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_output.dart';
import 'package:mvp/api/BackendCollection.api.dart';
import 'package:mvp/dynamic_asset.dart';
import 'package:mvp/login_response.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/authenticated_homepage.dart';

@NowaGenerated({'auto-height': 879, 'auto-width': 398})
class text_output_auth_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_output_auth_screen({super.key});

  @override
  State<text_output_auth_screen> createState() {
    return _text_output_auth_screenState();
  }
}

@NowaGenerated()
class _text_output_auth_screenState extends State<text_output_auth_screen> {
  String? regenerate_progress =
      'https://sgujar.pythonanywhere.com/media/assets/NewDoItAgain.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 107,
          children: [
            const FlexSizedBox(
              width: null,
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
              width: double.infinity,
              height: 256,
              child: SingleChildScrollView(
                child: Text(
                  story_output.of(context).story_text_output!,
                  style: const TextStyle(),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            FlexSizedBox(
              width: 405,
              height: 223,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(4278219392),
                    borderRadius: BorderRadius.circular(0)),
                child: NFlex(
                  direction: Axis.horizontal,
                  spacing: 0,
                  children: [
                    FlexSizedBox(
                      width: 131,
                      height: 137,
                      child: GestureDetector(
                        child: Image(
                          image: const AssetImage(
                              'assets/DALL·E 2024-07-10 19.53.29 - Create a simple round icon featuring the phrase \'Love it\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text in .png'),
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          BackendCollection()
                              .feedback(
                                  story_id: story_output
                                      .of(context, listen: false)
                                      .story_id)
                              .then((value) {
                            showDialog(
                              builder: (context) => const AlertDialog(
                                title: Text(
                                  'Loved',
                                ),
                              ),
                              useRootNavigator: false,
                              context: context,
                              anchorPoint: const Offset(0, 0),
                            ).then((value) {}, onError: (error) {
                              print('error: ${error}');
                            });
                          }, onError: (error) {
                            print('error: ${error}');
                          });
                        },
                      ),
                    ),
                    FlexSizedBox(
                      width: 120,
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
                              .CreateStoriesByLoggedInUser(
                            jwt_api_token: login_response
                                .of(context, listen: false)
                                .access_token,
                            time_period: story_input
                                .of(context, listen: false)
                                .time_period_input,
                            character: story_input
                                .of(context, listen: false)
                                .character_input,
                            writing_style: story_input
                                .of(context, listen: false)
                                .writing_style_input,
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
                            story_output.of(context, listen: false).story_id =
                                value?.id;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const text_output_auth_screen()));
                          }, onError: (error) {
                            regenerate_progress =
                                DynamicAsset.of(context, listen: false)
                                    .do_it_again_img;
                            setState(() {});
                            print('error: ${error}');
                          });
                        },
                      ),
                    ),
                    FlexSizedBox(
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
                              builder: (context) =>
                                  const authenticated_homepage()));
                        },
                      ),
                    )
                  ],
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),
            )
          ],
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Back',
          style: TextStyle(),
        ),
      ),
    );
  }
}
