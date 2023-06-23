import 'package:flutter/material.dart';
import 'package:tinder_mockup/src/constants/theme/colors/app_colors.dart';
import 'package:tinder_mockup/src/constants/theme/text/app_text.dart';
import 'package:tinder_mockup/src/ui/widgets/outline_button.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final appColors = appTheme.extension<AppColors>()!;
    final appText = appTheme.extension<AppText>()!;

    final deviceInfo = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: deviceInfo.size.width,
        height: deviceInfo.size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: <Color>[
              appColors.bgColor1,
              appColors.bgColor2,
            ],
            stops: const [0.3, 1],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: deviceInfo.size.width,
              child: IconButton(
                alignment: Alignment.centerLeft,
                onPressed: () {},
                color: Colors.white,
                icon: const Icon(
                  IconData(0xf571,
                      fontFamily: 'MaterialIcons', matchTextDirection: true),
                ),
              ),
            ),
            SizedBox(height: deviceInfo.size.height * 0.3),
            SizedBox(
              width: deviceInfo.size.width * 0.5,
              child: Image.asset(
                'assets/images/tinder_logo_white.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: deviceInfo.size.height * 0.15),
            SizedBox(
              width: deviceInfo.size.width * 0.8,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: appText.nunitoDefault,
                  children: const [
                    TextSpan(
                        text:
                            'By tapping Create Account or Sign In, you agree to our '),
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(text: '. Learn how we process your data in our '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Cookies Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(text: '.')
                  ],
                ),
              ),
            ),
            SizedBox(height: deviceInfo.size.height * 0.03),
            CustomOutlineButton(
              icon: const Icon(IconData(0xf04be, fontFamily: 'MaterialIcons')),
              text: 'SIGN IN WITH APPLE',
              width: deviceInfo.size.width * 0.9,
            ),
            SizedBox(height: deviceInfo.size.height * 0.01),
            CustomOutlineButton(
              icon: const Icon(IconData(0xe255, fontFamily: 'MaterialIcons')),
              text: 'SIGN IN WITH FACEBOOK',
              width: deviceInfo.size.width * 0.9,
            ),
            SizedBox(
              height: deviceInfo.size.height * 0.01,
            ),
            CustomOutlineButton(
              icon: const Icon(CupertinoIcons.chat_bubble_fill),
              text: 'SIGN IN WITH PHONE NUMBER',
              width: deviceInfo.size.width * 0.9,
            ),
            SizedBox(height: deviceInfo.size.height * 0.03),
            SizedBox(
              width: deviceInfo.size.width,
              child: Text(
                'Trouble Signing In?',
                textAlign: TextAlign.center,
                style: appText.nunitoDefault.copyWith(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
