import 'package:flutter/material.dart';

import '../constants/images_strings.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
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
          ],
        ),
      ),
    );
  }
}
