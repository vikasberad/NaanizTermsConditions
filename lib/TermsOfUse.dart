import 'dart:io';

import 'package:NaanizTermsConditions/SignInPage.dart';
import 'package:NaanizTermsConditions/main.dart';
import 'package:NaanizTermsConditions/policy_dialog.dart';
import 'package:NaanizTermsConditions/webViewTerms.dart';
import 'package:animations/animations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "By creating an account, you are agreeing to our\n",
          style: Theme.of(context).textTheme.bodyText1,
          children: [
            TextSpan(
              text: "Terms & Conditions ",
              style: TextStyle(fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  showModal(
                    context: context,
                    configuration: FadeScaleTransitionConfiguration(),
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("Terms and conditions"),
                          automaticallyImplyLeading: true,
                          leading: IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 40,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()),
                              );
                            },
                          ),
                        ),
                        body: GestureDetector(
                          onTap: () {
                            print("This one doesn't print");
                          },
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                WebView(
                                  initialUrl: 'https://naaniz.com',
                                  javascriptMode: JavascriptMode.unrestricted,
                                  gestureRecognizers: Set()
                                    ..add(Factory<TapGestureRecognizer>(
                                        () => TapGestureRecognizer()
                                          ..onTapDown = (tap) {
                                            print("This one prints");
                                          })),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
            ),
            TextSpan(text: "and "),
            TextSpan(
              text: "Privacy Policy",
              style: TextStyle(fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  showModal(
                    context: context,
                    configuration: FadeScaleTransitionConfiguration(),
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("Privacy Policy"),
                          automaticallyImplyLeading: true,
                          leading: IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 40,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()),
                              );
                            },
                          ),
                        ),
                        body: GestureDetector(
                          onTap: () {
                            print("This one doesn't print");
                          },
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                WebView(
                                  initialUrl: 'https://naaniz.com',
                                  javascriptMode: JavascriptMode.unrestricted,
                                  gestureRecognizers: Set()
                                    ..add(Factory<TapGestureRecognizer>(
                                        () => TapGestureRecognizer()
                                          ..onTapDown = (tap) {
                                            print("This one prints");
                                          })),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
            ),
          ],
        ),
      ),
    );
  }
}
