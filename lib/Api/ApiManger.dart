import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled8/model/SourceResponse/SourcesResponse.dart';
import 'package:untitled8/model/newsResponse/NewsResponse.dart';

class ApiManger {
  static const baseurl = 'newsapi.org';
  static const apiKey = '6fe512003d49422b8d3140f8a9b07094';

  static Future<SourcesResponse> getSource(String categoryId) async {
    var uri = Uri.https(baseurl, 'v2/top-headlines/sources',
        {"apiKey": apiKey, "category": categoryId});
    var response = await http.get(uri);
    // response.body >-jison>objects
    var json = jsonDecode(response.body);
    var sourcesResponse = SourcesResponse.fromJson(json);
    return sourcesResponse;
  }

  static Future<NewsResponse> getNews(String? sourceId) async {
    var url = Uri.https(baseurl, 'v2/everything', {
      "apiKey": apiKey,
      "sources": sourceId,
    });
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    var newsResponse = NewsResponse.fromJson(json);
    return newsResponse;
  }
}
