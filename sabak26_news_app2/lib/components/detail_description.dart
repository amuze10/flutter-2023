import 'package:flutter/material.dart';

import '../model/article.dart';
import '../theme/app_text_styles.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        article.description!,
        textAlign: TextAlign.center,
        style: AppTextStyles.descriptionTextStyle,
      ),
    );
  }
}