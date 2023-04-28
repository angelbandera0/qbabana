import 'package:flutter/material.dart';

import '../../../../core/global/app_globals.dart';

class CustomCountDownButton extends AnimatedWidget {
  CustomCountDownButton({Key? key, required this.animation})
      : super(key: key, listenable: animation);
  final Animation<int> animation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
      child: Text('${AppGlobals.reSendText} (${animation.value.toString()})',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: AppGlobals.hintColor,
            fontFamily: 'Poppins',
          )),
    );
  }
}
