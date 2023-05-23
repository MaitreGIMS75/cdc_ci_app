import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uuid/uuid.dart';

import 'inscription_reussie.dart';

class Souscription extends StatefulWidget {
  const Souscription({Key? key}) : super(key: key);
  static const routeName = '/demande-souscription';

  @override
  State<Souscription> createState() => _SouscriptionState();
}

class _SouscriptionState extends State<Souscription> {
  List<dynamic> countries = [];
  //int _value = 1;
  int? _valueCountrie;

  List<dynamic> cities = [];
  int? _valueCity;
  int? _valueCountryOfResidence;
  List<dynamic> incomes = [];
  int? _valueIncome;

  List<dynamic> identifications = [];
  int? _valueIdentification;

  List<dynamic> compartments = [];
  int? _valueCompartment;

  String? valeurSexe;

  // Text editing Controller
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  //final sexeController = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  //final nativeCountryController = TextEditingController();
  //final birthCityController = TextEditingController();
  final emailAdressController = TextEditingController();
  final mobilePhoneController = TextEditingController();
  final countryOfResidenceController = TextEditingController();
  final townOfResidenceController = TextEditingController();
  final streetOfResidenceController = TextEditingController();
  //final incomeLevelController = TextEditingController();
  //final identificationNumberTypeController = TextEditingController();
  //final compartmentController = TextEditingController();
  final paymentTypeController = TextEditingController();
  final periodicityController = TextEditingController();
  final commitmentAmountController = TextEditingController();
  final exitChoiceController = TextEditingController();

  List<String?> fileNames = [];
  List<String?> _selectedFiles = [];

  String etag = "A00";

  @override
  void initState() {
    super.initState();
    getData();
    getCities();
    getIncomes();
    getIdentifications();
    getCompartments();
  }

  getData() async {
    String? token = await getToken();
    final res = await http.get(
      Uri.parse('http://154.73.102.36:8121/api/v1/birth-countries'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    final Map<String, dynamic> responseData = json.decode(res.body);
    final List<dynamic> records = responseData['result']['data']['records'];
    setState(() {
      countries = records;
    });
  }

  getCities() async {
    String? token = await getToken();
    final res = await http.get(
      Uri.parse('http://154.73.102.36:8121/api/v1/cities'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    final Map<String, dynamic> responseData = json.decode(res.body);
    final List<dynamic> recordstwo = responseData['result']['data']['records'];
    setState(() {
      cities = recordstwo;
    });
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

  Future<void> uploadFiles(List<String?> filePaths, String id) async {
    String? token = await getToken();
    Map<String, String> requestHeaders = {
      'Content-type': 'multipart/form-data',
      'Authorization': 'Bearer $token',
    };

    int i = 1;
    bool checkedfiles = false;
    String type = "";
    while (i < 4) {
      etag = "AOO$i";
      if (i == 1) {
        type = "identity-justification";
      } else if (i == 2) {
        type = "residence-justification";
      } else if (i == 3) {
        type = "expatriation-justification";
      }
      var request = http.MultipartRequest(
        'PUT',
        Uri.parse(
            'http://154.73.102.36:8121/api/v1/subscription-transactions/$id/attachments/$type/$etag'),
      );

      request.headers.addAll(requestHeaders);
      i -= 1;

      for (var path in filePaths) {
        var file =
            await http.MultipartFile.fromPath('_selectedfiles[$i]', path!);
        request.files.add(file);
      }

      i += 2;
      if (i == 3) {
        checkedfiles = true;
      }

      var response = await request.send();
      if (response.statusCode == 201 && checkedfiles == true) {
        print('File uploaded successfully');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InscriptionReussie()),
        );
      } else if (response.statusCode != 201) {
        print('Error uploading file');
      }
    }
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

  void _openFilePicker() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _selectedFiles = result.paths;
      });
    }
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    return token;
  }

  Future<void> CreerSouscription() async {
    String? token = await getToken();
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    Map<String, String> headerSubmit = {
      'Authorization': 'Bearer $token',
    };

    if (firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty &&
        dateInput.text.isNotEmpty &&
        emailAdressController.text.isNotEmpty &&
        mobilePhoneController.text.isNotEmpty &&
        townOfResidenceController.text.isNotEmpty &&
        streetOfResidenceController.text.isNotEmpty &&
        paymentTypeController.text.isNotEmpty &&
        periodicityController.text.isNotEmpty &&
        commitmentAmountController.text.isNotEmpty &&
        exitChoiceController.text.isNotEmpty) {
      var response = await http.post(
        Uri.parse('http://154.73.102.36:8121/api/v1/subscription-transactions'),
        body: jsonEncode(
          {
            "params": {
              "tag": const Uuid().v4(),
              "subscriber": {
                "first_name": firstNameController.text,
                "last_name": lastNameController.text,
                "sex": "male",
                "birth_date": dateInput.text,
                "native_country": _valueCountrie,
                "birth_city": _valueCity,
                "email_adress": emailAdressController.text,
                "mobile_phone": mobilePhoneController.text,
                "country_of_residence": _valueCountryOfResidence,
                "town_of_residence": townOfResidenceController.text,
                "street_of_residence": streetOfResidenceController.text,
                "income_level": _valueIncome,
                "identification_number_type": _valueIdentification,
                "identification_number": "OIUYTERTYIUOCI"
              },
              "subscription": {
                "compartment": _valueCompartment,
                "payment_type": paymentTypeController.text,
                "periodicity": periodicityController.text,
                "commitment_amount": commitmentAmountController.text,
                "exit_choice": exitChoiceController.text
              },
              "attachments": [
                {"type": "identity-justification", "etag": const Uuid().v4()},
                {"type": "residence-justification", "etag": const Uuid().v4()},
                {
                  "type": "expatriation-justification",
                  "etag": const Uuid().v4()
                }
              ]
            }
          },
        ),
        headers: requestHeaders,
      );

      final resultData = json.decode(response.body);
      if (resultData["result"]["status"] == 201) {
        final id = json.decode(response.body)['id'];
        print('Response Body: ${json.decode(response.body)}');
        print(resultData["result"]["data"]["attachments"]);
        final attachments =
            resultData["result"]["data"]["attachments"] as List<dynamic>;
        List<Future> uploadRequests = [];
        int fileIndex = 0;
        for (var element in attachments) {
          FormData formData = FormData.fromMap({
            'ufile': await MultipartFile.fromFile(_selectedFiles[fileIndex]!,
                filename: _selectedFiles[fileIndex]!),
          });
          uploadRequests.add(Dio().put(
              'http://154.73.102.36:8121${element["url"]}',
              data: formData,
              options: Options(headers: requestHeaders)));
          fileIndex++;
        }
        Future.wait(uploadRequests)
            .then((value) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text("Succes souscription et fichiers")),
                ));

        var SubmissionRqt = await http.post(
            Uri.parse(
                'http://154.73.102.36:8121/api/v1/subscription-transactions/$id/commit'),
            headers: headerSubmit);
        if (SubmissionRqt.statusCode == 202) {
          print("Response Body: ${json.decode(SubmissionRqt.body)}");

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InscriptionReussie()),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Invalid Informations"),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: const Text('Demande de Souscription'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Center(
              child: Text(
                'Informations of subscriber',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: firstNameController,
              decoration: const InputDecoration(
                labelText: 'First Name',
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: lastNameController,
              decoration: const InputDecoration(
                labelText: 'Last Name',
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    //tileColor: Color(0xFFF28D31),
                    contentPadding: EdgeInsets.all(0.0),
                    value: 'Male',
                    groupValue: valeurSexe,
                    title: const Text('Male'),
                    onChanged: (val) {
                      setState(() {
                        valeurSexe = val;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    value: 'Female',
                    groupValue: valeurSexe,
                    title: const Text('Female'),
                    onChanged: (val) {
                      setState(() {
                        valeurSexe = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: dateInput,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.calendar_today,
                ),
                border: OutlineInputBorder(),
                labelText: "Birth date",
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
              height: 15,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Native Country",
                  prefixIcon: Icon(
                    Icons.place,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: countries.map<DropdownMenuItem<dynamic>>((country) {
                return DropdownMenuItem<dynamic>(
                  value: country['id'],
                  child: SizedBox(width: 200, child: Text(country['name'])),
                );
              }).toList(),
              value: _valueCountrie,
              onChanged: (value) {
                setState(() {
                  _valueCountrie = value as int;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Birth city",
                  prefixIcon: Icon(
                    Icons.place,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: cities.map<DropdownMenuItem<dynamic>>((city) {
                return DropdownMenuItem<dynamic>(
                  value: city['id'],
                  child: SizedBox(width: 200, child: Text(city['name'])),
                );
              }).toList(),
              value: _valueCity,
              onChanged: (value) {
                setState(() {
                  _valueCity = value as int;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: emailAdressController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email adress',
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: mobilePhoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Mobile Phone',
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
                  labelText: "Country of residence",
                  prefixIcon: Icon(
                    Icons.place,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: countries.map<DropdownMenuItem<dynamic>>((country) {
                return DropdownMenuItem<dynamic>(
                  value: country['id'],
                  child: SizedBox(width: 200, child: Text(country['name'])),
                );
              }).toList(),
              value: _valueCountryOfResidence,
              onChanged: (value) {
                setState(() {
                  _valueCountryOfResidence = value as int;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: townOfResidenceController,
              decoration: InputDecoration(
                labelText: 'Town of residence',
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: streetOfResidenceController,
              decoration: InputDecoration(
                labelText: 'Street of residence',
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
                  labelText: "Income Level",
                  prefixIcon: Icon(
                    Icons.place,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: incomes.map<DropdownMenuItem<dynamic>>((income) {
                return DropdownMenuItem<dynamic>(
                  value: income['id'],
                  child: SizedBox(width: 200, child: Text(income['name'])),
                );
              }).toList(),
              value: _valueIncome,
              onChanged: (value) {
                setState(() {
                  _valueIncome = value as int;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Identification number type",
                  prefixIcon: Icon(
                    Icons.place,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: identifications.map<DropdownMenuItem<dynamic>>((iden) {
                return DropdownMenuItem<dynamic>(
                  value: iden['id'],
                  child: SizedBox(width: 200, child: Text(iden['name'])),
                );
              }).toList(),
              value: _valueIdentification,
              onChanged: (value) {
                setState(() {
                  _valueIdentification = value as int;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Informations of Subscription',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Compartment",
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
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Payment type",
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: ["Périodique"].map<DropdownMenuItem<dynamic>>((comp) {
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
                  labelText: "Periodicity",
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: ["Mensuelle"].map<DropdownMenuItem<dynamic>>((comp) {
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
                labelText: 'Commitment amount',
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
                  labelText: "Exit choice",
                  prefixIcon: Icon(
                    Icons.verified_user_outlined,
                    color: Color(0xFFF28D31),
                  ),
                  border: OutlineInputBorder()),
              items: ["capital"].map<DropdownMenuItem<dynamic>>((comp) {
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
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('A propos des fichiers'),
                          content: Text(
                              "Les fichiers que vous nous soumettrez doivent être votre carte d'identité, votre justification de résidence et et votre justification d'expatriation dans cet ordre la."),
                          actions: [
                            TextButton(
                                child: Text('ANNULER'),
                                onPressed: () => Navigator.pop(context)),
                            TextButton(
                                child: Text('CONTINUER'),
                                onPressed: () => _openFilePicker()),
                          ],
                        ));
              },
              child: Text('Choissisez des fichiers'),
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
                elevation: 5,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                getToken();
                CreerSouscription();
              },
              child: Text('Continuez'),
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
          ],
        ),
      ),
    );
  }
}
