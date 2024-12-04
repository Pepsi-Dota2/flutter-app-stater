import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/widgets/custom_birthday_selector.dart';
import 'package:flutter_app_stater/src/widgets/custom_button_submit.dart';
import 'package:flutter_app_stater/src/widgets/custom_form_file.dart';
import 'package:flutter_app_stater/src/widgets/custom_gender_selector.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genderOptions = ['Male', 'Female', 'Other'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Perasonal information",
                style: TextStyle(fontSize: 20),
              ),
              const Gap(10),
              const CustomFormField(
                title: "full name",
                name: "fullName",
                hintText: 'Full name',
                obscureText: true,
              ),
              const Gap(20),
              const CustomFormField(
                title: "surname",
                name: "surname",
                hintText: 'surname',
                obscureText: true,
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomGenderDropdown(
                      name: 'gender',
                      label: 'Gender',
                      options: genderOptions,
                      initialValue: 'Male',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select your gender';
                        }
                        return null;
                      },
                    ),
                  ),
                  const Gap(20),
                  Expanded(
                    child: FormBuilderBirthdaySelector(
                      name: 'birthday',
                      hintText: 'Select your birthday',
                      initialDate: DateTime(2000, 1, 1),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                      validator: (DateTime? value) {
                        if (value == null) {
                          return 'Please select your birthday';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const Gap(20),
              const CustomFormField(
                title: "nationality",
                name: "surname",
                hintText: 'surname',
                obscureText: true,
              ),
              const Gap(20),
              const CustomFormField(
                title: "Passport / National identification Card Number",
                name: "surname",
                hintText: 'surname',
                obscureText: true,
              ),
              const Gap(20),
              const Text("Emergency contract information"),
              const Gap(20),
              const CustomFormField(
                title: "Contract name",
                name: "contract",
                hintText: 'Enter the name',
                obscureText: true,
              ),
              const Gap(20),
              const CustomFormField(
                title: "Contract number",
                name: "contract",
                hintText: '+856 20 xxx xxx xx',
                obscureText: true,
              ),
              const Gap(20),
              const Text("Contract information"),
              const Gap(20),
              const CustomFormField(
                title: "Phone number",
                name: "contract",
                hintText: '+856 20 xxx xxx xx',
                obscureText: true,
              ),
              const Gap(20),
              const CustomFormField(
                title: "Email",
                name: "Email",
                hintText: 'enter your email',
                obscureText: true,
              ),
              const Gap(20),
              const Text("Address information"),
              const Gap(20),
              const Text("Confirm password"),
              const Gap(20),
              const CustomFormField(
                title: "Password",
                name: "password",
                hintText: 'enter your password',
                obscureText: true,
              ),
              const Gap(20),
              const CustomFormField(
                title: "Confirm Password",
                name: "confirm password",
                hintText: 'confirm password',
                obscureText: true,
              ),
              const Gap(30),
              CustomButtonSubmit(
                text: 'SignUp',
                colorBt: Colors.amber,
                height: 50,
                radius: BorderRadius.circular(10),
                onTab: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
