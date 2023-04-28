import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import '../../../../core/global/app_globals.dart';
import 'package:url_launcher/url_launcher.dart';

import 'index.dart';

class Utils {
  void showException({required String? message}) {
    assert(message != null);
    showSimpleNotification(
      Row(
        children: <Widget>[
          const Icon(Icons.warning, color: Colors.white),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              message ?? "",
            ),
          ),
        ],
      ),
      background: Colors.red,
      autoDismiss: true,
      slideDismissDirection: DismissDirection.horizontal,
      key: const ValueKey('exception'),
      duration: const Duration(seconds: 5),
    );
  }

  void showToast({@required String? message}) {
    toast(message ?? "");
  }

  void showSuccess(BuildContext context,
      {required String title, required String content, double height = 75}) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Icon(Icons.check_circle_outline_rounded,
                      size: 50, color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  content,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          alignment: Alignment.center,
          actionsAlignment: MainAxisAlignment.center,
          actions: <Widget>[
            TextButton(
              child: const Text('Aceptar'),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss alert dialog
              },
            ),
          ]),
    );
  }

  void showCustomAnimation({@required String? message, @required double? val}) {
    CustomAnimationToast(
      message: message ?? "",
      value: val ?? 0,
    );
  }

  void showIosStyle({@required String? message, @required double? opacity}) {
    showOverlay((context, opacity) {
      return Opacity(
        opacity: opacity,
        child: IosStyleToast(message: message ?? ""),
      );
    });
  }

  Future<void> launchInBrowser(String url) async {
    try {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } catch (_) {
      showException(message: 'URL inválida');
    }
  }
}
