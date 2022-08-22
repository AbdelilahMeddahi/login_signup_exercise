import 'package:flutter/material.dart';
import 'package:login_signup_exercise/utils/constants.dart';

import 'login_content.dart';

class BottomText extends StatelessWidget {
  final Screens screen;

  const BottomText({Key? key, required this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
            children: [
              TextSpan(
                text: screen == Screens.createAccount
                    ? 'Already have an account? '
                    : 'Don\'t have an account? ',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: screen == Screens.createAccount ? 'Log In' : 'Sign Up',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
