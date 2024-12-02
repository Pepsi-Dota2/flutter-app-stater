import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/widgets/custom_button_submit.dart';
import 'package:flutter_app_stater/src/widgets/custom_form_file.dart';
import 'package:gap/gap.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 300 , horizontal: 20),
          child: Column(
            children: [
              const CustomFormField(name: "email", hintText: 'email',
  obscureText: true,),
              const Gap(20),
              const CustomFormField(name: "password" ,  hintText: 'Password',
  obscureText: true,),
              const Gap(30),
              CustomButtonSubmit(text: 'Login', colorBt: Colors.amber, height: 50 , radius: BorderRadius.circular(10), onTab:(){},),
            ],
          ),
        ),
      ),
    );
  }
}