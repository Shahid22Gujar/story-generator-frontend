import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class Empty2 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Empty2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: 390,
              height: 844,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffc4c4c4),
                  borderRadius: BorderRadius.circular(0),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/WhatsApp Image 2024-07-19 at 22.36.18 (9).jpeg')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
