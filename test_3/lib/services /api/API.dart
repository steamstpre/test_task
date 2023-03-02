import 'package:http/http.dart' as http;
import 'package:test_3/const/app_consts.dart';
import 'package:test_3/model/movie_result.dart';

class API {
  Future<Movie?> sentRequset() async {
    final client = http.Client();

    var uriResponse = await client.get(
      Uri.parse(AppStrings.apiUrl),
    );

    if (uriResponse.statusCode == 200) {
      String response = uriResponse.body;
      return movieFromJson(response);
    } else {
      throw Exception(uriResponse.statusCode);
    }
  }
}
