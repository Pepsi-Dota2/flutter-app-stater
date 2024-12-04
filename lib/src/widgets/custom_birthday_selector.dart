import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderBirthdaySelector extends StatelessWidget {
  const FormBuilderBirthdaySelector({
    super.key,
    required this.name,
    this.initialDate,
    this.hintText = 'Select your birthday',
    this.firstDate,
    this.lastDate,
    this.validator,
  });

  final String name; // Field name for FormBuilder
  final DateTime? initialDate; // Initial selected date
  final String hintText; // Hint text for the field
  final DateTime? firstDate; // Earliest selectable date
  final DateTime? lastDate; // Latest selectable date
  final String? Function(DateTime?)? validator; // Validation function

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<DateTime>(
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
          child: AbsorbPointer(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: field.value != null
                    ? "${field.value!.year}-${field.value!.month.toString().padLeft(2, '0')}-${field.value!.day.toString().padLeft(2, '0')}"
                    : hintText,
                suffixIcon: const Icon(Icons.calendar_today),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 20.0,
                ),
                errorText: field.errorText, // Display validation errors
              ),
              readOnly: true,
            ),
          ),
        );
      },
    );
  }
}
