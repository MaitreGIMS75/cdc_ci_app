import 'dart:convert';

import 'package:cdc_ci_app/src/screens/inscription.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uuid/uuid.dart';

import '../constants/images_strings.dart';
import 'inscription_reussie.dart';

class Avenant extends StatefulWidget {
  const Avenant({Key? key}) : super(key: key);
  static const routeName = '/avenant';

  @override
  State<Avenant> createState() => _AvenantState();
}

class _AvenantState extends State<Avenant> {
  List<dynamic> incomes = [];
  int? _valueIncome;

  List<dynamic> identifications = [];
  int? _valueIdentification;

  List<dynamic> compartments = [];
  int? _valueCompartment;


  // Text editing Controller
  final paymentTypeController = TextEditingController();
  final periodicityController = TextEditingController();
  final commitmentAmountController = TextEditingController();
  final exitChoiceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getIncomes();
    getIdentifications();
    getCompartments();
  }


  getIncomes() async {
    String? token = await getToken();
    final res = await http.get(
      Uri.parse('http://154.73.102.36:8121/api/v1/income-levels'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    final Map<String, dynamic> responseData = json.decode(res.body);
    final List<dynamic> recordsthree =
    responseData['result']['data']['records'];
    setState(() {
      incomes = recordsthree;
    });
  }


  getIdentifications() async {
    String? token = await getToken();
    final res = await http.get(
      Uri.parse('http://154.73.102.36:8121/api/v1/identification-number-types'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    final Map<String, dynamic> responseData = json.decode(res.body);
    final List<dynamic> recordsfour = responseData['result']['data']['records'];
    setState(() {
      identifications = recordsfour;
    });
  }

  getCompartments() async {
    String? token = await getToken();
    final res = await http.get(
      Uri.parse('http://154.73.102.36:8121/api/v1/compartments'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    final Map<String, dynamic> responseData = json.decode(res.body);
    final List<dynamic> recordsfive = responseData['result']['data']['records'];
    setState(() {
      compartments = recordsfive;
    });
  }


  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    return token;
  }


// ...

  Future<void> CreerAvenant() async {
    String? token = await getToken();
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    //Envoie de la première requete POST

    if (paymentTypeController.text.isNotEmpty &&
        periodicityController.text.isNotEmpty &&
        commitmentAmountController.text.isNotEmpty &&
        exitChoiceController.text.isNotEmpty) {
      var response = await http.post(
        Uri.parse('http://154.73.102.36:8121/savers/api/v1/subscription-requests'),
        body: jsonEncode(
          {
            "params": {
                "compartment": _valueCompartment,
                "payment_type": paymentTypeController.text,
                "periodicity": periodicityController.text,
                "commitment_amount": commitmentAmountController.text,
                "exit_choice": exitChoiceController.text
            }
          },
        ),
        headers: requestHeaders,
      );

      //Impression du resultat du premier POST
      final resultData = json.decode(response.body);

      if (resultData["result"]["status"] == 201) {

        print('Response Body: ${json.decode(response.body)}');
        Navigator.of(context).pushReplacementNamed(InscriptionReussie.routeName);
        }else {
        print('Response Body: ${json.decode(response.body)}');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Informations invalides"),
        ));
      }

    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Les champs vides ne sont pas autorisés"),
      ));
    }
  }

  /* Future<void> ValiderRequete(
      String commit, Map<String, String> requestHeaders) async {
    var response = await http.post(
      Uri.parse(commit),
      headers: requestHeaders,
    );

    if (response.statusCode == 202) {
      try {
        final resultData = json.decode(response.body);
        print('Transaction validée');
      } catch (e) {
        print('Échec de l\'analyse de la réponse JSON');
      }
    } else {
      print('Échec de la validation de la transaction');
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: const Text("Demande d'avenant"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: const AssetImage(logoHome),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Je souscrit au produit',
                style: TextStyle(
                  color: Color(0xFF2E7742),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Souscrivez votre contrat CDC-CI épargne diaspora en moins de 10 minutes',
              style: TextStyle(
                //color: Color(0xff2E7742),
                fontSize: 16,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Données de souscription',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Compartiment à souscrire*",
                  prefixIcon: Icon(
                    Icons.place,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: compartments.map<DropdownMenuItem<dynamic>>((comp) {
                return DropdownMenuItem<dynamic>(
                  value: comp['id'],
                  child: SizedBox(width: 200, child: Text(comp['name'])),
                );
              }).toList(),
              value: _valueCompartment,
              onChanged: (value) {
                setState(() {
                  _valueCompartment = value as int;
                  print(_valueCompartment);
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Type de versement*",
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: ["Unique","Périodique"].map<DropdownMenuItem<dynamic>>((comp) {
                return DropdownMenuItem<dynamic>(
                  value: comp,
                  child: SizedBox(width: 200, child: Text(comp)),
                );
              }).toList(),
              value: paymentTypeController.text.isEmpty
                  ? null
                  : paymentTypeController.text,
              onChanged: (value) {
                setState(() {
                  paymentTypeController.text = value;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Périodicité*",
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: ["Mensuelle","Trimestrielle","Semestrielle","Annuelle"].map<DropdownMenuItem<dynamic>>((comp) {
                return DropdownMenuItem<dynamic>(
                  value: comp,
                  child: SizedBox(width: 200, child: Text(comp)),
                );
              }).toList(),
              value: periodicityController.text.isEmpty
                  ? null
                  : periodicityController.text,
              onChanged: (value) {
                setState(() {
                  periodicityController.text = value;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: commitmentAmountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Engagement de versement*',
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Intérêt pour les options en sortie*",
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: ["Capital","Immobilier","Assurance"].map<DropdownMenuItem<dynamic>>((comp) {
                return DropdownMenuItem<dynamic>(
                  value: comp,
                  child: SizedBox(width: 200, child: Text(comp)),
                );
              }).toList(),
              value: exitChoiceController.text.isEmpty
                  ? null
                  : exitChoiceController.text,
              onChanged: (value) {
                setState(() {
                  exitChoiceController.text = value;
                });
              },
            ),

            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                  getToken();
                  CreerAvenant();
              },
              child: Text('Validez'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Color(0xFF2E7742),
                padding: EdgeInsets.all(20),
                fixedSize: Size(200, 60),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
                onPrimary: Colors.white,
                elevation: 0,
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
}
