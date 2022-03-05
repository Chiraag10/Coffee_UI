import 'dart:async';
import 'main.dart';
import 'package:coffee_app/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  //Splash Screen Class
  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
       const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
           MaterialPageRoute(builder: (context) =>  const Navigatr())));
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      // Greeting Text Style
      color: Color(0xffd27842),
      fontSize: 60.0,
      fontWeight: FontWeight.w900,
    );
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'lib/assets/Splash screen Image.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Welcome',
                  style: textStyle,
                ),
                Image.asset(
                  'lib/assets/Coffee app.png',
                  colorBlendMode: BlendMode.luminosity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
