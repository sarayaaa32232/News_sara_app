import 'package:flutter/material.dart';
import 'package:untitled8/Api/ApiManger.dart';
import 'package:untitled8/home/News/NewsWidget.dart';

import '../../model/SourceResponse/Source.dart';

class NewsListWidget extends StatelessWidget {
  Source source;

  NewsListWidget(this.source, {super.key});

  @override
  Widget build(BuildContext context) {
    // cal api
    return FutureBuilder(
      future: ApiManger.getNews(source.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || snapshot.data?.status == 'error') {
          return Center(
            child: Column(
              children: [
                Text(snapshot.data?.message ?? snapshot.error.toString()),
                ElevatedButton(onPressed: () {}, child: Text('try again')),
              ],
            ),
          );
        }
        var newsList = snapshot.data?.articles;
        return ListView.builder(
            itemBuilder: (context, index) {
              return NewsWidget(newsList![index]);
            },
            itemCount: newsList?.length ?? 0);
      },
    );
  }
}
