import 'package:flutter/material.dart';
import 'package:my_first_app/ulititly/University_data_store.dart';

class DmcScreen extends StatefulWidget {
  const DmcScreen({Key? key}) : super(key: key);

  @override
  State<DmcScreen> createState() => _DmcScreenState();
}

class _DmcScreenState extends State<DmcScreen> {
  // TextEditingController firstName = TextEditingController();

  // TextEditingController lastName = TextEditingController();
  // late int eng, urdu, maths, bio, chemistry;
  // var totalMarks = 'TotalMarks';
  // var grade = 'Grade';
  // var percentAge = 'PercentAge';
  // var formKey = GlobalKey<FormState>();
  // var _isVisable = false;
  var fruits = [
    'bannana',
    'appple',
    'coconat',
    'mango',
    'orange',
    'pineapple',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text(
            'MY first App',
            style: TextStyle(fontSize: 30.0, color: Colors.black),
          ),
          //centerTitle: true,
        ),
        // body: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.all(18.0),
        //     child: Form(
        //       key: formKey,
        //       child: Column(
        //         children: [
        //           TextFormField(
        //             maxLength: 2,
        //             keyboardType: TextInputType.number,
        //             decoration: InputDecoration(
        //               hintText: 'enter sub Marks',
        //               filled: true,
        //               fillColor: Colors.grey,
        //               enabledBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //             ),
        //             validator: (value) {
        //               if (value!.isEmpty) {
        //                 return 'plz enter sub1 Marks';
        //               } else {
        //                 eng = int.parse(value);
        //                 return null;
        //               }
        //             },
        //           ),
        //           const SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             maxLength: 2,
        //             keyboardType: TextInputType.number,
        //             decoration: InputDecoration(
        //               hintText: 'enter sub2 Marks',
        //               filled: true,
        //               fillColor: Colors.grey,
        //               enabledBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //             ),
        //             validator: (value) {
        //               if (value!.isEmpty) {
        //                 return 'plz enter sub2 Marks';
        //               } else {
        //                 urdu = int.parse(value);
        //                 return null;
        //               }
        //             },
        //           ),
        //           const SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             maxLength: 2,
        //             keyboardType: TextInputType.number,
        //             decoration: InputDecoration(
        //               hintText: 'enter sub3 Marks',
        //               filled: true,
        //               fillColor: Colors.grey,
        //               enabledBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //             ),
        //             validator: (value) {
        //               if (value!.isEmpty) {
        //                 return 'plz enter sub3 Marks';
        //               } else {
        //                 maths = int.parse(value);
        //                 return null;
        //               }
        //             },
        //           ),
        //           const SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             maxLength: 2,
        //             keyboardType: TextInputType.number,
        //             decoration: InputDecoration(
        //               hintText: 'enter sub4 Marks',
        //               filled: true,
        //               fillColor: Colors.grey,
        //               enabledBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //             ),
        //             validator: (value) {
        //               if (value!.isEmpty) {
        //                 return 'plz enter sub4 Marks';
        //               } else {
        //                 bio = int.parse(value);
        //                 return null;
        //               }
        //             },
        //           ),
        //           const SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             maxLength: 2,
        //             keyboardType: TextInputType.number,
        //             decoration: InputDecoration(
        //               prefixIcon: const Icon(
        //                 Icons.keyboard,
        //                 size: 40,
        //                 color: Colors.white,
        //               ),
        //               suffixIcon: const Icon(
        //                 Icons.keyboard,
        //                 size: 40,
        //                 color: Colors.white,
        //               ),
        //               hintText: 'enter sub5 Marks',
        //               filled: true,
        //               counterStyle: const TextStyle(
        //                 height: double.minPositive,
        //               ),
        //               fillColor: Colors.grey,
        //               enabledBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //               counterText: '',
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(16),
        //                 borderSide: const BorderSide(
        //                   color: Colors.red,
        //                   width: 4,
        //                 ),
        //               ),
        //             ),
        //             validator: (value) {
        //               if (value!.isEmpty) {
        //                 return 'plz enter sub5 Marks';
        //               } else {
        //                 chemistry = int.parse(value);
        //                 return null;
        //               }
        //             },
        //           ),
        //           Row(
        //             children: [
        //               Expanded(
        //                 child: ElevatedButton(
        //                   onPressed: () {
        //                     setState(() {
        //                       totalMarks = '';
        //                       percentAge = '';
        //                       grade = '';
        //                     });
        //                   },
        //                   child: const Text('Clear'),
        //                 ),
        //               ),
        //               const SizedBox(
        //                 width: 10,
        //               ),
        //               Expanded(
        //                 child: ElevatedButton(
        //                   onPressed: () {
        //                     if (formKey.currentState!.validate()) {
        //                       var totM = eng + urdu + maths + bio + chemistry;
        //                       var pectAge = totM * 100 / 500;
        //                       if (pectAge >= 80) {
        //                         grade = 'Grage A';
        //                       } else if (pectAge >= 70) {
        //                         grade = 'Grage B';
        //                       } else if (pectAge >= 60) {
        //                         grade = 'Grage c+';
        //                       } else if (pectAge >= 50) {
        //                         grade = 'Grage c';
        //                       } else {
        //                         grade = 'fail';
        //                       }
        //                       totalMarks = 'TotalMarks:$totM';
        //                       percentAge = 'PecentAge:$pectAge';
        //                       setState(() {
        //                         _isVisable = !_isVisable;
        //                         formKey.currentState!.reset();
        //                       });
        //                     }
        //                   },
        //                   child: const Text('Culcate'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Visibility(visible: _isVisable, child: Text(totalMarks)),
        //           Visibility(
        //             visible: _isVisable,
        //             child: Text(percentAge),
        //           ),
        //           Visibility(
        //             visible: _isVisable,
        //             child: Text(grade),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // body: ListView(
        //   children: [
        //     Text(
        //       fruits[0],
        //       style: TextStyle(fontSize: 30),
        //     ),
        //     Text(
        //       fruits[1],
        //       style: TextStyle(fontSize: 30),
        //     ), Text(
        //       fruits[2],
        //       style: TextStyle(fontSize: 30),
        //     ), ],
        // // ),
        // body: ListView.builder(
        //     itemCount: Universitydatastore.AllUniversitydata().length,
        //     itemBuilder: (BuildContext context, int index) {
        //       var university=Universitydatastore.AllUniversitydata()[index];
        //       return Card(
        //         color: Colors.greenAccent,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(30),
        //             side: const BorderSide(color: Colors.black, width: 4)),
        //         child: ListTile(
        //           onTap: () {
        //             print(fruits[index]);
        //           },
        //           leading: Container(
        //               height: 50,
        //               width: 50,
        //               decoration: const BoxDecoration(
        //                 shape: BoxShape.circle,
        //                 color: Colors.black12,
        //               ),
        //               child: Center(
        //                   child: Text(university.Rank.toString(),
        //
        //                 style: const TextStyle(fontSize: 20),
        //               ))),
        //           title: Text(
        //             university.Name,
        //             style: const TextStyle(fontSize: 30),
        //           ),
        //           subtitle:  Text('stringth${university.Stringth}',
        //
        //             style: TextStyle(fontSize: 15),
        //           ),
        //           trailing: Text (
        //             university.Address,
        //
        //           ),
        //         ),
        //       );
        //     }),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
             itemCount: Universitydatastore.AllUniversitydata().length,
            itemBuilder: ( context, index) {
              var University=Universitydatastore.AllUniversitydata()[index];
              return SingleChildScrollView(

                child: Container(
                  color: getColors(University.Name),
                  child: Column(children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(color: Colors.grey,shape: BoxShape.circle,

                  ),
                ),

                   Text(University.Name,style: const TextStyle(fontSize: 30),),
                  Text(University.Address),
                  Text(University.Stringth.toString()),
                Text(University.Rank.toString()),
            ],),

            ),
              );
            },

    )
        )
    );
  }
  Color getColors(String Name){
    switch(Name){
      case'Iqra':return Colors.green;

        case'RMI':return Colors.pinkAccent;
      case'Peshawar':return Colors.blueAccent;
      case'brains':return Colors.purpleAccent;
      case'AWK':return Colors.indigo;
      case'AUP':return Colors.teal;
      case'GIK':return Colors.amberAccent;
      case'City university':return Colors.deepPurple;
      case'North west uni':return Colors.cyanAccent;
      case'babul madina':return Colors.teal;
      default: return Colors.pink;

      }
  }
}
