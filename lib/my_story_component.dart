import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 398, 'auto-height': 95})
class MyStoryComponent extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const MyStoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0),
      children: [
        Positioned(
          top: 0,
          left: 192.5,
          child: IconButton(
            onPressed: () {},
          ),
        ),
        const Positioned(
          top: 16,
          left: 266.5,
          child: Icon(
            IconData(61508, fontFamily: 'MaterialIcons'),
            color: Color(4278190080),
          ),
        ),
        const Positioned(
          top: 16,
          left: 305.5,
          child: Icon(
            IconData(983503, fontFamily: 'MaterialIcons'),
            color: Color(4278190080),
          ),
        ),
        const Positioned(
          top: 16,
          left: 346.5,
          child: Icon(
            IconData(984460, fontFamily: 'MaterialIcons'),
            color: Color(4278190080),
          ),
        ),
        const Positioned(
          top: 57,
          left: 266.5,
          child: Icon(
            IconData(983503, fontFamily: 'MaterialIcons'),
            color: Color(4278190080),
          ),
        ),
        const Positioned(
          top: 57,
          left: 305.5,
          child: Icon(
            IconData(983503, fontFamily: 'MaterialIcons'),
            color: Color(4278190080),
          ),
        ),
        const Positioned(
          top: 57,
          left: 346.5,
          child: Icon(
            IconData(984426, fontFamily: 'MaterialIcons'),
            color: Color(4278190080),
            applyTextScaling: false,
            fill: 1,
          ),
        ),
        Positioned(
          top: 0,
          left: 217.5,
          width: 38,
          height: 36,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(4291085508),
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: const AssetImage(
                      'assets/DALL·E 2024-07-12 12.42.02 - Create a simple round icon featuring a \'reading eye\' symbol in a blueish-grey color scheme. The design should be clean and minimalist, with the symbol (1).png')),
            ),
          ),
        ),
        Positioned(
          top: 66,
          left: 218.5,
          width: 36,
          height: 32,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(4291085508),
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: const AssetImage(
                      'assets/DALL·E 2024-07-12 12.43.48 - Create a simple round icon representing listening to a story in a blueish-grey color scheme. The design should be clean and minimalist, incorporating .png')),
            ),
          ),
        )
      ],
    );
  }
}
