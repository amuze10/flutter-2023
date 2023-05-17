import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_texts.dart';

Future<void> _showAlertDialog(BuildContext context, String text) async {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.cardColor,
          title: const Text(AppTexts.bmi,
          textAlign: TextAlign.center,),
          content:  Text(text,
          textAlign: TextAlign.center,
          ),
          
          actions: <Widget>[
           
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("чыгуу"))
          ],
        );
      });
}
