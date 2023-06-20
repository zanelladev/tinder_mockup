import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return SizedBox(
      width: deviceInfo.size.width * 0.9,
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: icon,
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          foregroundColor: MaterialStateProperty.all(Colors.white),
          side: MaterialStateProperty.all(
            const BorderSide(
              width: 2,
              color: Colors.white,
            ),
          ),
        ),
        label: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
