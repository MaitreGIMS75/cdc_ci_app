import 'dart:convert';

import 'package:cdc_ci_app/src/screens/acceuil.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants/images_strings.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String token = "";

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
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(tVisage),
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
              Text(
                'Mot de passe oublié ?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('S\'inscrire'),
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
        
        token = json.decode(response.body)['result']['data']['token'];
        print("Response Status: ${response.statusCode}");
        print('Response Body: ${json.decode(response.body)}');
        //print('Login token : $token ');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Accueil()),
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
}
