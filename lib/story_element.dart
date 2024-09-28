import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 386, 'auto-height': 100})
class StoryElement extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const StoryElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(4282157982),
          borderRadius: BorderRadius.circular(0)),
      child: Stack(
        alignment: const Alignment(0, 0),
        children: [
          Positioned(
            top: 6.5,
            left: 17,
            width: 369,
            height: 86.5,
            child: Text(
              'Write something',
              style: const TextStyle(color: Color(4294174438), fontSize: 30),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
