import 'package:cdc_ci_app/src/screens/dashboard.dart';
import 'package:cdc_ci_app/src/screens/home.dart';
import 'package:flutter/material.dart';

import '../constants/images_strings.dart';
import '/src/screens/login.dart';
import 'inscription_reussie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF28D31),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            image: AssetImage(tSplashTopLogo),
          ),
          SizedBox(
            height: 30,
          ),
          Image(
            image: AssetImage(tSplashDesc),
            width: 200,
          ),
        ]),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 10000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }
}
