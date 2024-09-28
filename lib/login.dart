import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/api/BackendCollection.api.dart';
import 'package:mvp/login_response.dart';
import 'package:mvp/authenticated_homepage.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class login extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const login({super.key});

  @override
  State<login> createState() {
    return _loginState();
  }
}

@NowaGenerated()
class _loginState extends State<login> {
  bool? login_loader = false;

  TextEditingController user_password_conroller = TextEditingController();

  TextEditingController user_email_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.passthrough,
          alignment: const Alignment(0, 0),
          children: [
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
              left: 81.5,
              height: 49,
              width: 210.5,
              child: CustomButton(
                onPressed: () {
                  login_loader = true;
                  setState(() {});
                  BackendCollection()
                      .login(
                          user_email: user_email_controller.text,
                          user_password: user_password_conroller.text)
                      .then((value) {
                    login_loader = false;
                    setState(() {});
                    login_response.of(context, listen: false).access_token =
                        value?.access;
                    login_response.of(context, listen: false).refresh_token =
                        value?.refresh;
                    print(login_response
                        .of(context, listen: false)
                        .access_token!);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const authenticated_homepage()));
                  }, onError: (error) {
                    print('error: ${error}');
                    login_loader = false;
                    setState(() {});
                  });
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Abril Fatface',
                    fontWeight: FontWeight.w400,
                    color: const Color(4294439674),
                    fontSize: 20,
                  ),
                ),
                color: const Color(4282157982),
                onLongPress: () {},
              ),
            ),
            Positioned(
              top: 408,
              left: 51,
              width: 268.9855651855469,
              height: 240,
              child: Stack(
                fit: StackFit.expand,
                alignment: const Alignment(0, 0),
                children: [
                  Positioned(
                    top: 107,
                    left: 0,
                    width: 268,
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
                          width: 268,
                          height: 44,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(4291085508),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: const Color(4282157982), width: 1),
                            ),
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
                            'email',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Positioned(
                          top: 29,
                          left: 0,
                          width: 267,
                          height: 37,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(4291085508),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: const Color(4282157982), width: 1),
                            ),
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
            const Positioned(
              top: 57,
              left: -401,
              child: Icon(
                IconData(62074, fontFamily: 'MaterialIcons'),
                color: Color(4278219392),
              ),
            ),
            const Positioned(
              top: 443,
              left: 57.5,
              child: Icon(
                IconData(62074, fontFamily: 'MaterialIcons'),
                color: Color(4278219392),
              ),
            ),
            Positioned(
              top: 556,
              left: 83,
              width: 223.5,
              height: 38,
              child: TextFormField(
                controller: user_password_conroller,
                onTap: () {},
                onChanged: (value) {},
                onEditingComplete: () {},
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value == null || value!.isEmpty) {
                    return 'Field is required';
                  }
                  if (value!.length < 6) {
                    return 'Too small';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0)),
                    filled: false),
              ),
            ),
            const Positioned(
              top: 558,
              left: 57.5,
              child: Icon(
                IconData(984363, fontFamily: 'MaterialIcons'),
                color: Color(4282157982),
              ),
            ),
            Positioned(
              top: 436.5,
              left: 90,
              width: 215,
              height: 37,
              child: TextFormField(
                controller: user_email_controller,
                validator: (value) {
                  if (value == null || value!.isEmpty) {
                    return 'Field is required';
                  }
                  if (!RegExp(kEmailValidationRegex).hasMatch(value!)) {
                    return 'Invalid email';
                  }
                  return null;
                },
              ),
            ),
            Positioned(
              top: 81,
              left: 107.75,
              width: 158,
              height: 168,
              child: Image(
                image: const AssetImage('assets/pasted_image_a3-Wp1.png'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 654.5,
              left: 168.75,
              child: Visibility(
                visible: login_loader!,
                child: const CircularProgressIndicator(
                  backgroundColor: Color(4293845473),
                ),
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
        backgroundColor: const Color(4294967295),
      ),
    );
  }
}
