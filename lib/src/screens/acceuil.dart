import 'package:flutter/material.dart';

import '../constants/images_strings.dart';

class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Accueil'),
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              'Bonjour John DOE, bienvenue à nouveau',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Versement'),
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
              child: Text('Comptes Bancaires'),
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
              child: Text('Mise à jour des infos'),
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
              child: Text('Solde du compte'),
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
