import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/sign_up.dart';
import 'package:mvp/story_share_save_option_screen.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class text_output_screen_end extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const text_output_screen_end({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            const Positioned(
              top: 22,
              left: 10.5,
              width: 369,
              height: 195,
              child: Text(
                'And so, the Last Watcher, the man who had seen the end, became the dawn of a new beginning. In the far-future, where silence had once reigned, life blossomed anew, and the cosmos sang with the birth of endless possibilities.',
                style: TextStyle(),
              ),
            ),
            Positioned(
              top: 624,
              left: 10.5,
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
              top: 624,
              left: 145,
              width: 100,
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
              top: 624,
              left: 279.5,
              width: 100,
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
              top: 490.5,
              left: 279.5,
              width: 100,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 19.56.38 - Create a simple round icon featuring the phrase \'Save it\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text in .png')),
                ),
              ),
            ),
            Positioned(
              top: 498,
              left: 10.5,
              width: 268,
              height: 85,
              child: Text(
                'This is the end of your unsaved story. Please create an account to continue.',
                style: TextStyle(
                  color: const Color(4278219392),
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: 762,
              left: 10.5,
              width: 163,
              height: 60,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const sign_up()));
                },
                child: Text(
                  'Register',
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
            ),
            Positioned(
              top: 762,
              left: 190.5,
              width: 188.5,
              height: 60,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const story_share_save_option_screen()));
                },
                child: Text(
                  'Share&Save',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: const Color(4294967295),
                    backgroundColor: const Color(4278219392),
                  ),
                  textAlign: TextAlign.center,
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
