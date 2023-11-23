import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  NewsService(Dio dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=64e6caeadade49a0a026d15f22151b8c&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
