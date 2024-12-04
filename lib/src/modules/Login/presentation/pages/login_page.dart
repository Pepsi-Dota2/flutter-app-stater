import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/core/routers/router.dart';
import 'package:flutter_app_stater/src/modules/Login/presentation/widgets/dropdown_translate.dart';
import 'package:flutter_app_stater/src/widgets/custom_button_submit.dart';
import 'package:flutter_app_stater/src/widgets/custom_form_file.dart';
import 'package:gap/gap.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          DropdownTranslate(
            value: "En",
            items: const [
              DropdownMenuItem(
                value: 'En',
                child: Row(
                  children: [
                    Icon(Icons.language, size: 16, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('English'),
                  ],
                ),
              ),
              DropdownMenuItem(
                value: 'La',
                child: Row(
                  children: [
                    Icon(Icons.translate, size: 16, color: Colors.green),
                    SizedBox(width: 8),
                    Text('La'),
                  ],
                ),
              ),
            ],
            onChanged: (String? newValue) {
              // Handle the selection
              print('Selected language: $newValue');
            },
            iconColor: Colors.grey,
            dropdownColor: Colors.grey[200],
            textStyle: const TextStyle(color: Colors.black, fontSize: 14),
            borderRadius: BorderRadius.circular(12),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image.asset("assets/images/Comet Digital Agency 3.png"),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                  hintText: 'Password',
                  obscureText: true,
                ),
                const Gap(30),
                CustomButtonSubmit(
                  text: 'Login',
                  colorBt: Colors.amber,
                  height: 50,
                  radius: BorderRadius.circular(20),
                  onTab: () {
                    context.router.push(const HomeRoute());
                  },
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text("Remember me?"),
                    Text("Forgot password")
                  ],
                ),
                const Gap(100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have any account?"),
                    Gap(10),
                     InkWell(
                        onTap: () {
                          context.router.push(const RegisterRoute());
                        },
                        child: Text("Create an account")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
