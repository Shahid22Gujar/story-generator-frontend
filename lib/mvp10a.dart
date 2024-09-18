import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class mvp10a extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const mvp10a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            const Positioned(
              top: 80,
              left: 19,
              width: 343,
              height: 173,
              child: Text(
                'Amela jackson had always believed in love at first sight, but she never thought it owudl ha[[en to her. \nAs a senior editor for a publishing house in New\nYork City, her days were filled with manuscripts and meetings, leaving little room for romance. However, that all chaged one crisp autumn motnig on the L\ntarin.',
                style: TextStyle(),
              ),
            ),
            const Positioned(
              top: 240,
              left: 19,
              width: 345,
              height: 182,
              child: Text(
                'The L train was notoriously crowded especially during rush hour. The L train ws notoriously crowded, especially during rush hour. But on this particular day. Amwlia found herself standing across frm a mna who seemed t shine amid the choos. He was tall with dark tousled hair and a charming smile that could light up the dimmest subway car, He was engrossed in a back, and Amelia ever the editor, was curious about his choice of reading.',
                style: TextStyle(),
              ),
            ),
            const Positioned(
              top: 441,
              left: 19,
              width: 342,
              height: 159,
              child: Text(
                'The L train was notoriously crowded, especially\nduring rush hour. The L train was notoriously \ncrowded, especially during rush hour. But on this particular day. Amelia found herself standing across from a man who seemed t shine amid the chaos . \nHe was tall with dark tousled hair and a charmign smile that could light up the dimmest subway car.',
                style: TextStyle(),
              ),
            ),
            Positioned(
              top: 600,
              left: 0,
              width: 390,
              height: 129,
              child: Text(
                'You reached the maximal length of a \nstory. Please create a new story with joy.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontSize: 20,
                  color: const Color(4278219392),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 218,
              left: 390,
              height: 35,
              child: CustomButton(
                onPressed: () {},
                child: const Text(
                  'Button',
                  style: TextStyle(),
                ),
              ),
            ),
            Positioned(
              top: 679,
              left: 135.5,
              width: 110,
              child: NFlex(
                direction: Axis.vertical,
                spacing: 0,
                children: [
                  FlexSizedBox(
                    width: 108,
                    height: 103,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(4291085508),
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: const AssetImage(
                                'assets/DALL·E 2024-07-10 20.06.46 - Create a simple round icon featuring the phrase \'New Story\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text i.png')),
                      ),
                    ),
                  )
                ],
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
