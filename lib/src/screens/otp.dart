import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
              height: 30,
            ),
            Text(
              'Vérifiez votre email et entrez le code reçu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                '0.0.0.0',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                ),
              ),
              height: 140.0,
              width: 300.0,
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                border: Border.all(color: Color(0xFFECF2FF), width: 3.0),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Enregistrement bancaire ou moyen de versement',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Validé'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Color(0xFF2E7742),
                padding: EdgeInsets.all(20),
                fixedSize: Size(200, 60),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
                onPrimary: Colors.white,
                elevation: 5,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
