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
          fixedSize: MaterialStateProperty.all(
              Size.fromHeight(deviceInfo.size.height * 0.06)),
          iconSize: MaterialStateProperty.all(20),
          alignment: Alignment.centerLeft,
          foregroundColor: MaterialStateProperty.all(Colors.white),
          side: MaterialStateProperty.all(
            const BorderSide(
              width: 1.5,
              color: Colors.white,
            ),
          ),
        ),
        label: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'NunitoAsset',
              fontSize: 13,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
