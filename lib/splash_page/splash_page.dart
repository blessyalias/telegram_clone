import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/home_page.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
   void initState() {
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>HomePage()),
        );
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: 80,
                width: 80,
                child: Image.asset(
                  "assets/images/images.png",
                )),
          ),
          SizedBox(
            height: 25,
          ),
          CircularProgressIndicator.adaptive(
            backgroundColor: Colors.blue,
          )
        ],
      ),
    );
  }
}