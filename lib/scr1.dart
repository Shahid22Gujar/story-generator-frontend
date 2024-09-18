import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 1920, 'auto-height': 1080})
class scr1 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const scr1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            const Positioned(
              top: 261,
              left: 45,
              width: 300,
              height: 76,
              child: Text(
                'Create an Account',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(4282157982),
                  fontFamily: 'Abril Fatface',
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4282098513),
    );
  }
}
