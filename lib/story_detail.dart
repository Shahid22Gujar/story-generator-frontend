import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_output.dart';

@NowaGenerated()
class story_detail extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const story_detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0,
          children: [
            FlexSizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Text(
                  story_output.of(context).story_text_output!,
                  style: const TextStyle(),
                  textAlign: TextAlign.start,
                ),
              ),
              flex: 1,
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
