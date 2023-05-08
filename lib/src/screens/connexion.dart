import 'package:flutter/material.dart';

import '../constants/images_strings.dart';

class Connexion extends StatelessWidget {
  const Connexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: Text('Connexion'),
        leading: BackButton(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image(
              width: 120,
              image: AssetImage(tSplash),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Connexion'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Color(0xFFF28D31),
                padding: EdgeInsets.all(20),
                fixedSize: Size(200, 60),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
                onPrimary: Colors.white,
                elevation: 15,
                shadowColor: Color(
                  0xFFF28D31,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('S\'inscrire'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFECF2FF),
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(250, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                  onPrimary: Color(0xFFF28D31),
                  side: BorderSide(color: Color(0xFFF28D31), width: 2)
                  // elevation: 15,
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Être éligible'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFECF2FF),
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(250, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                  onPrimary: Color(0xFFF28D31),
                  side: BorderSide(color: Color(0xFFF28D31), width: 2)
                  // elevation: 15,
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Documents'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFECF2FF),
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(250, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                  onPrimary: Color(0xFFF28D31),
                  side: BorderSide(color: Color(0xFFF28D31), width: 2)
                  // elevation: 15,
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Conditions générales'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFECF2FF),
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(250, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                  onPrimary: Color(0xFFF28D31),
                  side: BorderSide(color: Color(0xFFF28D31), width: 2)
                  // elevation: 15,
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            Image(
              image: AssetImage(tSplashFooter),
              width: 200,
            ),
          ]),
        ),
      ),
    );
  }
}
