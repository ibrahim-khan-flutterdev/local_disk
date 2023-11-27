import 'package:badges/badges.dart';
import 'package:diregion/tabbarview/archived.dart';
import 'package:diregion/tabbarview/drafts.dart';
import 'package:diregion/tabbarview/published.dart';
import 'package:diregion/tabbarview/under_review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboarbScreen extends StatefulWidget {
  const DashboarbScreen({Key? key}) : super(key: key);

  @override
  State<DashboarbScreen> createState() => _DashboarbScreenState();
}

class _DashboarbScreenState extends State<DashboarbScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  List<Tab> tabs = [
    Tab(
      text: 'Published',
    ),
    Tab(
      text: 'Under Review',
    ),
    Tab(
      text: 'Drafts',
    ),
    Tab(
      text: 'Archived',
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  void onTap(int index) {
    setState(() {
      _tabController.index = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  int counter = 0;
  @override
  late TabController _tabController;

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                  child: Text('diregion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFF002E48))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 5, 0, 0),
                  child: Badge(
                    padding: EdgeInsets.all(3),
                    position: BadgePosition.topEnd(top: 5, end: 8),
                    animationDuration: Duration(milliseconds: 300),
                    animationType: BadgeAnimationType.slide,
                    badgeContent: Text(
                      counter.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    child: IconButton(
                      icon: SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/images/vector.png')),
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Container(
                    height: height * 0.025,
                    width: width * 0.052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFE6E6E6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
                  child: Text(
                    'Roberto',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                  child: Container(
                    height: height * 0.030,
                    width: width * 0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFFF4F4F)),
                    child: Center(
                        child: Text(
                      'Pending',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
              child: Container(
                height: height * 0.05,
                width: width * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF7F7F7)),
                child: Center(
                    child: Text(
                        'Your account is currently under review. Learn more.')),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                child: Text(
                  'Hello Roberto',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    20,
                    9,
                    0,
                    0,
                  ),
                  child: Container(
                    height: height * 0.025,
                    width: width * 0.052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFE6E6E6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 9, 0, 0),
                  child: Text('Ramstein News'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(110, 9, 0, 0),
                        child: Text(
                          'My Account ',
                          style: TextStyle(color: Color(0xFF808080)),
                        ),
                      ),
                      SizedBox(
                          height: 13,
                          child: Image.asset('assets/images/vector1.png')),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF808080),
                    ),
                    fillColor: Color(0xFFF2F2F2),
                    hintText: 'Search content',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      height: height * 0.04,
                      width: width * 0.27,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF000000).withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: PopupMenuButton(
                            child: Row(
                              children: [
                                Text(
                                  'Posted by',
                                  style: TextStyle(
                                      color:
                                          Color(0xFF000000).withOpacity(0.4)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 13,
                                  color: Color(0xFF000000).withOpacity(0.4),
                                )
                              ],
                            ),
                            itemBuilder: (context) => <PopupMenuEntry>[
                                  PopupMenuItem(
                                    child: null,
                                  )
                                ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 30, 0),
                    child: Container(
                      height: height * 0.04,
                      width: width * 0.26,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF000000).withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: PopupMenuButton(
                            child: Row(
                              children: [
                                Text(
                                  'Category',
                                  style: TextStyle(
                                      color:
                                          Color(0xFF000000).withOpacity(0.4)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 13,
                                  color: Color(0xFF000000).withOpacity(0.4),
                                )
                              ],
                            ),
                            itemBuilder: (context) => <PopupMenuEntry>[
                                  PopupMenuItem(
                                    child: null,
                                  )
                                ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 20, 0, 0),
                    child: SizedBox(
                        height: 13,
                        child: Image.asset('assets/images/sort.png')),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          'Sortieren',
                          style: TextStyle(color: Color(0xFF808080)),
                        ),
                      ))
                ],
              ),
            ),
            TabBar(
              labelStyle: TextStyle(fontSize: 13),
              indicatorColor: Color(0xFF000000),
              labelColor: Color(0xFF808080).withOpacity(0.4),
              controller: _tabController,
              tabs: tabs,
              onTap: (int index) => onTap(index),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Published(),
                UnderReview(),
                Drafts(),
                Archived(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
