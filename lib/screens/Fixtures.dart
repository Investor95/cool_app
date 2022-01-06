import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:cool_app/strings/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'Fixtures.dart';

class Fixtures extends StatefulWidget {
  const Fixtures({Key? key}) : super(key: key);

  @override
  _FixturesState createState() => _FixturesState();
}

class _FixturesState extends State<Fixtures> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  var isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(backgroundImageURL), fit: BoxFit.cover)),
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
                                'Fixtures',
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
                      widget
                        ..addAll([
                          // 4 4 2 - 5 4 1
                          Column(
                            children: [
                              Image.asset(
                                'assets/home_team.png',
                                scale: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/home_team.png',
                                    scale: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ]);

                      widget
                        ..addAll([
                          // 4 4 2 - 5 4 1
                          Column(
                            children: [
                              Image.asset(
                                'assets/away_team.png',
                                scale: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                  Image.asset(
                                    'assets/away_team.png',
                                    scale: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ]);

                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/football_field.jpg'),
                          fit: BoxFit.cover,
                        )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: widget as List<Widget>,
                        ),
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
