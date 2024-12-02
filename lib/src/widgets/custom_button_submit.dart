import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonSubmit extends StatelessWidget {
  const CustomButtonSubmit({super.key, this.width, this.height, required this.text, this.colorBt, this.radius, required this.onTab});
  final double? width;
  final double? height;
  final String text;
  final Color? colorBt;
  final BorderRadius? radius;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: colorBt,
          borderRadius: radius,
        ),
        child: Center(child: Text(text)),
      ),
    );
  }
}