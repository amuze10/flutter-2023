import 'package:sabak25_news_app/model/source.dart';

class Article{
  Article({
    required this.source, 
    required this.author,
    required this.title, 
    required this.description,
    required this.url, 
    required this.urlToImage,
    required this.published,
    required this.content});

final Source source;
final String?  author;
final String title;
final String description;
final String url;
final String? urlToImage;
final String published;
final String content;

}