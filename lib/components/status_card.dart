import 'package:bmi/utils/app_colors.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          color: AppColors.cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: widget,
        ),
      ),
    );
  }
}
