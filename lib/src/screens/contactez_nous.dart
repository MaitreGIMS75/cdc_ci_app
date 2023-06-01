import 'package:cdc_ci_app/src/screens/conditions.dart';
import 'package:cdc_ci_app/src/screens/faq.dart';
import 'package:cdc_ci_app/src/screens/pieces_justificatives.dart';
import 'package:cdc_ci_app/src/screens/simulation_ligne.dart';
import 'package:cdc_ci_app/src/screens/verifier_conditions.dart';

import 'package:flutter/material.dart';
import '../constants/images_strings.dart';

class ContactezNous extends StatelessWidget {
  static const routeName = '/contactez-nous';

  const ContactezNous({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF2FF),
      appBar: AppBar(
        title: const Text('Contactez - Nous'),
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
                child: Text('Vérifier les conditions'),
              ),
              PopupMenuItem<int>(
                value: 5,
                child: Text('Pièces justificatives'),
              ),
              PopupMenuItem<int>(
                value: 6,
                child: Text('Nous contacter'),
              ),
            ],
            onSelected: (item) => selectedItem(context, item),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    width: MediaQuery.of(context).size.width * 0.9,
                    image: AssetImage(logoHome),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'CDC Épargne Diaspora : Vous souhaitez parler à un Conseiller ?',
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
                    'Contactez-Nous',
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
                    'VOUS N\'ÊTES PAS ENCORE CLIENT ?',
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
                    'Votre compte est en cours d\'ouverture / Vous souhaitez ouvrir un compte ou vous informer sur notre produit ?',
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
                    'Afin de répondre au mieux à vos questions, vous pouvez prendre contact directement avec notre Service Commercial :',
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
                    'Nos experts dédiés sont disponibles du lundi au vendredi de 8h à 19h et le samedi de 9h à 13h.',
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
                    'Vous pouvez nous laisser un message via le formulaire de réclamation.',
                    style: TextStyle(
                      //color: Color(0xff2E7742),
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('+ 225 27 22 55 92 05'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFECF2FF),
                          padding: EdgeInsets.all(10),
                          fixedSize: Size(300, 60),
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'VOUS ÊTES CLIENT ?',
                    style: TextStyle(
                      color: Color(0xFF2E7742),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Rendez-vous sur votre espace sécurisé pour déposer votre réclamation dans la rubrique ouvrir un ticket.',
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
                    'Vous offrir la meilleure qualité de service est au cœur de nos préoccupations',
                    style: TextStyle(
                      //color: Color(0xff2E7742),
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ]),
          ),
        ),
      ),
    );
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
        Navigator.of(context).pushNamed(VerifierConditions.routeName);
        break;
      case 5:
        Navigator.of(context).pushNamed(PiecesJustificatives.routeName);
        break;
      case 6:
        Navigator.of(context).pushNamed(ContactezNous.routeName);
        break;
    }
  }
}
