import 'package:flutter/material.dart';
import 'package:sabak16_bmi_and_snippets/theme/text_style.dart';

import 'circular_button.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.addBasuu,
    required this.removeBasuu,
  });

  final String text;
  final String san;
  final void Function() addBasuu;
  final void Function() removeBasuu;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppTextStyles.titleStyle),
        Text(san, style: AppTextStyles.sanTexstyle),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                icon: Icons.remove,
                basuu: removeBasuu,
              ),
              const SizedBox(
                width: 10,
              ),
              CircularButton(
                icon: Icons.add,
                basuu: addBasuu,
              ),
            ],
          ),
        )
      ],
    );
  }
}
