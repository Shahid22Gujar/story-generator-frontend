import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class mvp18 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const mvp18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 146,
              left: 114,
              width: 162,
              height: 33,
              child: Text(
                'Your account',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: const Color(4278219392),
                ),
              ),
            ),
            Positioned(
              top: 220,
              left: 84,
              height: 41,
              width: 212,
              child: CustomButton(
                onPressed: () {},
                child: Text(
                  'name',
                  style: TextStyle(
                    fontFamily: 'Fraunces',
                    fontWeight: FontWeight.w700,
                    color: const Color(4294967295),
                    fontSize: 15,
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 287,
              left: 84,
              height: 42,
              width: 212,
              child: CustomButton(
                onPressed: () {},
                child: Text(
                  'email',
                  style: TextStyle(
                    fontFamily: 'Fraunces',
                    fontWeight: FontWeight.w700,
                    color: const Color(4294967295),
                    fontSize: 15,
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 439,
              left: 84,
              height: 41,
              width: 212,
              child: CustomButton(
                onPressed: () {},
                child: Text(
                  'logout',
                  style: TextStyle(
                    fontFamily: 'Fraunces',
                    fontWeight: FontWeight.w700,
                    color: const Color(4294967295),
                    fontSize: 15,
                  ),
                ),
                color: const Color(4278219392),
              ),
            ),
            Positioned(
              top: 665,
              left: 84,
              height: 44,
              width: 212,
              child: CustomButton(
                onPressed: () {},
                child: Text(
                  'edit',
                  style: TextStyle(
                    fontFamily: 'Fraunces',
                    fontWeight: FontWeight.w700,
                    color: const Color(4294967295),
                    fontSize: 15,
                  ),
                ),
                color: const Color(4278219392),
              ),
            )
          ],
        ),
      ),
    );
  }
}
