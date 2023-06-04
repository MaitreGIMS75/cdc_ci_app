import 'package:flutter/material.dart';

class DemandeVersement extends StatelessWidget {
  const DemandeVersement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: Text('Inscription Reussie'),
        leading: BackButton(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Demande de versement',
                  style: TextStyle(
                    color: Color(0xFFF28D31),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    'Liste des demandes de versements',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  height: 400.0,
                  width: 360.0,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFECF2FF), width: 3.0),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
