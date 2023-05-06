import 'dart:convert';
import 'package:news_app/models/recomend_feedmodel.dart';
import 'package:news_app/screens.dart';
import 'package:http/http.dart' as http;

class RecomendedFeedController extends GetxController {
  var loading = RxBool(true);
  static FeedModleClass? feedModelData;
  static Articles? articles;
  static Source? source;

  fetchData() async {
    try {
      final url = Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=in&apiKey=$apiKey');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        feedModelData = FeedModleClass(
          status: jsonData["status"],
          totalResults: jsonData['totalResults'],
          articles: jsonData['articles'],
        );
        debugPrint(feedModelData!.articles![11].toString());
      } else {
        debugPrint('Request failed with status: ${response.statusCode}.');
      }
    } catch (error) {
      debugPrint(error.toString());
    }
  }
}
