import 'package:flutter/material.dart';

import '../models/HistoryModel.dart';
import '../utility/history_data_store.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: FutureBuilder<List<HistoryModel>>(
            future: HistoryDataStore.getAllHistory(context),
            builder: (BuildContext context, AsyncSnapshot sanshot){
              if (sanshot.hasData) {
                List<HistoryModel> myData = sanshot.data;
                return ListView.builder(
                    itemCount: myData.length,
                    itemBuilder: (context, index) {
                      HistoryModel History = sanshot.data[index];
                      return Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.purple,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              History.host,
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              History.year,
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      History.winner,
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/flags/${History.winnerFlag}',
                                        height: 50,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      'VS',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          History.runnerUp,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/flags/${History.runnerFlag}',
                                              height: 50,
                                              width: 80,
                                              fit: BoxFit.cover,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    });
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
