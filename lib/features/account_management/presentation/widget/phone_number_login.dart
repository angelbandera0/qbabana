import 'package:flutter/material.dart';


import '../../../../core/global/app_globals.dart';

class PhoneNumberLogin extends StatelessWidget {
  const PhoneNumberLogin({Key? key, this.height}) : super(key: key);
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppGlobals.phoneLoginPage,
              height: height,
            ),
          ],
        ),
      ],
    );
  }
}
