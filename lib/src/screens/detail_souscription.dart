import 'dart:convert';

import 'package:cdc_ci_app/src/screens/inscription.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uuid/uuid.dart';

import 'liste_souscriptions.dart';

class DetailSouscription extends StatefulWidget {
  const DetailSouscription({Key? key}) : super(key: key);
  static const routeName = '/liste-souscription';

  @override
  State<DetailSouscription> createState() => _DetailSouscriptionState();
}

class _DetailSouscriptionState extends State<DetailSouscription>{
  List<dynamic> detail = [];

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    return token;
  }

  Future<int?> getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? souscriptionId = prefs.getInt('souscriptionId');
    return souscriptionId;
  }

  Future<void> FetchData() async {
    String? token = await getToken();
    int? id = await getId();
    final response = await http.get(
      Uri.parse('http://154.73.102.36:8121/savers/api/v1/subscriptions/$id'),
      headers: {
        'Authorization': 'Bearer $token',
      },);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final List<dynamic> recordsthree =
      responseData['result']['data'];
      setState(() {
        detail = recordsthree;
      });
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma page'),
      ),
      body: detail.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: detail.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(detail[index]['name']),
                Text(detail[index]['value'].toString()),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: fetchData,
      ),
    );
  }
}