import 'package:flutter/material.dart';
import 'package:login_signup_exercise/screens/login_screens/animations/change_screen_animation.dart';
import 'package:login_signup_exercise/utils/helper_functions.dart';

import 'login_content.dart';

class TopText extends StatefulWidget {
  const TopText({Key? key,}) : super(key: key);

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {
  @override
  void initState() {
    ChangeScreenAnimation.topTextAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed){
        setState(() {

        });
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return HelperFunctions.wrapWithAnimationBuilder(
      animation: ChangeScreenAnimation.topTextAnimation,
      child: Text(
        ChangeScreenAnimation.currentScreen == Screens.createAccount ? 'Create\nAccount' : 'Welcome\nBack',
        style: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
