import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/text_output_screen_end.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 874})
class text_output_screen_continue extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_output_screen_continue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            const Positioned(
              top: 48,
              left: 10,
              width: 370,
              height: 150,
              child: Text(
                'One day, as the last star flickered and died, the Watcher felt a strange sensation—a warmth spreading through his chest. He looked down and saw that his suit was glowing, brighter than ever before. The energy surged through him, filling him with a power he had never known.',
                style: TextStyle(),
              ),
            ),
            Positioned(
              top: 198,
              left: 8.5,
              width: 373,
              height: 174,
              child: Text(
                'In that moment, the Watcher understood his true purpose. He was not just a witness to the end but the catalyst for a new creation. With a single thought, he released the energy within him, sending it cascading through the cosmos.',
                style: const TextStyle(),
                textAlign: TextAlign.justify,
              ),
            ),
            const Positioned(
              top: 354.5,
              left: 10,
              width: 370,
              height: 165,
              child: Text(
                'The darkness was pierced by a blinding light as new stars were born, their radiance spreading across the void. The Watcher, now one with the universe, became the first breath of life in a new reality. His essence infused the stars, the planets, and the very fabric of space-time.',
                style: TextStyle(),
              ),
            ),
            const Positioned(
              top: 542,
              left: 7.5,
              width: 375,
              height: 139,
              child: Text(
                'But on this particular day. Amelia found herself standing across from a man who seemed to shine amid the choos.',
                style: TextStyle(),
              ),
            ),
            Positioned(
              top: 644,
              left: 10,
              width: 100,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 19.53.29 - Create a simple round icon featuring the phrase \'Love it\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text in .png')),
                ),
              ),
            ),
            Positioned(
              top: 644,
              left: 140.5,
              width: 109,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 19.54.28 - Create a simple round icon featuring the phrase \'Do it again\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text.png')),
                ),
              ),
            ),
            Positioned(
              top: 644,
              left: 267,
              width: 113,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 20.06.46 - Create a simple round icon featuring the phrase \'New Story\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text i.png')),
                ),
              ),
            ),
            Positioned(
              top: 766,
              left: 94.5,
              height: 60,
              width: 201,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const text_output_screen_end()));
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: const Color(4294967295),
                    backgroundColor: const Color(4278219392),
                  ),
                ),
                color: const Color(4278219392),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
