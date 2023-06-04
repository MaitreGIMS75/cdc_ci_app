import 'package:cdc_ci_app/src/screens/pieces_justificatives.dart';
import 'package:cdc_ci_app/src/screens/simulation_ligne.dart';
import 'package:flutter/material.dart';

import '../constants/images_strings.dart';
import 'conditions.dart';
import 'contactez_nous.dart';
import 'faq.dart';

class VerifierConditions extends StatelessWidget {
  const VerifierConditions({super.key});
  static const routeName = '/verifier-conditions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        //leading: BackButton(),
        title: const Text('Conditions d\'égibilité'),
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
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: AssetImage(logoHome),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Conditions d\'éligibilité au produit CDC Épargne Diaspora',
                style: TextStyle(
                  color: Color(0xFFF28D31),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Qui peut souscrire au plan Épargne Diaspora ?',
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Toute personne physique : \n - Majeur capable \n - De nationalité Ivoirienne \n - Résidant hors de la Côte d\'Ivoire \n\n Sous réserve d\'acceptation après étude de votre dossier par la CDC-CI. ',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Quels sont les avantages offerts par le produit CDC Epargne Diaspora ?',
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'CDC Epargne Diaspora vous garantit : \n\n - un taux d’intérêt fixe sur toute la durée de l’épargne \n - un taux d’intérêt croissant avec la durée choisie d\'indisponibilité des sommes \n - la possibilité de souscrire simultanément à plusieurs contrats avec chacun un taux d’intérêt ',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'CDC Epargne Diaspora vous propose en plus :',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '- des garanties de prévoyance optionnelles pendant la durée de blocage (décès ou invalidité, sécurité famille et santé retraite) \n la possibilité de choisir entre une ou plusieurs sorties à la fin de la période d’épargne (retraite complémentaire, acquisition d’un logement, capital bonifié d’intérêts).',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Quel versement à l’ouverture du compte ?',
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Le montant minimum par opération (versement périodique programmé ou libre) est de 100 euros soit65.596 FCFA. Vous avez la possibilité de définir vous-mêmes la périodicité des versements permettant d’alimenter votre épargne. Vous avez également la possibilité d’effectuer d’autres versements libres.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
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
