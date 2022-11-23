import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';

List<bool> filmWatched = [];
Future<List<MyWatchList>> fetchMywatchList() async {
  var url = Uri.parse('https://tugas-2-app.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );
  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object MyWatchList dan filmWatched
  List<MyWatchList> watchList = [];
  for (var w in data) {
    if (w != null) {
      String model = w["model"].toString();
      int pk = int.parse(w["pk"].toString());
      var field = w["fields"];

      bool watched = field["watched"].toString() == "True" ? true : false;
      String title = field["title"].toString();
      int rating = int.parse(field["rating"].toString());
      String releaseDate = field["release_date"].toString();
      String review = field["review"].toString();

      var fields = Fields(
          watched: watched,
          title: title,
          rating: rating,
          releaseDate: releaseDate,
          review: review);

      var watchlist = MyWatchList(model: model, pk: pk, fields: fields);

      watchList.add(watchlist);
      filmWatched.add(fields.watched);
    }
  }

  return watchList;
}
