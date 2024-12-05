import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/core/constant/constant.dart';
import 'package:flutter_app_stater/src/modules/Login/presentation/widgets/form_dropdown.dart';
import 'package:flutter_app_stater/src/widgets/custom_birthday_selector.dart';
import 'package:flutter_app_stater/src/widgets/custom_button_submit.dart';
import 'package:flutter_app_stater/src/widgets/custom_form_file.dart';
import 'package:gap/gap.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genderOptions = ['Male', 'Female', 'Other'];
    final province =
        Province.values.map((province) => province.englishName).toList();
    final villages = VillageHelper.getAllVillages();
    final List<String> _countries = [
      'Laos PDR',
      'Thailand',
      'Vietnam',
      'Cambodia'
    ];
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
              const Text(
                "Personal information",
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
                    child: CustomDropdownFormField(
                      name: 'gender',
                      title: 'Gender',
                      initialValue: genderOptions.first,
                      items: genderOptions,
                      onChanged: (value) {
                        // setState(() {
                        //   _selectedGender = value;
                        // });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Please select your gender';
                        }
                        return null;
                      },
                    ),
                  ),
                  const Gap(20),
                  Expanded(
                    child: FormBuilderBirthdaySelector(
                      title: "Birthday",
                      name: 'birthday',
                      initialDate: DateTime(2000, 1, 1),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
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
              CustomDropdownFormField(
                title: "Country",
                name: "name",
                items: _countries,
                initialValue: _countries.first,
                onChanged: (value) {
                  // setState(() {
                  //   _selectedCountry = value;
                  // });
                },
              ),
              const Gap(20),
              CustomDropdownFormField(
                title: "Province",
                name: "province",
                items: province.toList(),
                initialValue: province.first,
                onChanged: (value) {
                  // setState(() {
                  //   _selectedCountry = value;
                  // });
                },
              ),
              const Gap(20),
              CustomDropdownFormField(
                title: "Village",
                name: "village",
                items: villages,
                initialValue: villages.first,
                onChanged: (value) {
                  if (value != null) {
                    print('Selected village: $value');
                  }
                },
              ),
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
