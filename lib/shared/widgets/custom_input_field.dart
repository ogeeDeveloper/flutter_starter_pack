import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final bool isError;
  final String? errorMessage;

  const CustomInputField({
    required this.controller,
    required this.placeholder,
    this.isError = false,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: placeholder,
        errorText: isError ? errorMessage : null,
      ),
    );
  }
}