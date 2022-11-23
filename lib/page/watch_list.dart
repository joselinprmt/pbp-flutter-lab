import 'package:flutter/material.dart';
import 'package:counter_7/utilities/drawer.dart';
import 'package:counter_7/utilities/fetch_mywatchlist.dart';
import 'package:counter_7/page/watch_detail.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  _MyWatchListState createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),

        // Menambahkan drawer menu
        drawer: buildDrawer(context),
        body: FutureBuilder(
            future: fetchMywatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 7),
                    ],
                  );
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => InkWell(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: snapshot.data![index].fields.watched
                                ? Colors.blue
                                : Colors.red,
                            width: 2,
                          ),
                        ),
                        child: Row(children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: snapshot.data![index].fields.watched,
                            onChanged: (bool? value) {
                              setState(() {
                                snapshot.data![index].fields.watched =
                                    !snapshot.data![index].fields.watched;
                              });
                            },
                          ),
                          Text(
                            "${snapshot.data![index].fields.title}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyWatchDetailPage(
                                    film: snapshot.data![index])));
                      },
                    ),
                  );
                }
              }
            }));
  }
}
