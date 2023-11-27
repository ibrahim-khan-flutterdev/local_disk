import 'package:flutter/material.dart';
import 'package:t20_app/models/ScheduleModel.dart';
import 'package:t20_app/utility/schedule_data_store.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
        title: const Text('Schedule'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: FutureBuilder<List<ScheduleModel>>(
            future: ScheduleDataStore.getAllMatches(context),
            builder: (BuildContext context, AsyncSnapshot sanshot) {
              if (sanshot.hasData) {
                List<ScheduleModel> myData = sanshot.data;
                return ListView.builder(
                  itemCount: myData.length,
                  itemBuilder: (context, index) {
                    ScheduleModel match = sanshot.data[index];
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
                            match.data,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(  borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/flags/${match.flagOne}',
                                        height: 50,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      match.teamOne,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Vs',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      match.teamTwo,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    Image.asset('assets/flags/${match.flagTwo}',
                                        height: 50,
                                        width: 80,
                                        fit: BoxFit.cover)
                                  ],
                                )
                              ]),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            match.venue,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Container(
                                height: 40,
                                width: 80,
                                decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    )),
                                 child: Center(
                                   child: Text(
                                    'Group:${match.group}',
                                    style: const TextStyle(color: Colors.white),
                                ),
                                 )),
                          ),
                        ],
                      ),
                    );
                  },
                );
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
