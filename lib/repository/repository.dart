import 'package:dio/dio.dart';

import '../model/article_response.dart';

class NewsRepository {
  static String mainUrl = "https://newsapi.org/v2/";
  final String apiKey = "{API KEY}";

  final Dio _dio = Dio();

  var topHeadlinesUrl = "$mainUrl/top-headlines";
  var everythingUrl = "$mainUrl/everything";

  Future<ArticleResponse> getTopHeadlines() async {
    var params = {
      "country": "us",
      "category": "technology",
      "apiKey": apiKey,
      "language": "en"
    };

    try{
      Response response = await _dio.get(topHeadlinesUrl, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch(error) {
      return ArticleResponse.withError("$error");
    }
  }

  Future<ArticleResponse> getHotNews() async {
    var params = {
      "apiKey": apiKey,
      "q": "programming",
      "sortBy": "publishedAt",
      "language": "en"
    };

    try{
      Response response = await _dio.get(everythingUrl, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch(error) {
      return ArticleResponse.withError("$error");
    }
  }

  Future<ArticleResponse> getNewsByCategory(String category) async {
    var params = {
      "apiKey": apiKey,
      "category": category,
      "sortBy": "publishedAt",
      "language": "en"
    };

    try{
      Response response = await _dio.get(topHeadlinesUrl, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch(error) {
      return ArticleResponse.withError("$error");
    }
  }

  Future<ArticleResponse> searchArticle(String searchValue) async {
    var params = {
      "apiKey": apiKey,
      "q": searchValue,
      "sortBy": "publishedAt",
      "language": "en"
    };

    try{
      Response response = await _dio.get(topHeadlinesUrl, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch(error) {
      return ArticleResponse.withError("$error");
    }
  }
}