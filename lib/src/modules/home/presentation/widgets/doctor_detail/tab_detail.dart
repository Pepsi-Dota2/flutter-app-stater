import 'package:flutter/material.dart';

class TabDetail extends StatelessWidget {
  const TabDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.grey[600],
      labelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      indicatorColor: Colors.blue,
      indicatorWeight: 3,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: const [
        Tab(
          height: 40,
          text: "About",
        ),
        Tab(
          height: 40,
          text: "Reviews",
        ),
        Tab(
          height: 40,
          text: "Consultation",
        ),
      ],
    );
  }
}