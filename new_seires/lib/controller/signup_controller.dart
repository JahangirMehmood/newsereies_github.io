import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var camerapic = false.obs;
  var profilepic = ''.obs;

  void setProfileImagePath(String path) {
    profilepic.value = path;
    camerapic.value = true;
  }
}
