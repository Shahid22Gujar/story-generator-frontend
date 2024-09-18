import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 236, 'auto-height': 100})
class placeholder extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const placeholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0x66ffe1b0),
        border: const Border(
            bottom: BorderSide(color: Color(0xffc4c4c4), width: 1)),
        borderRadius: BorderRadius.circular(0),
      ),
      child: const Center(
        child: Text(
          'Placeholder',
          style: TextStyle(),
        ),
      ),
    );
  }
}
