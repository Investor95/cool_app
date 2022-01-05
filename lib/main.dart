// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyBettingApp());
}

class MyBettingApp extends StatefulWidget {
  createState() => MyBettingAppState();
}

class MyBettingAppState extends State<MyBettingApp> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // Making a betting app
  @override
  build(ctx) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  child: Text(
                    'Home',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  child: Text(
                    'VIP Tips',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.grey),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Padding(
                  child: Text(
                    'Deluxe VIP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    'Premium VIP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    'Elite VIP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    'Fixed VIP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    'Single VIP + Double VIP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    'Daily 10+ Odds VIP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    'HT-FT VIP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    'Correct Score VIP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  child: Text(
                    'Free Tips',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.grey),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Padding(
                  child: Text(
                    "Today's Top 3 Tips",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    "Football Combine",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    "Single Game",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    "Double Game",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    "Over-Under",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    "Today's 20+ odds",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    "BasketBall",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    "Tennis",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  child: Text(
                    'Info',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.grey),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Padding(
                  child: Text(
                    "Subscriptions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
                Padding(
                  child: Text(
                    "Privacy policy",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 10),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://png.pngtree.com/thumb_back/fh260/back_our/20190621/ourmid/pngtree-poster-design-for-the-2018-world-cup-football-match-image_192456.jpg'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.yellow)),
                      child: IconButton(
                        onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.yellow)),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Center(
                            child: Text(
                              'Betbook',
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.green)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Center(
                            child: Text(
                              'Vip Tips',
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.green)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Center(
                            child: Text(
                              'FreeTips',
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Deluxe VIP',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '(All VIP Access)',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Today's Top 3 Tips",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Premium VIP',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '(HT-FT + Correct',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Score VIP Access)',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Football Combine",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 30),
                                    child: Text(
                                      'Elite VIP',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "Single Game",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Fixed VIP',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                      "Double Game",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Single VIP ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '+ Double VIP',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      "Over-Under",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 1),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Daily 10+ Odds VIP',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 2),
                                    child: Text(
                                      "Today's 20+ Odds",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          'HT-FT VIP',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Text(
                                      "Basketball",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 1),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Correct Score VIP',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://images.indianexpress.com/2020/04/aiff-football-1200.jpg',
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: Text(
                                      "Tennis",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
