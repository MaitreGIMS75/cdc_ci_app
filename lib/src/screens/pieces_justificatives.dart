import 'package:cdc_ci_app/src/screens/simulation_ligne.dart';
import 'package:cdc_ci_app/src/screens/verifier_conditions.dart';
import 'package:flutter/material.dart';

import '../constants/images_strings.dart';
import 'conditions.dart';
import 'contactez_nous.dart';
import 'faq.dart';

class PiecesJustificatives extends StatelessWidget {
  const PiecesJustificatives({super.key});
  static const routeName = '/pieces-justificatives';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        //leading: BackButton(),
        title: const Text('Pièces Justificatives'),
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
                'Pièces justificatives et documents à déposer en ligne',
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
              'Scannez ou photographiez vos pièces justificatives et déposez-les en ligne en toute simplicité pendant votre souscription.',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Un justificatif d\'identité',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- Obligatoirement le passeport à la page photo',
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
              'Un justificatif d\'expatriation',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- Contrat de travail',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            Text(
              '- Attestation de travail',
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
              'Un justificatif de numéro mobile',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- Facture de téléphone mobile',
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
              'Un justificatif de domicile',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- Quittance de loyer',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            Text(
              '- Avis d’imposition',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            Text(
              '- Facture d\'eau, d\’électricité, de gaz, de téléphonie',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            Text(
              '- Attestation d’hébergement',
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
              'Un justificatif de filiation',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- CNI (Carte national d\'identité)',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            Text(
              '- Extrait de naissance, etc...',
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
              'Un justificatif d\'adresse bancaire',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- Votre relevé d\'identité bancaire (RIB, IBAN) à votre nom.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Il est impératif de fournir l’ensemble des pièces justificatives demandées, au risque de ne pas pouvoir obtenir l’ouverture de votre compte en ligne. Un dossier incomplet est un motif de refus de la part de la CDC-CI.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
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
