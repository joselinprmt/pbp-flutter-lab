import 'package:flutter/material.dart';
import 'package:counter_7/utilities/drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';

class MyWatchDetailPage extends StatelessWidget {
  final MyWatchList film;
  const MyWatchDetailPage({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: buildDrawer(context),
      body: Column(children: [
        Padding(
          // Menggunakan padding
          padding: const EdgeInsets.all(30),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              film.fields.title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(children: [
          const Padding(
            // Menggunakan padding
            padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Release Date:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left),
            ),
          ),
          Padding(
            // Menggunakan padding
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(film.fields.releaseDate,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.left),
            ),
          ),
        ]),
        Row(children: [
          const Padding(
            // Menggunakan padding
            padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Rating:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left),
            ),
          ),
          Padding(
            // Menggunakan padding
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text("${film.fields.rating}/5",
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.left),
            ),
          ),
        ]),
        Row(children: [
          const Padding(
            // Menggunakan padding
            padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Status:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left),
            ),
          ),
          Padding(
            // Menggunakan padding
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                  film.fields.watched == true ? "watched" : "not watched",
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.left),
            ),
          ),
        ]),
        const Padding(
          // Menggunakan padding
          padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Review:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
        ),
        Padding(
          // Menggunakan padding
          padding: const EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(film.fields.review,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.left),
          ),
        ),
      ]),
      bottomSheet: Container(
        margin: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
