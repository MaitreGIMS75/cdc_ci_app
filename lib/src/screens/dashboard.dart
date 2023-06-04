import 'package:cdc_ci_app/src/common_widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text('Tableau de Bord'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mail_outline,
              size: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_2_outlined,
                    size: 24,
                  ),
                ),
                Text(
                  '23C00565',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Tableau de bord',
                style: TextStyle(
                    //color: Color(0xff2E7742),
                    fontSize: 24,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Bonjour test, Bienvenue à nouveau',
                style: TextStyle(
                  //color: Color(0xff2E7742),
                  fontSize: 18,
                  fontFamily: 'Quicksand',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Versements',
                              style: TextStyle(
                                //color: Color(0xff2E7742),
                                fontSize: 24,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_box,
                              color: Color(0xffF28D31),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: new TableBorder(
                              horizontalInside: new BorderSide(
                                  color: Colors.grey, width: 0.5)),
                          children: [
                            TableRow(
                              children: [
                                Container(
                                    height: 50,
                                    child: Text(
                                      "RUV",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand'),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Date d\'execution",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Montant versement",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Statut",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand'),
                                    )),
                              ],
                            ),
                            TableRow(children: [
                              Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "23DV00124",
                                  style: TextStyle(fontFamily: 'Quicksand'),
                                ),
                              ),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "1 Juin 2023",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "700 000",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF17a2b8),
                                  ),
                                  height: 25,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "En Attente",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                            ]),
                            TableRow(children: [
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "23DV00125",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "1 Juin 2023",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "700 000",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF17a2b8),
                                  ),
                                  height: 25,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "En Attente",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                            ]),
                            TableRow(children: [
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "23DV00126",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "1 Juin 2023",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "700 000",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF17a2b8),
                                  ),
                                  height: 25,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "En Attente",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '3 Versement(s)',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Text(
                                    'Plus d\'infos',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      color: Color(0xffF28D31),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Icon(
                                    Icons.skip_next_outlined,
                                    color: Color(0xffF28D31),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Comptes bancaires',
                              style: TextStyle(
                                //color: Color(0xff2E7742),
                                fontSize: 24,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_box,
                              color: Color(0xffF28D31),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: new TableBorder(
                              horizontalInside: new BorderSide(
                                  color: Colors.grey, width: 0.5)),
                          children: [
                            TableRow(
                              children: [
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Code SWIFT",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand'),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "IBAN",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                              ],
                            ),
                            TableRow(children: [
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "TEST-COMPTE",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "9897654356789090876543",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '01 Compte(s) bancaire(s)',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Text(
                                    'Plus d\'infos',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      color: Color(0xffF28D31),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Icon(
                                    Icons.skip_next_outlined,
                                    color: Color(0xffF28D31),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                'Mise à jour des informations\n personnelles',
                                style: TextStyle(
                                  //color: Color(0xff2E7742),
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.add_box,
                              color: Color(0xffF28D31),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: new TableBorder(
                              horizontalInside: new BorderSide(
                                  color: Colors.grey, width: 0.5)),
                          children: [
                            TableRow(
                              children: [
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Code demande",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand'),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Date de demande",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Statut",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                              ],
                            ),
                            TableRow(children: [
                              Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "DS/2023/00045",
                                  style: TextStyle(fontFamily: 'Quicksand'),
                                ),
                              ),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "19 Mai 2023",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF17a2b8),
                                  ),
                                  height: 25,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "En Attente",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '3 Versement(s)',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Text(
                                    'Plus d\'infos',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      color: Color(0xffF28D31),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Icon(
                                    Icons.skip_next_outlined,
                                    color: Color(0xffF28D31),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                'Solde du compte',
                                style: TextStyle(
                                  //color: Color(0xff2E7742),
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              '01 Juin 2023',
                              style: TextStyle(
                                //color: Color(0xff2E7742),
                                fontSize: 20,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Intérêt global',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '0 XOF',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Versement net global',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '0 XOF',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Solde global',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '0 XOF',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Somme globale disponible',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '0 XOF',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Text(
                                    'Plus d\'infos',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      color: Color(0xffF28D31),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Icon(
                                    Icons.skip_next_outlined,
                                    color: Color(0xffF28D31),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                'Souscriptions',
                                style: TextStyle(
                                  //color: Color(0xff2E7742),
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: new TableBorder(
                              horizontalInside: new BorderSide(
                                  color: Colors.grey, width: 0.5)),
                          children: [
                            TableRow(
                              children: [
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Code de souscription",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand'),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Date d'ouverture",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Statut",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                              ],
                            ),
                            TableRow(children: [
                              Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "C2300023",
                                  style: TextStyle(fontFamily: 'Quicksand'),
                                ),
                              ),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "19 Mai 2023",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF28a745),
                                  ),
                                  height: 25,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Validée",
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      color: Colors.white,
                                    ),
                                  )),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '01 Souscription(s)',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Text(
                                    'Plus d\'infos',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      color: Color(0xffF28D31),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Icon(
                                    Icons.skip_next_outlined,
                                    color: Color(0xffF28D31),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                'Demandes de souscription',
                                style: TextStyle(
                                  //color: Color(0xff2E7742),
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: new TableBorder(
                              horizontalInside: new BorderSide(
                                  color: Colors.grey, width: 0.5)),
                          children: [
                            TableRow(
                              children: [
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Code de demande",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand'),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Date de demande",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Statut",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                              ],
                            ),
                            TableRow(children: [
                              Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "DS/2023/00042",
                                  style: TextStyle(fontFamily: 'Quicksand'),
                                ),
                              ),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "11 Mai 2023",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF28a745),
                                  ),
                                  height: 25,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Validée",
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      color: Colors.white,
                                    ),
                                  )),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '01 Demande(s)',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Text(
                                    'Plus d\'infos',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      color: Color(0xffF28D31),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Icon(
                                    Icons.skip_next_outlined,
                                    color: Color(0xffF28D31),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shadowColor: Color(0xff2E7742),
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                'Demandes d\'avenant',
                                style: TextStyle(
                                  //color: Color(0xff2E7742),
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.add_box,
                              color: Color(0xffF28D31),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: new TableBorder(
                              horizontalInside: new BorderSide(
                                  color: Colors.grey, width: 0.5)),
                          children: [
                            TableRow(
                              children: [
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Code de demande",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand'),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Date de demande",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                                Container(
                                    height: 50,
                                    child: Text(
                                      "Statut",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                      ),
                                    )),
                              ],
                            ),
                            TableRow(children: [
                              Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "DS/2023/00044",
                                  style: TextStyle(fontFamily: 'Quicksand'),
                                ),
                              ),
                              Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "19 Mai 2023",
                                    style: TextStyle(fontFamily: 'Quicksand'),
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF17a2b8),
                                  ),
                                  height: 25,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "En attente",
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      color: Colors.white,
                                    ),
                                  )),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '01 Demande(s)',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Text(
                                    'Plus d\'infos',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      color: Color(0xffF28D31),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Icon(
                                    Icons.skip_next_outlined,
                                    color: Color(0xffF28D31),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
