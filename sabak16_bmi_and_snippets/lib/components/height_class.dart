import 'package:flutter/material.dart';
import 'package:sabak16_bmi_and_snippets/theme/text_style.dart';

import '../theme/app_colors.dart';

class HeightClass extends StatelessWidget {
  const HeightClass({
    super.key,
    required this.text,
    required this.text2,
    required this.text3, required this.height, this.onChanged,
  });

  final String text;
  final String text2;
  final String text3;
   final double  height;
 final void Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppTextStyles.heightStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(text2, style: AppTextStyles.sanTexstyle),
            Text(text3, style: AppTextStyles.titleStyle),
          ],
        ),
        Expanded(
          child: Slider(
              activeColor: AppColors.whiteColor,
              inactiveColor: AppColors.greyColor,
              thumbColor: AppColors.pinkColor,
              value: height,
              min: 0,
              max: 220,
           onChanged: onChanged,
                
              ),
        )
      ],
    );
  }
}
