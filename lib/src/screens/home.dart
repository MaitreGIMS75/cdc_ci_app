import 'package:cdc_ci_app/src/screens/comment_souscrire.dart';
import 'package:cdc_ci_app/src/screens/login.dart';
import 'package:cdc_ci_app/src/screens/pieces_justificatives.dart';
import 'package:cdc_ci_app/src/screens/simulation_ligne.dart';
import 'package:cdc_ci_app/src/screens/verifier_conditions.dart';
import 'package:flutter/material.dart';

import '../constants/images_strings.dart';
import 'conditions.dart';
import 'contactez_nous.dart';
import 'faq.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: Text('Accueil'),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image(
                width: MediaQuery.of(context).size.width * 0.9,
                image: AssetImage(logoHome),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Une Épargne unique en Côte d\'Ivoire pour des avantages et des débouchés multiples.',
                style: TextStyle(
                  //color: Color(0xff2E7742),
                  fontSize: 16,
                  fontFamily: 'Quicksand',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image(
                width: MediaQuery.of(context).size.width * 0.9,
                image: AssetImage(descProduit),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    '- Constituer une épargne solide et rentable en Côte d\'Ivoire',
                    style: TextStyle(
                      //color: Color(0xff2E7742),
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '- Réaliser vos projets d\'acquisition immobilière personnelle en Côte d\'Ivoire',
                    style: TextStyle(
                      //color: Color(0xff2E7742),
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '- Bénéficier d\'une rente de retraite viagère en complément ou en remplacement d\'une retraite traditionnelle',
                    style: TextStyle(
                      //color: Color(0xff2E7742),
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Un livret accessible à distance via internet grâce à un espace dédié et sécurisé',
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
                    'Souscrivez à distance et en toute sécurité',
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(Login.routeName);
                    },
                    child: Text(
                      'Accédez à vos comptes',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xffF28D31),
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(CommentSouscrire.routeName);
                },
                child: Text('Comment ça marche'),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Color(0xFFF28D31),
                  padding: EdgeInsets.all(8),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.7, 60),
                  textStyle: TextStyle(
                    fontSize: 16,
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
