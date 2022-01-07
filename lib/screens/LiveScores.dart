import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cool_app/strings/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LiveScores extends StatefulWidget {
  const LiveScores({Key? key}) : super(key: key);

  @override
  _LiveScoresState createState() => _LiveScoresState();
}

class _LiveScoresState extends State<LiveScores> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:  CachedNetworkImageProvider(backgroundImageURL), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
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
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.all(color: Colors.yellow)),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Center(
                              child: Text(
                                'Live Scores',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 20),
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
                  StreamBuilder(stream: () async* {
                    while (true) {
                      await Future.delayed(Duration(seconds: 1));
                      var data = await get(Uri.parse(livescoreApi));

                      yield json.decode(data.body);
                    }
                  }(), builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Map apiDetails = snapshot.data as Map;
                      var limit = 10;
                      List<Widget> widget = [];

                      for (int i = 0; i < apiDetails['result'].length;) {
                        widget
                          ..addAll([
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                      border: Border.all(color: Colors.yellow)),
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Text(
                                          '${apiDetails['result'][i]['event_date']} ${apiDetails['result'][i]['event_time']}',
                                          style:
                                              TextStyle(color: Colors.yellow),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '${apiDetails['result'][i]['league_name']}',
                                          style:
                                              TextStyle(color: Colors.yellow),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '${apiDetails['result'][i]['event_home_team']}    vs    ${apiDetails['result'][i]['event_away_team']}',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '${apiDetails['result'][i]['event_final_result']}',
                                          style:
                                              TextStyle(color: Colors.yellow),
                                        ),
                                      ],
                                    ),
                                  )),
                            )
                          ]);
                        i = i + 1;
                      }
                      return Column(
                        children: widget as List<Widget>,
                      );
                    }
                    return Container(
                      height: 300,
                      child: Center(
                        child: Container(
                          height: 100,
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircularProgressIndicator(
                                  color: Colors.yellow,
                                ),
                                Text(
                                  "Please wait...It's Loading",
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 15),
                                ),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
