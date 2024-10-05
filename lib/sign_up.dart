import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/login.dart';
import 'package:mvp/api/BackendCollection.api.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 925})
class sign_up extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const sign_up({super.key});

  @override
  State<sign_up> createState() {
    return _sign_upState();
  }
}

@NowaGenerated()
class _sign_upState extends State<sign_up> {
  TextEditingController re_password = TextEditingController();

  TextEditingController first_name = TextEditingController();

  TextEditingController user_email = TextEditingController();

  bool? registration_loader = false;

  TextEditingController text1 = TextEditingController();

  TextEditingController text4 = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController text6 = TextEditingController();

  TextEditingController text2 = TextEditingController();

  TextEditingController last_name = TextEditingController();

  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            const Positioned(
              top: 166,
              left: 66,
              width: 304,
              height: 99,
              child: Text(
                'Create an Account',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(4282157982),
                  fontFamily: 'Abril Fatface',
                ),
              ),
            ),
            Positioned(
              top: 642,
              left: 305,
              height: 42,
              child: GestureDetector(
                child: Text(
                  'Login',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: const Color(4282157982),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const login()));
                },
              ),
            ),
            Positioned(
              top: 639.5,
              left: 100,
              width: 197,
              height: 37,
              child: Text(
                'Already have an account?',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: const Color(4282157982),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 116,
              width: 158,
              height: 128,
              child: Image(
                image: const AssetImage('assets/pasted_image_a3-Wp1.png'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 227,
              left: 67,
              width: 302,
              height: 519,
              child: Stack(
                fit: StackFit.expand,
                alignment: const Alignment(0, 0),
                children: [
                  Positioned(
                    top: 374,
                    left: 39.5,
                    width: 223,
                    height: 31,
                    child: CustomButton(
                      onPressed: () {
                        registration_loader = true;
                        setState(() {});
                        BackendCollection()
                            .Register(
                          last_name: last_name.text,
                          user_email: user_email.text,
                          first_name: first_name.text,
                          password: password.text,
                          confirm_password: re_password.text,
                        )
                            .then((value) {
                          registration_loader = false;
                          setState(() {});
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const login()));
                        }, onError: (error) {
                          registration_loader = false;
                          setState(() {});
                          print('error: ${error}');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const sign_up()));
                        });
                      },
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          fontFamily: 'Abril Fatface',
                          fontSize: 20,
                          color: Color(4294967295),
                          backgroundColor: Color(4282157982),
                        ),
                      ),
                      color: const Color(4282157982),
                    ),
                  ),
                  Positioned(
                    top: 371,
                    left: 123,
                    child: Visibility(
                      visible: registration_loader!,
                      child: const CircularProgressIndicator(
                        backgroundColor: Color(4293781736),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    width: 302,
                    height: 454,
                    child: NFlex(
                      direction: Axis.vertical,
                      spacing: 8,
                      children: [
                        FlexSizedBox(
                          width: 280,
                          height: 73,
                          child: Stack(
                            fit: StackFit.expand,
                            alignment: const Alignment(0, 0),
                            children: [
                              Positioned(
                                top: -4,
                                left: 0,
                                width: 130,
                                height: 29,
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                      fontFamily: 'Fraunces',
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                  ),
                  Positioned(
                    top: 65,
                    left: 22,
                    width: 280,
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
                            'First Name\n',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Positioned(
                          top: 29,
                          left: 0,
                          width: 280,
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
                              controller: text1,
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
                  ),
                  Positioned(
                    top: 150,
                    left: 22,
                    width: 280,
                    height: 65,
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
                            'Last Name\n',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Positioned(
                          top: 29,
                          left: 0,
                          width: 280,
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
                              controller: text2,
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
                        ),
                        Positioned(
                          top: 29,
                          left: 49,
                          width: 216,
                          height: 36,
                          child: TextFormField(
                            controller: last_name,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 215,
                    left: 22,
                    width: 280,
                    height: 73,
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
                            'Password',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Positioned(
                          top: 29,
                          left: 0,
                          width: 280,
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
                              controller: text4,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 35,
                          left: 16,
                          child: Icon(
                            IconData(983875, fontFamily: 'MaterialIcons'),
                            color: Color(4278219392),
                          ),
                        ),
                        Positioned(
                          top: 29,
                          left: 56,
                          width: 210,
                          height: 36,
                          child: TextFormField(
                            onChanged: (value) {},
                            onEditingComplete: () {},
                            onFieldSubmitted: (value) {},
                            controller: password,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 291,
                    left: 22,
                    width: 280,
                    height: 89,
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: const Alignment(0, 0),
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 210,
                          height: 51,
                          child: Text(
                            'Re-Password',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Positioned(
                          top: 35,
                          left: 0,
                          width: 280,
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
                              controller: text6,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 41,
                          left: 16,
                          child: Icon(
                            IconData(983875, fontFamily: 'MaterialIcons'),
                            color: Color(4278219392),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 244,
              left: 78,
              width: 280,
              height: 36,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(4291085508),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(4282157982), width: 1),
                ),
                child: TextFormField(
                  enabled: false,
                  cursorColor: const Color(4281916914),
                  style:
                      TextStyle(shadows: [const Shadow(offset: Offset(0, 0))]),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide:
                              const BorderSide(color: Color(4282157982)))),
                  autofocus: false,
                  controller: text,
                ),
              ),
            ),
            const Positioned(
              top: 251,
              left: 92,
              child: Icon(
                IconData(57898, fontFamily: 'MaterialIcons'),
                color: Color(4278219392),
              ),
            ),
            Positioned(
              top: 320,
              left: 136,
              width: 216,
              height: 36,
              child: TextFormField(
                controller: first_name,
              ),
            ),
            Positioned(
              top: 243,
              left: 128,
              width: 216,
              height: 36,
              child: TextFormField(
                controller: user_email,
              ),
            ),
            Positioned(
              top: 552,
              left: 138,
              width: 216,
              height: 36,
              child: TextFormField(
                controller: re_password,
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
      appBar: AppBar(
        title: const Text(
          'Back',
          style: TextStyle(),
        ),
      ),
    );
  }
}
