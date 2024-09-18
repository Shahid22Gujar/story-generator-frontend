import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 330, 'auto-height': 96})
class Stack1 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        alignment: const Alignment(0, 0),
        children: [],
      ),
      elevation: 2,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xff000000), width: 1),
          borderRadius: BorderRadius.circular(14)),
    );
  }
}
