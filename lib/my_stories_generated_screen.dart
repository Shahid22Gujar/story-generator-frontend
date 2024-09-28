import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/models/liststories_model.dart';
import 'package:mvp/story_output.dart';
import 'package:mvp/story_audio_player_screen.dart';
import 'package:mvp/story_detail.dart';
import 'package:mvp/api/BackendCollection.api.dart';
import 'package:mvp/login_response.dart';

@NowaGenerated({'auto-width': 344, 'auto-height': 748})
class my_stories_generated_screen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const my_stories_generated_screen({super.key});

  @override
  State<my_stories_generated_screen> createState() {
    return _my_stories_generated_screenState();
  }
}

@NowaGenerated()
class _my_stories_generated_screenState
    extends State<my_stories_generated_screen> {
  @override
  Widget build(BuildContext context) {
    return DataBuilder<List<ListStoriesModel?>?>(
      builder: (context, data) => Scaffold(
        body: SafeArea(
          child: NFlex(
            direction: Axis.vertical,
            spacing: 0,
            children: [
              FlexSizedBox(
                width: double.infinity,
                flex: 1,
                child: ListView.separated(
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                    final ListStoriesModel? element = data?[index];
                    return GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color(4282157982),
                          border: const Border(
                              bottom: BorderSide(
                                  color: Color(4291085508), width: 1)),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Center(
                          child: Text(
                            element!.storyText!,
                            style: const TextStyle(
                                color: Color(4292793042), fontSize: 20),
                          ),
                        ),
                      ),
                      onTap: () {
                        story_output
                            .of(context, listen: false)
                            .story_text_output = element?.storyText;
                        story_output
                            .of(context, listen: false)
                            .story_audio_url = element?.storyAudio;
                        if (element!.storyAudio!) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const StoryAudioPlayerScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const story_detail()));
                        }
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 25,
                    width: 20,
                  ),
                ),
              )
            ],
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
        backgroundColor: const Color(4293783280),
        appBar: AppBar(
          title: const Text(
            'My Stories',
            style: TextStyle(),
          ),
        ),
      ),
      loadingWidget: const Align(
        alignment: Alignment(0, 0),
        child: CircularProgressIndicator(),
      ),
      errorBuilder: (context, error) => Align(
        alignment: const Alignment(0, 0),
        child: Text(
          error!.toString(),
          style: const TextStyle(color: Color(4294901760)),
        ),
      ),
      future: BackendCollection()
          .ListStories(jwt_api_token: login_response.of(context).access_token),
    );
  }

  String createText() {
    return 'hello\n';
  }
}
