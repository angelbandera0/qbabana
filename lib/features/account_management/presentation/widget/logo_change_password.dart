import 'package:flutter/material.dart';

import '../../../../core/global/app_globals.dart';

class LogoChangePasswordCode extends StatelessWidget {
  const LogoChangePasswordCode({Key? key, this.height}) : super(key: key);
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
              AppGlobals.changerPasswordImg,
              height: height,
            ),
          ],
        ),
      ],
    );
  }
}
