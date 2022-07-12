import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_seires/controller/gender_controller.dart';
import 'package:new_seires/controller/signup_controller.dart';

import '../../component/background.dart';
import '../../component/custom_button.dart';
import '../../component/textfeild_decoration.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pasword = TextEditingController();
  TextEditingController repasword = TextEditingController();
  GenderController genderController = Get.put(GenderController());
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  SignupController signupController = Get.find();
  final globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Background(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: globalKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: signupController.camerapic.value ==
                                true
                            ? FileImage(File(signupController.profilepic.value))
                                as ImageProvider
                            : AssetImage('asset/login/Login.png'),
                        radius: 80,
                      ),
                      Positioned(
                        bottom: 0,
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => bottomsheet(context));
                          },
                          child: Icon(
                            Icons.camera,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Textfeilddecoration(
                    child: TextFormField(
                      // maxLength: 10,
                      textInputAction: TextInputAction.next,
                      // onChanged: (value) {
                      //   print(value);
                      // },
                      controller: name,
                      validator: (valuee) {
                        if (valuee!.isEmpty) {
                          return 'Enter name';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Name',
                        hintStyle: TextStyle(color: Colors.purple),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  Textfeilddecoration(
                    child: TextFormField(
                      // maxLength: 10,
                      textInputAction: TextInputAction.next,
                      // onChanged: (value) {
                      //   print(value);
                      // },
                      controller: email,
                      validator: (valuee) {
                        if (valuee!.isEmpty) {
                          return 'Email';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.purple),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  Textfeilddecoration(
                    child: TextFormField(
                      // maxLength: 10,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      // onChanged: (value) {
                      //   print(value);
                      // },
                      controller: phone,
                      validator: (valuee) {
                        if (valuee!.isEmpty) {
                          return 'phone';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        // counterText: '10',
                        hintText: 'Phone',
                        hintStyle: TextStyle(color: Colors.purple),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  Textfeilddecoration(
                    child: TextFormField(
                      // maxLength: 10,
                      textInputAction: TextInputAction.next,
                      // onChanged: (value) {
                      //   print(value);
                      // },
                      obscureText: true,
                      controller: pasword,
                      validator: (valuee) {
                        if (valuee!.isEmpty) {
                          return 'PasswordError';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.purple),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  Textfeilddecoration(
                    child: TextFormField(
                      // maxLength: 10,
                      textInputAction: TextInputAction.next,
                      // onChanged: (value) {
                      //   print(value);
                      // },
                      obscureText: true,
                      controller: repasword,
                      validator: (valuee) {
                        if (valuee!.isEmpty) {
                          return 'RePasswordError';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'RePassword',
                        hintStyle: TextStyle(color: Colors.purple),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  Textfeilddecoration(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Text(
                              'Gender',
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  // fontSize: 20,
                                  color: Colors.purple),
                            ),
                          ),
                          Row(
                            children: [
                              Obx(() {
                                return Radio(
                                  value: 'Male',
                                  groupValue:
                                      genderController.genderselect.value,
                                  onChanged: (val) {
                                    genderController.onChangeGender(val);
                                  },
                                  activeColor: Colors.purple,
                                  fillColor:
                                      MaterialStateProperty.all(Colors.purple),
                                );
                              }),
                              Text('Male'),
                            ],
                          ),
                          Row(
                            children: [
                              Obx(() {
                                return Radio(
                                  value: 'Female',
                                  groupValue:
                                      genderController.genderselect.value,
                                  onChanged: (val) {
                                    genderController.onChangeGender(val);
                                  },
                                  activeColor: Colors.purple,
                                  fillColor:
                                      MaterialStateProperty.all(Colors.purple),
                                );
                              }),
                              Text('Male'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    buttonclr: Colors.purple,
                    buttontext: 'SIGNUP',
                    textclr: Colors.white,
                    handlerButtonClick: () {
                      // print('save');
                    },
                    size: size.height * 0.8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already Have Account ?'),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: const Text('Login Now')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomsheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      width: double.infinity,
      height: size.height * 0.2,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Choose Profile Photo',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  takephoto(ImageSource.gallery, context);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.image,
                      size: 30,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Gallery',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  takephoto(ImageSource.camera, context);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.camera,
                      size: 30,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Camera',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> takephoto(ImageSource source, BuildContext context) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    _signupController.setProfileImagePath(pickedFile!.path);

    Navigator.pop(context);
  }
}
