import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/akhilContainer.dart';

@NowaGenerated({'auto-width': 388, 'auto-height': 83})
class tekkiContainer2 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const tekkiContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0),
      children: [
        const Positioned(
          top: 0,
          left: 0,
          width: 409,
          height: 83,
          child: akhilContainer(),
        ),
        Positioned(
          top: 0,
          left: 315,
          width: 76,
          height: 42,
          child: CustomButton(
            onPressed: () {},
            child: const Text(
              'play',
              style: TextStyle(),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          width: 290,
          height: 59.25,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(4294439923),
                borderRadius: BorderRadius.circular(0)),
          ),
        ),
        Positioned(
          top: 1.75,
          left: 0,
          width: 290,
          height: 57,
          child: Text(
            'This is your story which you have created.',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
        )
      ],
      fit: StackFit.loose,
    );
  }
}
