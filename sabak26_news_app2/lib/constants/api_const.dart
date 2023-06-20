class ApiConst{
  static const apiKey = '29fc21476bbb40d1b90611ae7823cb13';
  static  topNews([String? domain]) => 'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';

  static const newsImage =
  'https://static.vecteezy.com/system/resources/thumbnails/004/216/831/original/3d-world-news-background-loop-free-video.jpg';
}