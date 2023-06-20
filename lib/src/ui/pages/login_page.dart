import 'package:flutter/material.dart';
import 'package:tinder_mockup/src/ui/widgets/outline_button.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: deviceInfo.size.width,
        height: deviceInfo.size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: <Color>[
              Color.fromARGB(255, 232, 75, 117),
              Color.fromARGB(255, 237, 115, 99),
            ],
            stops: [
              0.3,
              1,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: IconButton(
                alignment: Alignment.topLeft,
                onPressed: () {},
                color: Colors.white,
                icon: const Icon(
                  IconData(0xf571,
                      fontFamily: 'MaterialIcons', matchTextDirection: true),
                ),
              ),
            ),
            SizedBox(
              width: deviceInfo.size.width * 0.5,
              child: Image.asset(
                'assets/images/tinder_logo_white.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: deviceInfo.size.width * 0.8,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(),
                  children: [
                    TextSpan(
                        text:
                            'By tapping Create Account or Sign In, you agree to our '),
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: '. Learn how we process your data in our '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Cookies Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: '.')
                  ],
                ),
              ),
            ),
            const CustomOutlineButton(
              icon: Icon(IconData(0xf04be, fontFamily: 'MaterialIcons')),
              text: 'SIGN IN WITH APPLE',
            ),
            const CustomOutlineButton(
              icon: Icon(IconData(0xe255, fontFamily: 'MaterialIcons')),
              text: 'SIGN IN WITH FACEBOOK',
            ),
            const CustomOutlineButton(
              icon: Icon(CupertinoIcons.chat_bubble_fill),
              text: 'SIGN IN WITH PHONE NUMBER',
            ),
          ],
        ),
      ),
    );
  }
}
