import 'package:flutter/material.dart';
import 'package:new_seires/component/background.dart';
import 'package:new_seires/component/custom_button.dart';
import 'package:new_seires/view/signup/sign_up.dart';
import '../../component/textfeild_decoration.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _globalKey = GlobalKey<FormState>();
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  String userError = "Please Inter User Name";
  String hintext = "User Name";
  Color userhintclr = Colors.purple;
  IconData usericon = Icons.person;
  Color usericonclr = Colors.purple;
  bool paswordicon = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/login/Login.png'),
              const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                key: _globalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Textfeilddecoration(
                      child: TextFormField(
                        onChanged: (val) {
                          // print(val);
                        },
                        controller: user,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return userError;
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: hintext,
                          hintStyle: TextStyle(color: userhintclr),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            usericon,
                            color: usericonclr,
                          ),
                        ),
                      ),
                    ),
                    Textfeilddecoration(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   print(value);
                        // },
                        obscureText: true,
                        controller: password,
                        validator: (valuee) {
                          if (valuee!.isEmpty) {
                            return 'PasswordError';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: userhintclr),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: usericonclr,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility)
                              // : Icons.visibility_off
                              // color: usericonclr:

                              ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      buttonclr: Colors.purple,
                      buttontext: 'Login',
                      textclr: Colors.white,
                      handlerButtonClick: () {
                        // print('save');
                      },
                      size: size.height * 0.8,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Dont Have Account ?'),
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
                            child: const Text('Sign Up ?')),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
