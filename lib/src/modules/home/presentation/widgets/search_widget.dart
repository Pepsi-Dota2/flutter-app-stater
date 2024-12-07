import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget(
      {super.key, required this.onPress, required this.onChange});
  final Function() onPress;
  final Function(String?) onChange;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      trailing: [
        IconButton(onPressed: onPress, icon: const Icon(Icons.search))
      ],
      onChanged: onChange,
      shadowColor: WidgetStatePropertyAll(Colors.white),
      backgroundColor: WidgetStatePropertyAll(Colors.white),
    );
  }
}
