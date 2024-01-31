import 'package:bmi/utils/app_colors.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.isFemale});

  final IconData icon;
  final String text;
  final bool isFemale;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 90,
          color: isFemale ? AppColors.white : AppColors.greyColor,
        ),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.textColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
