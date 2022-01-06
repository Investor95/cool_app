import 'package:cool_app/screens/LiveScores.dart';
import 'package:cool_app/strings/strings.dart';
import 'package:flutter/material.dart';

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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LiveScores()));
                  },
                  child: Padding(
                    child: Text(
                      "Today's Match",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    padding: EdgeInsets.only(left: 20, top: 10),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LiveScores()));
                  },
                  child: Padding(
                    child: Text(
                      "LiveScores",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    padding: EdgeInsets.only(left: 20, top: 10),
                  ),
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
                  image: NetworkImage(backgroundImageURL), fit: BoxFit.cover)),
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
                              'CheckScores',
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
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (cp) => LiveScores()));
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                    footballImage,
                                  ),
                                ),
                                Text(
                                  "Today's Match",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
