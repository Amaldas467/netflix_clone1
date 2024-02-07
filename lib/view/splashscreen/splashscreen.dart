import 'dart:async';
import 'package:flutter/material.dart';
import 'package:netflix_clone/view/user_screen/userscreen.dart';
import 'package:netflix_clone/view/utils/colorconstant.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Userscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("asset/logos_netflix.png"),
          ),
          SizedBox(
            height: 25,
          ),
          CircularProgressIndicator.adaptive(
            backgroundColor: Colorconstant.mycustomred,
          )
        ],
      ),
    );
  }
}
