import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class Em extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Em({super.key});

  @override
  State<Em> createState() {
    return _EmState();
  }
}

@NowaGenerated()
class _EmState extends State<Em> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                IconData(58136, fontFamily: 'MaterialIcons'),
                color: Color(4278190080),
              ),
              label: 'home'),
          const BottomNavigationBarItem(
              icon: Icon(
                IconData(57638, fontFamily: 'MaterialIcons'),
                color: Color(4278190080),
              ),
              label: 'call')
        ],
        currentIndex: pageIndex,
        onTap: (value) {
          pageIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
