import 'dart:convert';

import 'package:cdc_ci_app/src/screens/inscription.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uuid/uuid.dart';

class ListeSouscription extends StatefulWidget {
  const ListeSouscription({Key? key}) : super(key: key);
  static const routeName = '/liste-souscription';

  @override
  State<ListeSouscription> createState() => _ListeSouscriptionState();
}

class _ListeSouscriptionState extends State<ListeSouscription> {
  List<dynamic> listeSouscription = [];
  static var souscriptionId;
  void initState() {
    super.initState();
    fetchData();
  }

  void saveId(var response) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(
        'souscriptionId', json.decode(response.body)['result']['data']['records']['id']);
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    return token;
  }


  Future<void> fetchData() async {
    String? token = await getToken();
    final response = await http.get(
      Uri.parse('http://154.73.102.36:8121/savers/api/v1/subscriptions'),
      headers: {
        'Authorization': 'Bearer $token',
      },);

    if (response.statusCode == 200) {
      saveId(response);
      final Map<String, dynamic> responseData = json.decode(response.body);
      final List<dynamic> recordsthree =
      responseData['result']['data']['records'];
      setState(() {
        listeSouscription = recordsthree;
      });
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: const Text("Liste Souscription"),
      ),
      body: Container(
        child: listeSouscription.isEmpty
            ? CircularProgressIndicator() // Afficher un indicateur de chargement si myData est vide
            : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            columns: [
              DataColumn(label: Text('Code')),
              DataColumn(label: Text('Date de creation')),
              DataColumn(label: Text('Statut')),
              DataColumn(label: Text('Action')),
            ],
            rows: listeSouscription
                .map((data) => DataRow(cells: [
              DataCell(Text(data['name'])),
              DataCell(Text(data['create_date'])),
              DataCell(Text(data['state'])),
              DataCell(
                IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {
                    // Action à effectuer lorsque l'utilisateur appuie sur le bouton d'action
                    souscriptionId = data['id'];

                  },
                ),
              ),
            ],
                color: MaterialStateColor.resolveWith(
                (states) {
            if (listeSouscription.indexOf(data) % 2 == 0) {
            return Colors.white;
            } else {
            return Colors.grey;
            }
            },
            ),))
                .toList(),
          ),
        ),
      ),
    );
  }
}