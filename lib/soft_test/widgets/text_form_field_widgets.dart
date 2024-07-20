import 'package:flutter/material.dart';

class TextFormFieldWidgets extends StatelessWidget {
  const TextFormFieldWidgets({super.key, required this.controller, this.label});

  final String? label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: label, hintStyle: const TextStyle(fontSize: 14)),
      style: const TextStyle(fontSize: 16),
    );
  }
}
