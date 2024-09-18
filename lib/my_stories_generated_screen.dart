import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/models/liststories_model.dart';
import 'package:mvp/storyComponent.dart';
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
                  itemCount: 5,
                  itemBuilder: (context, index) => const storyComponent(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 25,
                    width: 20,
                  ),
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
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
