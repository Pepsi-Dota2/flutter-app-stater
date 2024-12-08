import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final IconData icon;
  final Color color;

  const CategoryModel({
    required this.name,
    required this.icon,
    required this.color,
  });

    static final List<CategoryModel> defaultCategories = [
    CategoryModel(
      name: 'Dental',
      icon: Icons.medical_services,
      color: Colors.blue,
    ),
    CategoryModel(
      name: 'Heart',
      icon: Icons.favorite,
      color: Colors.red,
    ),
    CategoryModel(
      name: 'Brain',
      icon: Icons.psychology,
      color: Colors.purple,
    ),
    CategoryModel(
      name: 'General',
      icon: Icons.local_hospital,
      color: Colors.green,
    ),
    CategoryModel(
      name: 'Eye',
      icon: Icons.visibility,
      color: Colors.orange,
    ),
  ];
}