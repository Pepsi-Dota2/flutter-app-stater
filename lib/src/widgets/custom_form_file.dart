import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.name,
    this.title,
    this.hintText,
    this.textInputType,
    this.validator,
    this.maxLines = 1,
    this.obscureText = false,
    this.onChanged,
    this.borderRadius = 20.0,
    this.fillColor = const Color(0xFFE0E0E0), // Light gray
  });

  final String name;
  final String? title; // The title to display above the form field
  final String? hintText;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final int maxLines;
  final bool obscureText;
  final void Function(String?)? onChanged;
  final double borderRadius;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title ?? '',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        FormBuilderTextField(
          name: name,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 16.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: fillColor,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 20.0,
            ),
          ),
          keyboardType: textInputType,
          obscureText: obscureText,
          maxLines: maxLines,
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
