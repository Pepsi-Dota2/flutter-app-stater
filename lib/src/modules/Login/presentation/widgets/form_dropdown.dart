import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomDropdownFormField<T> extends StatelessWidget {
  const CustomDropdownFormField({
    super.key,
    required this.name,
    this.title,
    this.hintText,
    required this.items,
    this.validator,
    this.onChanged,
    this.borderRadius = 20.0,
    this.fillColor = const Color(0xFFE0E0E0), // Light gray
    this.initialValue,
  });

  final String name;
  final String? title; // Title above the dropdown
  final String? hintText;
  final List<T> items; // Dropdown items
  final String? Function(T?)? validator;
  final void Function(T?)? onChanged;
  final double borderRadius;
  final Color fillColor;
  final T? initialValue; // Corrected type to match the generic type `T`

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
        FormBuilderDropdown<T>(
          name: name,
          initialValue: initialValue, // Set initial value
          items: items
              .map(
                (item) => DropdownMenuItem<T>(
                  value: item,
                  child: Text(item.toString()), // Customize item display if needed
                ),
              )
              .toList(),
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
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
