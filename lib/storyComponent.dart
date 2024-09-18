import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 397, 'auto-height': 93})
class storyComponent extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const storyComponent({super.key});

  @override
  State<storyComponent> createState() {
    return _storyComponentState();
  }
}

@NowaGenerated()
class _storyComponentState extends State<storyComponent> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Text(
        'llo',
        style: TextStyle(
          fontFamily: 'Fraunces',
          fontSize: 20,
          color: const Color(4294967295),
          fontWeight: FontWeight.w700,
          shadows: [],
          backgroundColor: const Color(4282157982),
        ),
        textAlign: TextAlign.justify,
      ),
      color: const Color(4282157982),
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(4278219392), width: 1),
          borderRadius: BorderRadius.circular(14)),
    );
  }
}
