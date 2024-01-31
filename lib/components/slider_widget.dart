import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget(
      {super.key, required this.currentSliderValue, required this.onChanged});

  final double currentSliderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppText.height,
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${currentSliderValue.toInt()}',
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: AppColors.white),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Text(
                AppText.cm,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textColor,
                ),
              ),
            ),
          ],
        ),
        Slider(
          value: currentSliderValue,
          max: 300,
          onChanged: onChanged,
          activeColor: AppColors.white,
          thumbColor: AppColors.redColor,
        ),
      ],
    );
  }
}
