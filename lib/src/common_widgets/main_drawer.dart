import 'package:cdc_ci_app/src/screens/avenant.dart';
import 'package:cdc_ci_app/src/screens/liste_souscriptions.dart';
import 'package:cdc_ci_app/src/screens/souscription.dart';
import 'package:cdc_ci_app/src/screens/souscription_epargnant.dart';
import 'package:flutter/material.dart';

import '../constants/images_strings.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                color: Color(0xFFF28D31),
                child: Image(
                  width: MediaQuery.of(context).size.width * 0.9,
                  image: AssetImage(logoDrawer),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.dashboard,
                  size: 20,
                ),
                title: Text(
                  'Tableau de bord',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
              ExpansionTile(
                title: Text('Messagerie'),
                leading: Icon(Icons.message),
                childrenPadding: EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                    title: Text(
                      'Boite de réception',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Messages envoyés',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Compte bancaires'),
                leading: Icon(Icons.account_balance),
                childrenPadding: EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                    title: Text(
                      'Vos comptes',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Données personnelles',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
              ExpansionTile(
                title: Text('Mot de passe'),
                leading: Icon(Icons.lock),
                childrenPadding: EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                    title: Text(
                      'Mettre à jour',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Identifications'),
                leading: Icon(Icons.person),
                childrenPadding: EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                    title: Text(
                      'Vos demandes',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Demander une mise à jour',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Souscription',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
              ExpansionTile(
                title: Text('Avenant'),
                leading: Icon(Icons.add_box),
                childrenPadding: EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                    title: Text(
                      'Vos demandes',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Faire une demande',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(Avenant.routeName);
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Souscription'),
                leading: Icon(Icons.menu),
                childrenPadding: EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                    title: Text(
                      'Vos demandes',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(ListeSouscription.routeName);
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Vos souscriptions',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Faire une demande',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(SouscriptionEpargnant.routeName);
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Versement',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
              ExpansionTile(
                title: Text('Versement'),
                leading: Icon(Icons.payments),
                childrenPadding: EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                    title: Text(
                      'Vos demandes',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Faire une demande',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Gestion de compte',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
              ExpansionTile(
                title: Text('Compte d\'épargne'),
                leading: Icon(Icons.account_balance),
                childrenPadding: EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                    title: Text(
                      'Situation du compte',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
