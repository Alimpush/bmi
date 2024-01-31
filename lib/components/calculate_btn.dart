import 'package:bmi/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CalculateBtn extends StatelessWidget {
  const CalculateBtn({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 73,
        color: AppColors.redColor,
        child: const Center(
          child: Text(
            'CALCULATOR',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
