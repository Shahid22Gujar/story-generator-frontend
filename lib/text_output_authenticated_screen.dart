import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_output.dart';

@NowaGenerated({'auto-width': 393, 'auto-height': 808})
class text_output_authenticated_screen extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_output_authenticated_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            const Positioned(
              top: 42,
              left: 29,
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
              top: 153,
              left: 12.5,
              width: 368,
              height: 610,
              child: Text(
                story_output.of(context).story_text_output!,
                style: const TextStyle(),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}
