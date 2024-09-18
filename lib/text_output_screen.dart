import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_output.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 874})
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            const Positioned(
              top: 59,
              left: 27.5,
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
            Positioned(
              top: 181,
              left: 11,
              width: 368,
              height: 538,
              child: Text(
                story_output.of(context).story_text_output!,
                style: const TextStyle(),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
