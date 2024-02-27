import 'dart:convert';

import 'package:firebase_authentication/model/news_model.dart';
import 'package:http/http.dart' as http;

class NewsApiServices {
  ///api Key
  final apiKey = "abbbcb5af9e347bbb2f461e40457dbed";
  //get top headline
  Future<TopHeadlineModel> topHealine() async {
    //url String
    final url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey";
    try {
      ///get request
      final res = await http.get(Uri.parse(url));

      return TopHeadlineModel.fromJson(jsonDecode(res.body));
    } catch (e) {
      return const TopHeadlineModel(status: "error");
    }
  }
}
