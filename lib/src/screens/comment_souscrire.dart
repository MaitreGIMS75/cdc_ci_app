import 'package:cdc_ci_app/src/screens/conditions.dart';
import 'package:cdc_ci_app/src/screens/faq.dart';
import 'package:cdc_ci_app/src/screens/login.dart';
import 'package:cdc_ci_app/src/screens/simulation_ligne.dart';
import 'package:cdc_ci_app/src/screens/souscription.dart';
import 'package:flutter/material.dart';
import '../constants/images_strings.dart';
import 'contactez_nous.dart';

class CommentSouscrire extends StatelessWidget {
  static const routeName = '/comment-souscrire';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: const Text('Comment ça marche'),
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
                'Souscrire au produit CDC Épargne Diaspora : Comment faire ?',
                style: TextStyle(
                  //color: Color(0xff2E7742),
                  fontSize: 16,
                  fontFamily: 'Quicksand',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Image(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                image: AssetImage(commentSouscrire),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'CDC Épargne Diaspora est le produit d’épargne qui permet aux Ivoiriens de la diaspora d’ouvrir un compte d’épargne en Côte d’Ivoire, directement sur Internet, depuis leur ordinateur ou leur smartphone. L’ouverture du compte CDC Épargne Diaspora s’effectue en plusieurs étapes :',
                style: TextStyle(
                  //color: Color(0xff2E7742),
                  fontSize: 16,
                  fontFamily: 'Quicksand',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                elevation: 10,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[500],
                          radius: 30,
                          backgroundImage: AssetImage(un),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Remplir le formulaire',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          'Renseigner les différents champs et joindre les documents nécessaires à l’ouverture du compte. Les champs avec un astérisque (*) sont obligatoires.',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Quicksand',
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                elevation: 10,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 380,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[500],
                          radius: 30,
                          backgroundImage: AssetImage(deux),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Vérification de votre dossier et activation de votre compte',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          'La CDC-CI a 72h au plus pour vérifier les informations renseignées et activer le compte (des informations complémentaires vous seront demandées en cas de besoin).',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Quicksand',
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                elevation: 10,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[500],
                          radius: 30,
                          backgroundImage: AssetImage(trois),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Signer le contrat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          'Votre contrat vous sera transmis par voie électronique. Vous devrez le signer (à la souris, au doigt, au stylet, etc.) et nous le retourner depuis votre espace client.',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Quicksand',
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
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
        Navigator.of(context).pushNamed(ContactezNous.routeName);
        break;
    }
  }
}
