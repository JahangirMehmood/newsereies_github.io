import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:new_seires/component/my_theme.dart';
import 'package:new_seires/view/login/login.dart';
import 'package:new_seires/view/signup/sign_up.dart';

import 'controller/signup_controller.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MyApp(),
    enabled: true,
    tools: const [...DevicePreview.defaultTools],
  ));
}
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  SignupController signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // home: WelcomePage(),
      // home: LoginPage(),
      home: SignUp(),
    );
  }
}
