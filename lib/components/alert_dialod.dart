import 'package:bmi/utils/app_colors.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required String text,
  required double result,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.background,
        title: const Text(
          'Жыйынтык:',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.green,
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                '${result.toInt()}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 48,
                  color: AppColors.white,
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Кайра башта'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
