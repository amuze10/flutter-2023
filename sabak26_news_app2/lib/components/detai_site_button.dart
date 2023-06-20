import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/article.dart';

class DetailSiteButton extends StatelessWidget {
  const DetailSiteButton({
    super.key, required this.article,
  });
final Article article;
  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(article.url);
    return MaterialButton(color: Colors.deepOrange,
      onPressed: () async {
if (!await launchUrl(url)){
  throw Exception('Could not launch $url');
}
      }, child: const Text('Сайтын коруу'),);
  }
}