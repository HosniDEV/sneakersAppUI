import 'package:flutter/material.dart';

import '../Styles/colors_app.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black54,
            ),
            hintText: 'What are u looking for ?',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
