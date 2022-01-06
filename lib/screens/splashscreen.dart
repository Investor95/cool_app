import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cool_app/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MyBettingApp())));
  }

  build(context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: CachedNetworkImageProvider(
                'https://png.pngtree.com/thumb_back/fh260/back_our/20190621/ourmid/pngtree-poster-design-for-the-2018-world-cup-football-match-image_192456.jpg'),
            fit: BoxFit.cover,
          )),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CheckScores',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              Text('BETTING TIPS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 33,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
