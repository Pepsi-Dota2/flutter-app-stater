import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/widgets/custom_button_submit.dart';
import 'package:flutter_app_stater/src/widgets/custom_form_file.dart';
import 'package:gap/gap.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const CustomFormField(
            name: "username",
            hintText: 'username',
            obscureText: true,
          ),  
          const Gap(20),
          const CustomFormField(
            name: "email",
            hintText: 'email',
            obscureText: true,
          ),
          const Gap(20),
          const CustomFormField(
            name: "password",
            hintText: 'password',
            obscureText: true,
          ),
          const Gap(20),
          const CustomFormField(
            name: "confirmPassword",
            hintText: 'confirm password',
            obscureText: true,
          ),
          const Gap(30),
          CustomButtonSubmit(
            text: 'Login',
            colorBt: Colors.amber,
            height: 50,
            radius: BorderRadius.circular(10),
            onTab: () {},
          ),
        ],
      ),
    );
  }
}
