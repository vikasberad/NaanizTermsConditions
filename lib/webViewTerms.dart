import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

class WebViewTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          print("This one doesn't print");
        },
        child: Container(
          child: Stack(
            children: <Widget>[
              WebView(
                initialUrl:
                    'https://github.com/vikasberad/NaanizVOffPage/blob/master/lib/main.dart',
                javascriptMode: JavascriptMode.unrestricted,
                gestureRecognizers: Set()
                  ..add(
                      Factory<TapGestureRecognizer>(() => TapGestureRecognizer()
                        ..onTapDown = (tap) {
                          print("This one prints");
                        })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
