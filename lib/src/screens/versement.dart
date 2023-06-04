import 'package:flutter/material.dart';

class Versement extends StatelessWidget {
  const Versement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Guide pour la demande de versement'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Suivez les étapes ci-dessous',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      //color: Color(0xFFF28D31),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28D31),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      height: 30.0,
                      width: 30.0,
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Lorem Ipsum dolor sit amet',
                      style: TextStyle(
                        color: Color(0xFFF28D31),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      //color: Color(0xFFF28D31),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28D31),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      height: 30.0,
                      width: 30.0,
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Lorem Ipsum dolor sit amet',
                      style: TextStyle(
                        color: Color(0xFFF28D31),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      //color: Color(0xFFF28D31),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28D31),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      height: 30.0,
                      width: 30.0,
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Lorem Ipsum dolor sit amet',
                      style: TextStyle(
                        color: Color(0xFFF28D31),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      //color: Color(0xFFF28D31),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28D31),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      height: 30.0,
                      width: 30.0,
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Lorem Ipsum dolor sit amet',
                      style: TextStyle(
                        color: Color(0xFFF28D31),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      //color: Color(0xFFF28D31),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28D31),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      height: 30.0,
                      width: 30.0,
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Lorem Ipsum dolor sit amet',
                      style: TextStyle(
                        color: Color(0xFFF28D31),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      //color: Color(0xFFF28D31),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28D31),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      height: 30.0,
                      width: 30.0,
                      child: Text(
                        '6',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Lorem Ipsum dolor sit amet',
                      style: TextStyle(
                        color: Color(0xFFF28D31),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
