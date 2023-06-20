import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sabak26_news_app2/constants/api_const.dart';
import 'package:sabak26_news_app2/model/domain_countries.dart';
import 'package:sabak26_news_app2/model/top_news.dart';
import 'package:sabak26_news_app2/servise/fetch_servise.dart';
import 'package:sabak26_news_app2/theme/app_colors.dart';
import 'package:sabak26_news_app2/view/detail_view.dart';



class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews; 
  Future<void> fetchNews([String? domain]) async {
    topNews = null;
    setState(() {
      
    });
    topNews = await TopNewsRepo().fetchTopNews(domain); 
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews(); // build ga cheiyn imitState kurulat, data kelup bawtait
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColors,
        title: const Text(
          'News Aggregator',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton<Country>(
            onSelected: (Country item)async {
             await fetchNews(item.domain);
            },
            itemBuilder: (BuildContext context){
              return countriesSet.map((e) => PopupMenuItem<Country>(
                value:e, child: Text(e.name),)
                ).toList();
            },)
        ],
      ),
      body: topNews == null 
          ? const Center(child: CircularProgressIndicator()) 
          : ListView.builder(
             
              itemCount: topNews!.article
                  .length, 
              itemBuilder: (context, index) {
                
                final news = topNews!.article[
                    index]; 
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailView(
                          article: news,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: 
                           CachedNetworkImage(
                             imageUrl: news.urlToImage ?? ApiConst.newsImage,
                            placeholder: (context, url) =>
                                 const CircularProgressIndicator(),
                             errorWidget: (context, url, error) =>
                                Image.asset('assets/errorimage.jpg'),
                           ),
                         // Image.network(news.urlToImage ??
                          //    ApiConst.newsImage), 
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          flex: 5,
                          child: Text(news.title), 
                        ),
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}