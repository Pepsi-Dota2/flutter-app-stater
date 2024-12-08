import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/generated/locale_keys.g.dart';
import 'package:flutter_app_stater/src/core/constant/language.dart';
import 'package:flutter_app_stater/src/core/routers/router.dart';
import 'package:flutter_app_stater/src/core/utils/translate.dart';
import 'package:flutter_app_stater/src/modules/Login/presentation/cubit/login_cubit.dart';
import 'package:flutter_app_stater/src/modules/Login/presentation/widgets/dropdown_translate.dart';
import 'package:flutter_app_stater/src/widgets/custom_button_submit.dart';
import 'package:flutter_app_stater/src/widgets/custom_form_file.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage()
class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final languageProvider = LanguageProvider();
    final cubit = context.read<LoginCubit>();

    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return DropdownTranslate(
                value: state.switchLanguage ? "La" : "En",
                onChanged: (String? value) {
                  cubit.onSwitchLanguage(context);
                },
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
                iconColor: Colors.grey,
                dropdownColor: Colors.grey[200],
                textStyle: const TextStyle(color: Colors.black, fontSize: 14),
                borderRadius: BorderRadius.circular(12),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                  text: LocaleKeys.login_label_login.tr(),
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
                  children: [Text("Remember me?"), Text("Forgot password")],
                ),
                const Gap(60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have any account?"),
                    const Gap(10),
                    InkWell(
                        onTap: () {
                          context.router.push(const RegisterRoute());
                        },
                        child: Text("Create an account")),
                  ],
                ),
                const Gap(60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
