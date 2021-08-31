import 'package:flutter/material.dart';
import 'package:squeezed_app/res/app_colors.dart';

import 'package:squeezed_app/res/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final bool horizontallyExpanded;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.backgroundColor = AppColors.primary,
    this.horizontallyExpanded = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontallyExpanded ? double.infinity : null,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: Constants.defaultPadding,
            vertical: Constants.defaultPadding / 1.5,
          ),
          primary: backgroundColor,
        ),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            fontSize: 16,
            letterSpacing: 1.2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}