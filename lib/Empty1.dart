import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class Empty1 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Empty1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0,
          children: [
            FlexSizedBox(
              width: 390,
              height: 844,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/WhatsApp Image 2024-07-19 at 22.36.18 (8).jpeg')),
                ),
              ),
            ),
            FlexSizedBox(
              width: 100,
              height: 100,
              child: Wrap(
                children: [],
                direction: Axis.horizontal,
              ),
            )
          ],
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
