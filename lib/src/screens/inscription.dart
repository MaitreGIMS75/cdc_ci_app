import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import '../constants/images_strings.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  TextEditingController dateInput = TextEditingController();
  File? _image;
  TextEditingController NameController = TextEditingController();
  TextEditingController SurnameController = TextEditingController();
  TextEditingController BirthPlaceController = TextEditingController();
  TextEditingController BirthDateController = TextEditingController();
  TextEditingController PhoneNumberController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController ConfirmPasswordController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  TextEditingController CityController = TextEditingController();
  TextEditingController CountryController = TextEditingController();
  TextEditingController NationalityController = TextEditingController();


  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        leading: BackButton(),
        title: Text('S\'inscrire'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Center(
              child: Text(
                'Inscription',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //Nom
            TextFormField(
              controller: NameController,
              decoration: InputDecoration(
                labelText: 'Nom',
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Prénoms
            TextFormField(
              controller: SurnameController,
              decoration: InputDecoration(
                labelText: 'Prénoms',
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Lieu de Naissance
            TextFormField(
              controller: BirthDateController,
              decoration: InputDecoration(
                  labelText: 'Lieu de Naissance',
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                  ),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            //Date de naissance
            TextFormField(
              controller: dateInput,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.calendar_today,
                ),
                border: OutlineInputBorder(),
                labelText: "Date de naissance",
              ),
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(formattedDate);
                  setState(() {
                    dateInput.text = formattedDate;
                  });
                } else {
                  print("Date not selected");
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            //Nationalité
            TextFormField(
              controller: NationalityController,
              decoration: InputDecoration(
                  labelText: 'Nationalité',
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                  ),
                  border: OutlineInputBorder()),
            ),
            _image != null
                ? Image.file(
                    _image!,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  )
                : Image(
                    image: AssetImage(tVisage),
                    width: 100,
                  ),
            CustomButton(
              title: 'Choisir une image',
              icon: Icons.image_outlined,
              onClick: getImage,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: EmailController,
              decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                  ),
                  border: OutlineInputBorder()),
            ),
            //Mot de passe
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: PasswordController,
              decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                  ),
                  border: OutlineInputBorder()),
            ),
            //Confirmation du Mot de passe
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: ConfirmPasswordController,
              decoration: InputDecoration(
                  labelText: 'Confirmation du mot de passe',
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                  ),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            //Telephone
            TextFormField(
              controller: PhoneNumberController,
              decoration: InputDecoration(
                  labelText: 'Téléphone',
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                  ),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            //Pays
            TextFormField(
              controller: CountryController,
              decoration: InputDecoration(
                  labelText: 'Pays de résidence',
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                  ),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            //Ville
            TextFormField(
              controller: CityController,
              decoration: InputDecoration(
                  labelText: 'Ville',
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                  ),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            //Adresse
            TextFormField(
              controller: CityController,
              decoration: InputDecoration(
                  labelText: 'Adresse',
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                  ),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 50,
            ),
            //Bouton Envoyer
            ElevatedButton(
              onPressed: () {},
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
                elevation: 5,
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

Widget CustomButton({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {
  return Container(
    width: 280,
    child: ElevatedButton(
      onPressed: onClick,
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
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 20,
          ),
          Text(title),
        ],
      ),
    ),
  );
}

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
