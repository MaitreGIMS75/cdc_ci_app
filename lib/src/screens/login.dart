import 'dart:convert';

import 'package:cdc_ci_app/src/screens/acceuil.dart';
import 'package:cdc_ci_app/src/screens/conditions.dart';
import 'package:cdc_ci_app/src/screens/connexion.dart';
import 'package:cdc_ci_app/src/screens/demande_versement.dart';
import 'package:cdc_ci_app/src/screens/documents.dart';
import 'package:cdc_ci_app/src/screens/eligible.dart';
import 'package:cdc_ci_app/src/screens/inscription.dart';
import 'package:cdc_ci_app/src/screens/souscription.dart';
import 'package:cdc_ci_app/src/screens/splash_screen.dart';
import 'package:cdc_ci_app/src/screens/versement.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants/images_strings.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  static const routeName = '/login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Login'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Image(
                width: MediaQuery.of(context).size.width * 0.9,
                image: AssetImage(logoHome),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: loginController,
                decoration: InputDecoration(
                  labelText: 'Login',
                  suffixIcon: Icon(
                    Icons.login,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    suffixIcon: Icon(
                      Icons.password,
                    ),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  login(
                    loginController.text.toString(),
                    passwordController.text.toString(),
                  );
                },
                child: Text('Connexion'),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Color(0xFFF28D31),
                  padding: EdgeInsets.all(20),
                  fixedSize: Size(200, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                  onPrimary: Colors.white,
                  elevation: 15,
                  shadowColor: Color(
                    0xFFF28D31,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Souscription.routeName);
                },
                child: Text('Je souscrit au produit'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFECF2FF),
                    padding: EdgeInsets.all(10),
                    fixedSize: Size(250, 60),
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
            ],
          ),
        ),
      ),
    );
  }

  // Create function to call login API
  Future<void> login(String login, String password) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
    };

    if (passwordController.text.isNotEmpty && loginController.text.isNotEmpty) {
      var response = await http.post(
        Uri.parse('http://154.73.102.36:8121/api/v1/login'),
        body: jsonEncode(
          {
            'params': {
              'login': loginController.text,
              'password': passwordController.text,
            }
          },
        ),
        headers: requestHeaders,
      );
      if (response.statusCode == 200) {
        //final token = json.decode(response.body)['result']['data']['token'];
        print("Response Status: ${response.statusCode}");
        print('Response Body: ${json.decode(response.body)}');
        saveToken(response);
        //print('Login token : $token ');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Souscription()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Invalid Credentials"),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Blank Field Not Allow"),
        ),
      );
    }
  }

  void saveToken(var response) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(
        'token', json.decode(response.body)['result']['data']['token']);
  }
}
