import 'package:ecommerce_test/authentication/screens/sign_in_screen.dart';
import 'package:ecommerce_test/authentication/widgets/elevated_button_widget.dart';
import 'package:ecommerce_test/authentication/widgets/sign_textfeild.dart';

import 'package:flutter/material.dart';

import '../../util/app_color.dart';
import '../../util/app_padding.dart';
import '../widgets/text_feild_form_items.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  final checkPasswordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .05),
          child: Column(
            children: [
              const AppPadding(
                multipliedBy: 1.5,
              ),
              const Text(
                'Create your Account',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              TextFieldItems(
                  controller: nameController,
                  text: 'Frist Name',
                  hintText: 'Enter your frist name'),
              TextFieldItems(
                  controller: nameController,
                  text: 'Last Name',
                  hintText: 'Enter your last name'),
              TextFieldItems(
                  controller: emailController,
                  text: 'Email',
                  hintText: 'Enter your email'),
              const AppPadding(
                dividedBy: 2,
              ),
              SignTextFeild(
                controller: passwordController,
                title: 'Password',
                hintText: '...........',
              ),
              const AppPadding(
                dividedBy: 2,
              ),
              SignTextFeild(
                controller: checkPasswordController,
                title: 'Re -enter Password',
                hintText: '...........',
              ),
              const AppPadding(),
              // GetBuilder<AuthController>(
              //   init: AuthController(),
              //   initState: (_) {},
              //   builder: (controller) {
              ElevationBiuttonWidget(
                  isLoading: false,
                  name: 'Sign Up',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ));
                  } //   controller.signUp(
                  //       nameController.text,
                  //       emailController.text,
                  //       passwordController.text,
                  //       checkPasswordController.text,'${date.day}-${date.month}-${date.year}'                     );
                  // },

                  ),

              const AppPadding(
                multipliedBy: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account ?'),
                  InkWell(
                    onTap: () {
                      // Get.to(() => Signin());
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: AppColor.primaryLight,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
