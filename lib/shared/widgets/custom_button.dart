import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final bool isLoading;
  final bool isDisabled;

  const CustomButton({
    required this.onPressed,
    required this.label,
    this.isLoading = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled || isLoading ? null : onPressed,
      child: isLoading
          ? const CircularProgressIndicator()
          : Text(
              label,
              style: Theme.of(context).textTheme.button,
            ),
    );
  }
}