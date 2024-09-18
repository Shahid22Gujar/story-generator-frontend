import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 315.5, 'auto-height': 99})
class my_story extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const my_story({super.key});

  @override
  State<my_story> createState() {
    return _my_storyState();
  }
}

@NowaGenerated()
class _my_storyState extends State<my_story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(4282157982),
          borderRadius: BorderRadius.circular(14)),
      child: Stack(
        alignment: const Alignment(0, 0),
        children: [
          const Positioned(
            top: 0,
            left: 25,
            width: 175,
            height: 69,
            child: Text(
              'Hello',
              style: TextStyle(
                fontSize: 20,
                color: Color(4278256656),
                backgroundColor: Color(369098751),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 143.25,
            width: 29,
            height: 30,
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
          const Positioned(
            top: 0,
            left: 200,
            child: Icon(
              IconData(57941, fontFamily: 'MaterialIcons'),
              color: Color(4278190080),
            ),
          ),
          const Positioned(
            top: 0,
            left: 252,
            child: Icon(
              IconData(983503, fontFamily: 'MaterialIcons'),
              color: Color(4278190080),
            ),
          ),
          const Positioned(
            top: 37.5,
            left: 200,
            child: Icon(
              IconData(984460, fontFamily: 'MaterialIcons'),
              color: Color(4278190080),
            ),
          ),
          Positioned(
            top: 35.5,
            left: 142.75,
            width: 29.75,
            height: 28,
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
          ),
          const Positioned(
            top: 37.5,
            left: 252,
            child: Icon(
              IconData(983503, fontFamily: 'MaterialIcons'),
              color: Color(4278190080),
            ),
          ),
          const Positioned(
            top: 75,
            left: 147,
            child: Icon(
              IconData(983503, fontFamily: 'MaterialIcons'),
              color: Color(4278190080),
            ),
          ),
          const Positioned(
            top: 75,
            left: 200,
            child: Icon(
              IconData(984426, fontFamily: 'MaterialIcons'),
              color: Color(4278190080),
            ),
          )
        ],
      ),
    );
  }

  void func() {}
}
