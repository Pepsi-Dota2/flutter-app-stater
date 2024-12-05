import 'package:flutter/material.dart';

class DropdownTranslate extends StatelessWidget {
  final String value;
  final List<DropdownMenuItem<String>> items;
  final Function(String?) onChanged;
  final Color? iconColor;
  final double? iconSize;
  final TextStyle? textStyle;
  final Color? dropdownColor;
  final BorderRadius? borderRadius;

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
          style:
              textStyle ?? const TextStyle(color: Colors.black, fontSize: 16),
          dropdownColor: dropdownColor,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
      ),
    );
  }
}
