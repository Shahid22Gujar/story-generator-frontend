import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/mvp10.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class mvp00 extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const mvp00({this.var1, super.key});

  final TextEditingController? var1;

  @override
  State<mvp00> createState() {
    return _mvp00State();
  }
}

@NowaGenerated()
class _mvp00State extends State<mvp00> {
  TextEditingController text4 = TextEditingController();

  String? email = '';

  TextEditingController text41 = TextEditingController();

  TextEditingController text2 = TextEditingController();

  String? password = '';

  TextEditingController text = TextEditingController();

  TextEditingController text1 = TextEditingController();

  TextEditingController text3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.passthrough,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              top: 59,
              left: 100,
              width: 190,
              height: 185,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: const AssetImage(
                          'assets/DALL·E 2024-07-10 18.41.10 - Create a modern logo for \'Stories with Joy\' featuring the letters \'JOY\'. The logo should include a stylized, geometric representation of a feather qui.jpg')),
                ),
              ),
            ),
            Positioned(
              top: 303,
              left: 81.5,
              child: Text(
                'welcome back',
                style: const TextStyle(
                  fontSize: 35,
                  fontFamily: 'Abril Fatface',
                  color: Color(4282157982),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 648,
              left: 69,
              height: 54,
              width: 251.5,
              child: CustomButton(
                onPressed: () {
                  openUrl(
                      'https://8b45-38-183-37-221.ngrok-free.app/accounts/login/');
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const mvp10()));
                },
                child: Text(
                  'Enter',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontWeight: FontWeight.w400,
                    color: const Color(4294439674),
                    fontSize: 20,
                  ),
                ),
                color: const Color(4282157982),
              ),
            ),
            Positioned(
              top: 408,
              left: 41.985565185546875,
              width: 268.9855651855469,
              height: 240,
              child: Stack(
                fit: StackFit.expand,
                alignment: const Alignment(0, 0),
                children: [
                  Positioned(
                    top: 107,
                    left: 0,
                    width: 261.9855651855469,
                    height: 141,
                    child: NFlex(
                      direction: Axis.vertical,
                      spacing: 8,
                      children: [
                        FlexSizedBox(
                          width: 79.5,
                          height: 28,
                          child: Text(
                            'password',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        FlexSizedBox(
                          width: 279.5,
                          height: 51,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: Color(4282157982))),
                              prefixIcon: const Icon(
                                IconData(984363, fontFamily: 'MaterialIcons'),
                                color: Color(4282157982),
                              ),
                              fillColor: const Color(4291085508),
                              labelStyle: const TextStyle(),
                            ),
                            style: TextStyle(shadows: []),
                            cursorColor: const Color(4282157982),
                            enabled: true,
                            controller: text2,
                            onFieldSubmitted: (value) {},
                          ),
                        )
                      ],
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    width: 285.0144348144531,
                    height: 66,
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: const Alignment(0, 0),
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 130,
                          height: 29,
                          child: Text(
                            'username',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Positioned(
                          top: 29,
                          left: 0,
                          width: 272.0144348144531,
                          height: 36,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(4291085508),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: const Color(4282157982), width: 1),
                            ),
                            child: TextFormField(
                              enabled: false,
                              cursorColor: const Color(4281916914),
                              style: TextStyle(shadows: [
                                const Shadow(offset: Offset(0, 0))
                              ]),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(14),
                                      borderSide: const BorderSide(
                                          color: Color(4282157982)))),
                              controller: text41,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 35,
                          left: 16,
                          child: Icon(
                            IconData(62074, fontFamily: 'MaterialIcons'),
                            color: Color(4278219392),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Positioned(
              top: 573,
              left: 141,
              child: Text(
                '',
                style: TextStyle(),
              ),
            ),
            const Positioned(
              top: 573,
              left: 129,
              child: Text(
                '',
                style: TextStyle(),
              ),
            ),
            Positioned(
              top: 2472,
              left: 6194,
              width: 92,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(4291085508),
                    borderRadius: BorderRadius.circular(0)),
              ),
            ),
            Positioned(
              top: 905,
              left: -337,
              width: 844,
              height: 122,
              child: TextFormField(
                controller: widget.var1,
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4293783280),
    );
  }
}
