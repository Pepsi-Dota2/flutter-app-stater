import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderBirthdaySelector extends StatelessWidget {
  const FormBuilderBirthdaySelector({
    super.key,
    required this.name,
    this.initialDate,
    this.hintText,
    this.firstDate,
    this.lastDate,
    this.validator,
    this.borderRadius = 20.0,
    this.fillColor = const Color(0xFFE0E0E0), // Light gray
    this.title,
  });

  final String name; // Field name for FormBuilder
  final DateTime? initialDate; // Initial selected date
  final String ? hintText; // Hint text for the field
  final DateTime? firstDate; // Earliest selectable date
  final DateTime? lastDate; // Latest selectable date
  final String? Function(DateTime?)? validator; // Validation function
  final double borderRadius; // Border radius for the dropdown style
  final Color fillColor; // Background color for the field
  final String? title; // Title to display above the field

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title!,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        FormBuilderField<DateTime>(
          name: name,
          validator: validator,
          builder: (FormFieldState<DateTime?> field) {
            return GestureDetector(
              onTap: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: field.value ?? initialDate ?? DateTime.now(),
                  firstDate: firstDate ?? DateTime(1900),
                  lastDate: lastDate ?? DateTime.now(),
                );
                if (pickedDate != null) {
                  field.didChange(pickedDate); // Update FormBuilder state
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: Border.all(color: Colors.grey.shade400), // Add border
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      field.value != null
                          ? "${field.value!.year}-${field.value!.month.toString().padLeft(2, '0')}-${field.value!.day.toString().padLeft(2, '0')}"
                          : hintText ?? "",
                      style: TextStyle(
                        color: field.value != null ? Colors.black87 : Colors.grey.shade500,
                        fontSize: 16.0,
                      ),
                    ),
                    const Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
