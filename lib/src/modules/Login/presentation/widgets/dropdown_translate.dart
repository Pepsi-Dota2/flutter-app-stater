import 'package:flutter/material.dart';

class DropdownTranslate extends StatelessWidget {
  final String value; // Selected value
  final List<DropdownMenuItem<String>> items; // List of dropdown items
  final ValueChanged<String?>? onChanged; // Callback when a new value is selected
  final Color? iconColor; // Color of the dropdown icon
  final double? iconSize; // Size of the dropdown icon
  final TextStyle? textStyle; // Style for text
  final Color? dropdownColor; // Dropdown background color
  final BorderRadius? borderRadius; // Dropdown border radius

  const DropdownTranslate({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.iconColor = Colors.blue,
    this.iconSize = 24,
    this.textStyle,
    this.dropdownColor = Colors.white,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          items: items,
          onChanged: onChanged,
          icon: Icon(
            Icons.arrow_drop_down,
            color: iconColor,
            size: iconSize,
          ),
          style: textStyle ?? const TextStyle(color: Colors.black, fontSize: 16),
          dropdownColor: dropdownColor,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
      ),
    );
  }
}
