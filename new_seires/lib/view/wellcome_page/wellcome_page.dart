import 'package:flutter/material.dart';
import 'package:new_seires/component/custom_button.dart';
import 'package:new_seires/component/my_theme.dart';
import 'package:new_seires/view/login/login.dart';
import 'package:new_seires/view/signup/sign_up.dart';

import '../../component/background.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WELL COME',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Image.asset(
              'asset/login/undraw_Balloons.png',
              width: size.width * 0.6,
            ),
            CustomButton(
              buttonclr: MyTheme.btnclr,
              buttontext: 'LOGIN',
              textclr: Colors.white,
              handlerButtonClick: () {
                loginButtonClickHandler(context);
              },
              size: size.width * 0.7,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              buttonclr: Colors.grey.shade400,
              buttontext: 'SIGNUP',
              textclr: Colors.white,
              handlerButtonClick: () {
                signupButtonClickHandler(context);
              },
              size: size.width * 0.7,
            ),
          ],
        ),
      ),
    );
  }

  loginButtonClickHandler(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  signupButtonClickHandler(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }
}
