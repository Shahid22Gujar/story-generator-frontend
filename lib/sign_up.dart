import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/api/BackendCollection.api.dart';
import 'package:mvp/login.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 978})
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
  TextEditingController confirm_password_text = TextEditingController();

  TextEditingController password_text = TextEditingController();

  bool? registration_loader = false;

  TextEditingController new_user_email = TextEditingController();

  TextEditingController user_first_name = TextEditingController();

  TextEditingController user_last_name = TextEditingController();

  TextEditingController new_user_password = TextEditingController();

  TextEditingController new_user_confirm_password = TextEditingController();

  TextEditingController new_user_first_name = TextEditingController();

  TextEditingController new_user_last_name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController first_name = TextEditingController(text: 'first_namr');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            const Positioned(
              top: 250,
              left: 45,
              width: 300,
              height: 76,
              child: Text(
                'Create an Account',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(4282157982),
                  fontFamily: 'Abril Fatface',
                ),
              ),
            ),
            Positioned(
              top: 326,
              left: 44,
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
                          top: 0,
                          left: 0,
                          width: 130,
                          height: 29,
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontFamily: 'Fraunces',
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
                              autofocus: false,
                              controller: email,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 35,
                          left: 16,
                          child: Icon(
                            IconData(57898, fontFamily: 'MaterialIcons'),
                            color: Color(4278219392),
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
              top: 734,
              left: 64.5,
              width: 261.419921875,
              height: 60,
              child: CustomButton(
                onPressed: () {
                  registration_loader = true;
                  setState(() {});
                  BackendCollection()
                      .Register(
                    user_email: new_user_email.text,
                    first_name: user_first_name.text,
                    password: new_user_password.text,
                    confirm_password: new_user_confirm_password.text,
                  )
                      .then((value) {
                    registration_loader = false;
                    setState(() {});
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const login()));
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
              top: 807,
              left: 285.919921875,
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
              top: 408,
              left: 55,
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
                      'First Name\n',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.w700),
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
                        style: TextStyle(
                            shadows: [const Shadow(offset: Offset(0, 0))]),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: const BorderSide(
                                    color: Color(4282157982)))),
                        controller: new_user_first_name,
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
              top: 494,
              left: 55,
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
                          fontFamily: 'Inter', fontWeight: FontWeight.w700),
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
                        style: TextStyle(
                            shadows: [const Shadow(offset: Offset(0, 0))]),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: const BorderSide(
                                    color: Color(4282157982)))),
                        controller: new_user_last_name,
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
                    left: 40,
                    width: 225,
                    height: 36,
                    child: TextFormField(
                      controller: user_last_name,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 647,
              left: 55,
              width: 280,
              height: 87,
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
                          fontFamily: 'Inter', fontWeight: FontWeight.w700),
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
                        style: TextStyle(
                            shadows: [const Shadow(offset: Offset(0, 0))]),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: const BorderSide(
                                    color: Color(4282157982)))),
                        controller: confirm_password_text,
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
            ),
            Positioned(
              top: 574,
              left: 55,
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
                          fontFamily: 'Inter', fontWeight: FontWeight.w700),
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
                        style: TextStyle(
                            shadows: [const Shadow(offset: Offset(0, 0))]),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: const BorderSide(
                                    color: Color(4282157982)))),
                        controller: password_text,
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
                    width: 206,
                    height: 36,
                    child: TextFormField(
                      controller: new_user_password,
                      onChanged: (value) {},
                      onEditingComplete: () {},
                      onFieldSubmitted: (value) {},
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 681,
              left: 97,
              width: 227.5,
              height: 37,
              child: TextFormField(
                controller: new_user_confirm_password,
              ),
            ),
            Positioned(
              top: 438,
              left: 105,
              width: 215,
              height: 35,
              child: TextFormField(
                controller: user_first_name,
              ),
            ),
            Positioned(
              top: 356,
              left: 105,
              width: 225.5,
              height: 35,
              child: TextFormField(
                controller: new_user_email,
              ),
            ),
            Positioned(
              top: 809.5,
              left: 64.5,
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
              top: 56,
              left: 116,
              width: 158,
              height: 168,
              child: Image(
                image: const AssetImage('assets/pasted_image_a3-Wp1.png'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 744,
              left: 177,
              child: Visibility(
                visible: registration_loader!,
                child: const CircularProgressIndicator(
                  backgroundColor: Color(4293781736),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }
}
