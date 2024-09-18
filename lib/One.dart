import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class One extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(4291085508),
        borderRadius: BorderRadius.circular(0),
        image: const DecorationImage(
            image: AssetImage(
                'assets/DALL·E 2024-07-10 18.41.10 - Create a modern logo for \'Stories with Joy\' featuring the letters \'JOY\'. The logo should include a stylized, geometric representation of a feather qui (1).jpg')),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            alignment: const Alignment(0, 0),
            children: [],
          ),
        ),
        backgroundColor: const Color(4279308561),
      ),
    );
  }

  DecorationImage? createImage() {
    return const DecorationImage(
        image: NetworkImage(
            'https://canary.contestimg.wish.com/api/webimage/5ddccb3c9a6f6e1cf8d7dd65-large.jpg?cache_buster=114b2b0b5893a0e736412075646fa5da'));
  }
}
