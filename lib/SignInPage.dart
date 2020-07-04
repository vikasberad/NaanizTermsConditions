import 'package:NaanizTermsConditions/TermsOfUse.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: kToolbarHeight * 2),
                    Text(
                      "Sign up",
                      style: textTheme.headline4
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Sign up fields here",
                    style: textTheme.headline6,
                  ),
                  smallHeightSpacing,
                  OrDivider(),
                  smallHeightSpacing,
                  InkWell(
                    onTap: () {}, // push to sign up
                    child: Text(
                      "Sign in",
                      style: textTheme.headline6,
                    ),
                  ),
                  SizedBox(height: 74),
                  TermsOfUse(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox get smallHeightSpacing => SizedBox(height: 12);
}

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        horizontalLine(),
        Text("OR", style: Theme.of(context).textTheme.subtitle1),
        horizontalLine(),
      ],
    );
  }

  Widget horizontalLine() {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 2,
      width: 124,
      color: Colors.grey,
    );
  }
}
