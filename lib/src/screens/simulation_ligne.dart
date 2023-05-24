import 'package:cdc_ci_app/src/screens/conditions.dart';
import 'package:cdc_ci_app/src/screens/contactez_nous.dart';
import 'package:cdc_ci_app/src/screens/faq.dart';
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
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          //child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            SizedBox(
              height: 5,
            ),
            Text(
              '\t\t\t\t* Non réversible en tenant compte de l’âge de l’épargnant au terme du contrat ;',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '\t\t\t\t* Réversible en tenant compte de l’âge de l’épargnant et de l’âge du conjoint au terme du contrat.',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Comment estimer mon épargne en ligne ?',
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
              'Pour cela vous devez vous tourner vers le simulateur pour connaitre votre épargne à terme de votre livret CDC Épargne Diaspora.',
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
              'Pour simuler sa souscription CDC Épargne Diaspora et estimer son épargne, il est indispensable de tenir compte de certains éléments tels que :',
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
              'Étape 1 : Choisir votre compartiment',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: AssetImage(selectCompart),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Etape 2 : Sélectionner la périodicité de vos versements ainsi que votre montant minimum de versement selon votre périodicité choisie',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: AssetImage(selectPeriod),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Etape 3 : Vous obtenez en fin le montant de votre épargne en fonction de l’option de sortie choisie',
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
              '\t\t\t\t - Capital bonifié des intérêts ',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: AssetImage(montantEpargne),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '\t\t\t\t - Montant maximal d’un prêt immobilier après 5 ans de cotisation ;',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: AssetImage(pretImmo),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\t\t\t\t - Rente viagère ;',
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
              '\t\t\t\t\t\t\t\t  - Non réversible en tenant compte de l’âge de l’épargnant au terme du contrat  ;',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: AssetImage(renteViagere),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '\t\t\t\t\t\t\t\t  - Réversible en tenant compte de l’âge de l’épargnant et de l’âge du conjoint au terme du contrat.',
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
              image: AssetImage(renteViagere),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: OutlinedButton(
                onPressed: () {},
                child: Text('Téléchargez le simulateur'),
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
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Vous avez besoin d\'aide ?',
                style: TextStyle(
                  //color: Color(0xff2E7742),
                  fontSize: 18,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Contactez-nous'),
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
            ),
            SizedBox(
              height: 30,
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
        Navigator.of(context).pushNamed(ContactezNous.routeName);
        break;
    }
  }
}
