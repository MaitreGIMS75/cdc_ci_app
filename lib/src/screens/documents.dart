import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Documents extends StatefulWidget {
  const Documents({super.key});

  @override
  State<Documents> createState() => _InscriptionState();
}

class _InscriptionState extends State<Documents> {
  TextEditingController dateInput = TextEditingController();
  File? _image;

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
        title: Text('Documents'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Center(
              child: Text(
                'Documents',
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
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Pièce 1',
              icon: Icons.image_outlined,
              onClick: getImage,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Pièce 2',
              icon: Icons.image_outlined,
              onClick: getImage,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Pièce 3',
              icon: Icons.image_outlined,
              onClick: getImage,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Pièce 4',
              icon: Icons.image_outlined,
              onClick: getImage,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Pièce 5',
              icon: Icons.image_outlined,
              onClick: getImage,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Pièce 6',
              icon: Icons.image_outlined,
              onClick: getImage,
            ),
            SizedBox(
              height: 50,
            ),
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
