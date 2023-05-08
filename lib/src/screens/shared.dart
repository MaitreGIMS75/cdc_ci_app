import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Shared extends StatefulWidget {
  const Shared({super.key});

  @override
  State<Shared> createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  List categoryItemlist = [];

  Future getAllCategory() async {
    var baseUrl = "http://154.73.102.36:8121/api/v1/cities";

    final response = await http
        .get(Uri.parse('http://154.73.102.36:8121/api/v1/cities'), headers: {
      HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
    });

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        categoryItemlist = jsonData;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getAllCategory();
  }

  var dropdownvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            DropdownButtonFormField(
              items: categoryItemlist.map((item) {
                return DropdownMenuItem(
                  value: item[''].toString(),
                  child: Text(item[''].toString()),
                );
              }).toList(),
              onChanged: (newVal) {
                setState(() {
                  dropdownvalue = newVal;
                });
              },
              value: dropdownvalue,
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: Color(0xFFF28D31),
              ),
              dropdownColor: Color(0xFFF28D31),
              decoration: InputDecoration(
                  labelText: "Villes",
                  prefixIcon: Icon(
                    Icons.accessibility_rounded,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
