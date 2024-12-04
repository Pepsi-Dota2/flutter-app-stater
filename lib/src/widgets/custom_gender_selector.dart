import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomGenderDropdown extends StatelessWidget {
  final String name;
  final String label;
  final String? initialValue;
  final List<String> options;
  final String? Function(String?)? validator;
  final IconData icon;

  const CustomGenderDropdown({
    Key? key,
    required this.name,
    required this.label,
    this.initialValue,
    required this.options,
    this.validator,
    this.icon = Icons.arrow_drop_down_rounded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<String>(
      name: name,
      initialValue: initialValue ?? options.first, // Default to first option if no initial value is provided
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.grey.shade600, // Lighter label color
          fontSize: 16.0, // Set font size to make it modern
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Rounded border
          borderSide: BorderSide(
            color: Colors.grey.shade300, // Border color
            width: 1.5,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        isDense: true, // Dense padding to make it compact
      ),
      dropdownColor: Colors.white, // Dropdown menu background color
      icon: Icon(
        icon,
        color: Colors.grey.shade600,
      ),
      items: options
          .map(
            (gender) => DropdownMenuItem(
              value: gender,
              child: Text(
                gender,
                style: TextStyle(
                  fontSize: 16.0, // Modern font size
                  color: Colors.black,
                ),
              ),
            ),
          )
          .toList(),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Please select your $label';
            }
            return null;
          },
    );
  }
}

