import 'package:flutter/material.dart';

import '../constants/images_strings.dart';

class InscriptionReussie extends StatelessWidget {
  const InscriptionReussie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: Text('Inscription Reussie'),
        leading: BackButton(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 50,
            ),
            Image(
              width: 300,
              image: AssetImage(tInsReussie),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Connexion'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Color(0xFFF28D31),
                padding: EdgeInsets.all(20),
                fixedSize: Size(250, 60),
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
          ]),
        ),
      ),
    );
  }
}
