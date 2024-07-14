import 'package:dio/dio.dart';
import 'package:news_app/core/constants/articles_model.dart';

class ApiServices {

   final Dio dio;
  ApiServices(this.dio);
  Future<List<ArticlesModel>> getArticles({ required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=173d7d75d89a469a9e0e1cea696b238e');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticlesModel> articleList = [];
      for (var article in articles) {
        ArticlesModel articles = ArticlesModel.fromJson(article);
        articleList.add(articles);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}
