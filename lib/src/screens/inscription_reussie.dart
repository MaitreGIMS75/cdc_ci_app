import 'package:cdc_ci_app/src/screens/dashboard.dart';
import 'package:cdc_ci_app/src/screens/home.dart';
import 'package:flutter/material.dart';

import '../constants/images_strings.dart';

class InscriptionReussie extends StatelessWidget {
  const InscriptionReussie({super.key});

  static const routeName = '/inscription-reussie';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: Text('Inscription Reussie'),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
              height: 50,
            ),
            Text(
              'Vous recevrez vos accès par e-mail pour vous connecter et effectuer vos opérations',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 24,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              child: Row(
                children: [
                  Text('Retournez à l\'acceuil'),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.home,
                    size: 24,
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Color(0xFFF28D31),
                padding: EdgeInsets.all(20),
                fixedSize: Size(300, 60),
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
