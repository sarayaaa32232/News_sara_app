import 'package:flutter/material.dart';
import 'package:untitled8/model/newsResponse/newss.dart';

class NewsWidget extends StatelessWidget {
  News news;

  NewsWidget(this.news, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              news.urlToImage ?? "",
              height: 220,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            news.author ?? "",
            textAlign: TextAlign.start,
          ),
          Text(
            news.title ?? "",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          Text(
            news.publishedAt ?? "",
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
