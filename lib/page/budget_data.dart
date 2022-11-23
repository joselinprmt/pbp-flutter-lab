import 'package:flutter/material.dart';
import 'package:counter_7/utilities/drawer.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();
}

void addBudget(String judul, int nominal, String jenis, DateTime tanggal) {
  _DataBudgetPageState.judul.add(judul);
  _DataBudgetPageState.nominal.add(nominal);
  _DataBudgetPageState.jenis.add(jenis);
  _DataBudgetPageState.tanggal.add(tanggal);
}

class _DataBudgetPageState extends State<DataBudgetPage> {
  static List<String> judul = [];
  static List<int> nominal = [];
  static List<String> jenis = [];
  static List<DateTime> tanggal = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: buildDrawer(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // Judul section
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(judul[index],
                            style: const TextStyle(
                                fontSize: 20, color: Colors.blue),
                            textAlign: TextAlign.left),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Nominal section
                          Padding(
                            // Menggunakan padding
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "${jenis[index] == "Pemasukan" ? "+ " : "- "}Rp.${nominal[index]}",
                                  style: const TextStyle(fontSize: 15),
                                  textAlign: TextAlign.left),
                            ),
                          ),
                          // Jenis section
                          Padding(
                            // Menggunakan padding
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(jenis[index],
                                  style: const TextStyle(fontSize: 15),
                                  textAlign: TextAlign.right),
                            ),
                          ),
                        ]),
                    // Tanggal section
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            'Tanggal: ${tanggal[index].day}/${tanggal[index].month}/${tanggal[index].year}',
                            style: const TextStyle(fontSize: 15),
                            textAlign: TextAlign.left),
                      ),
                    ),
                  ],
                )),
          );
        },
        itemCount: judul.length,
      ),
    );
  }
}
