import 'package:cdc_ci_app/src/screens/conditions.dart';
import 'package:cdc_ci_app/src/screens/faq.dart';
import 'package:cdc_ci_app/src/screens/login.dart';
import 'package:cdc_ci_app/src/screens/souscription.dart';
import 'package:flutter/material.dart';
import '../constants/images_strings.dart';

class SimulationLigne extends StatelessWidget {
  static const routeName = '/simulation-ligne';

  const SimulationLigne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF2FF),
      appBar: AppBar(
        title: const Text('Simulation en ligne'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text('Conditions Générales'),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('FAQ'),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text('Simuler votre épargne'),
              ),
              PopupMenuItem<int>(
                value: 3,
                child: Text('Je dépose mon épargne'),
              ),
              PopupMenuItem<int>(
                value: 4,
                child: Text('Nous contacter'),
              ),
            ],
            onSelected: (item) => selectedItem(context, item),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          //child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: AssetImage(logoHome),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'CDC Épargne Diaspora : Estimer rapidement votre Épargne en ligne.',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Simulation en Ligne',
              style: TextStyle(
                color: Color(0xFF2E7742),
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Simulation CDC Épargne Diaspora qu\'est-ce que c\'est ?',
              style: TextStyle(
                color: Color(0xFF2E7742),
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'La simulation CDC Épargne Diaspora est un outil au format Excel qui vous permet d\'estimer et calculer votre épargne au terme de votre souscription.',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Le montant calculé de votre épargne au terme de votre souscription dépend :',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Du compartiment souscrit',
              textAlign: TextAlign.left,
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- Compartiment 1 => 5 ans (60 mois) à 4% ;',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            Text(
              '- Compartiment 2 => 10 ans (120 mois) à 4,5% ;',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            Text(
              '- Compartiment 3 => 15 ans (180 mois) à 5% ;',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'De l’option de sortie choisie :',
              textAlign: TextAlign.left,
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- Capital bonifié des intérêts ;',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            Text(
              '- Montant maximal d’un prêt immobilier après 5 ans de cotisation ;',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            Text(
              '- Rente viagère :',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                textAlign: TextAlign.center,
                'Vérifier les conditions d\'éligibilité et du premier versement',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xffF28D31),
                  fontSize: 16,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                textAlign: TextAlign.center,
                'Consulter la liste des pièces justificatives',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xffF28D31),
                  fontSize: 16,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Souscription.routeName);
              },
              child: Text('Je souscrit au produit'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Color(0xFFF28D31),
                padding: EdgeInsets.all(15),
                fixedSize: Size(250, 60),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
                onPrimary: Colors.white,
                //elevation: 15,
                shadowColor: Color(
                  0xFFF28D31,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Login.routeName);
              },
              child: Text('Je suis déjà client'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Color(0xFFF28D31),
                padding: EdgeInsets.all(15),
                fixedSize: Size(250, 60),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
                onPrimary: Colors.white,
                //elevation: 15,
                shadowColor: Color(
                  0xFFF28D31,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
    //);
  }

  selectedItem(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).pushNamed(Conditions.routeName);
        break;
      case 1:
        Navigator.of(context).pushNamed(Faq.routeName);
        break;
      case 2:
        Navigator.of(context).pushNamed(SimulationLigne.routeName);
        break;
      case 3:
        print('Je dépose mon épargne');
        break;
      case 4:
        print('Nous contacter');
        break;
    }
  }
}
