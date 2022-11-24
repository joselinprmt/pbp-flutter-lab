import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';

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
      watchList.add(MyWatchList.fromJson(w));
    }
  }

  return watchList;
}
