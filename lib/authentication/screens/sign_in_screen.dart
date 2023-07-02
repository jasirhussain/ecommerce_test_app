
import 'package:ecommerce_test/authentication/widgets/elevated_button_widget.dart';
import 'package:ecommerce_test/homescreen/screens/landing_screen.dart';
import 'package:ecommerce_test/util/app_assets.dart';
import 'package:ecommerce_test/util/app_color.dart';
import 'package:ecommerce_test/util/app_padding.dart';
import 'package:flutter/material.dart';

import '../widgets/sign_textfeild.dart';
import '../widgets/text_feild_form_items.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const AppPadding(multipliedBy: 2),
              Image.asset(
                ThemeAssets.logo,
                height: 80,
                width: 80,
              ),
              const Text(
                'Welcome!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
              ),
              const Text(
                'login to your account',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              TextFieldItems(
                  controller: emailController,
                  text: 'Email',
                  hintText: '123@gmail.com'),
              const AppPadding(
                dividedBy: 2,
              ),
              SignTextFeild(
                controller: passwordController,
                title: 'Password',
                hintText: '...........',
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    // Get.to( ForgotScreen());
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const AppPadding(dividedBy: 1),
              ElevationBiuttonWidget(
                isLoading: false,
                name: 'Login',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LandingScreen(),
                      ));
                  // controller.signIn(
                  //     emailController.text,
                  //    passwordController.text);
                },
              ),
              const AppPadding(dividedBy: 1),
              // const SignupDivider(),
              const AppPadding(),

              const AppPadding(
                multipliedBy: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Didn\'t have an account ?'),
                  const SizedBox(
                    width: 3,
                  ),
                  InkWell(
                    onTap: () {
                      // Get.to(() =>  SignUpScreen());
                    },
                    child: Text(
                      'Sign up',
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
