import 'dart:math';

import 'package:bmi/components/alert_dialod.dart';
import 'package:bmi/components/calculate_btn.dart';
import 'package:bmi/components/gender_widget.dart';
import 'package:bmi/components/slider_widget.dart';
import 'package:bmi/components/status_card.dart';
import 'package:bmi/components/weight_and_age.dart';
import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180;
  bool isFemale = false;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    bool a = true;
    bool b = false;

    print("a: ${a}");
    print("b: ${b}");

    print("a: ${!a}");
    print("b: ${!b}");

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          AppText.appBarText,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    widget: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: GenderWidget(
                        icon: Icons.male,
                        text: AppText.male,
                        isFemale: !isFemale,
                      ),
                    ),
                  ),
                  StatusCard(
                    widget: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: GenderWidget(
                        icon: Icons.female,
                        text: AppText.female,
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            StatusCard(
              widget: SliderWidget(
                currentSliderValue: height,
                onChanged: (double value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    widget: WeightAndAge(
                      text: AppText.weight,
                      value: weight,
                      remove: (maani) {
                        setState(() {
                          weight = maani;
                        });
                      },
                      add: (maani) {
                        setState(() {
                          weight = maani;
                        });
                      },
                    ),
                  ),
                  StatusCard(
                    widget: WeightAndAge(
                      text: AppText.age,
                      value: age,
                      remove: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                      add: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateBtn(
        onTap: () {
          final result = weight / pow(height / 100, 2);

          if (result < 18.5) {
            showMyDialog(
              context: context,
              result: result,
              text: 'Сиздин салмагыныз аз,коп тамактаныныз',
            );
          } else if (result >= 18.5 && result <= 24.9) {
            showMyDialog(
              context: context,
              result: result,
              text: 'Сиздин салмагыныз жакшы. Азаматсыныз!',
            );
          } else if (result > 24.9) {
            showMyDialog(
              context: context,
              result: result,
              text: 'Сиздин салмагыныз ашыкча.Спорт менен машыгыныз!',
            );
          } else {
            showMyDialog(
              context: context,
              result: result,
              text: 'Маалымат алынууда каталар бар',
            );
          }
        },
      ),
    );
  }
}
