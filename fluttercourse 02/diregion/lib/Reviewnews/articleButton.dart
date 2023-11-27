import 'package:badges/badges.dart';
import 'package:diregion/Reviewnews/articalnews/articalnews.dart';
import 'package:diregion/Reviewnews/articalnews/articaluser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RejectArticle extends StatefulWidget {
  const RejectArticle({Key? key}) : super(key: key);

  @override
  State<RejectArticle> createState() => _RejectArticle();
}

class _RejectArticle extends State<RejectArticle>
    with SingleTickerProviderStateMixin {
  List<Tab> tabs = [
    Tab(
      text: 'Users',
    ),
    Tab(
      text: 'News',
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

  TextEditingController searchContentController = TextEditingController();
  int counter = 0;
  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
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
                  padding: const EdgeInsets.all(3),
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
                      color: Color(0xFF2EBBF2)),
                  child: Center(
                      child: Text(
                    'ADMIN',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: height * 0.08,
            width: width * 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFF7F7F7),
            ),
            child: Row(
              children: [
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Text(
                          'Kleine Forscher im Kindergarten „Struwwel ',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        ' peter„has been successfully rejected',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: height * 0.03,
                      width: width * 0.07,
                      color: Color(0xFF002E48),
                      child: Icon(
                        Icons.close,
                        color: Color(0xFFFFFFFF),
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 35),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: TextFormField(
                controller: searchContentController,
                decoration: InputDecoration(
                    hintText: 'Search content',
                    hintStyle: TextStyle(color: Color(0xFF808080)),
                    filled: true,
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF808080),
                    )),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Container(
                  height: height * 0.04,
                  width: width * 0.27,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color(0xFF000000).withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: PopupMenuButton(
                        child: Row(
                          children: [
                            Text(
                              'Posted by',
                              style: TextStyle(
                                  color: Color(0xFF000000).withOpacity(0.4)),
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
                      border:
                          Border.all(color: Color(0xFF000000).withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: PopupMenuButton(
                        child: Row(
                          children: [
                            Text(
                              'Category',
                              style: TextStyle(
                                  color: Color(0xFF000000).withOpacity(0.4)),
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
                padding: const EdgeInsets.fromLTRB(28, 20, 0, 0),
                child: SizedBox(
                    height: 13, child: Image.asset('assets/images/sort.png')),
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
          TabBar(
            labelStyle: TextStyle(fontSize: 13),
            indicatorColor: Color(
              0xFF000000,
            ),
            labelColor: Color(0xFF808080).withOpacity(0.4),
            controller: _tabController,
            tabs: tabs,
            onTap: (int index) => onTap(index),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              ArticleUser(),
              ArticleNews(),
            ]),
          ),
        ]),
      ),
    );
  }
}
