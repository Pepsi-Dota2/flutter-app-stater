import 'package:flutter/material.dart';

class DetailCardModel {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? iconColor; // Added for customization

  DetailCardModel({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor,
  });

  static final List<DetailCardModel> getMockDetails = [
    DetailCardModel(
      icon: Icons.work_outline,
      title: "12 Years",
      subtitle: "Experience",
      iconColor: Colors.blue,
    ),
    DetailCardModel(
      icon: Icons.people_outline,
      title: "1785+",
      subtitle: "Patients",
      iconColor: Colors.green,
    ),
    DetailCardModel(
      icon: Icons.star_outline,
      title: "289",
      subtitle: "Reviews",
      iconColor: Colors.orange,
    ),
  ];
}