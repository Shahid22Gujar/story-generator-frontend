import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class audio_output_save_screen extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audio_output_save_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 108,
              left: 30,
              width: 329.5,
              height: 110,
              child: Text(
                'Story headline ...',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: const Color(4278219392),
                ),
              ),
            ),
            Positioned(
              top: 548,
              left: 0,
              width: 390,
              height: 131,
              child: Text(
                'This is the end of your unsaved story.\nPlease create an account to continue.',
                style: TextStyle(
                  fontFamily: 'Fraunces',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(4278219392),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 639,
              left: 124,
              width: 152,
              height: 151,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 19.56.38 - Create a simple round icon featuring the phrase \'Save it\' in a blueish-grey color scheme. The design should be clean and minimalist, with the text in .png')),
                ),
              ),
            ),
            Positioned(
              top: 323.5,
              left: 91.5,
              width: 207,
              height: 197,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 19.27.41 - Create a modern icon representing audio output. The icon should be clean and minimalist, featuring elements such as a speaker or sound waves. Use a mo.png')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
