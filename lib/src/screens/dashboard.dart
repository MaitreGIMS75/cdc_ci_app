import 'package:cdc_ci_app/src/common_widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text('Tableau de Bord'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mail_outline,
              size: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_2_outlined,
                    size: 24,
                  ),
                ),
                Text(
                  '23C00565',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Tableau de bord',
                style: TextStyle(
                    //color: Color(0xff2E7742),
                    fontSize: 24,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Bonjour test, Bienvenue à nouveau',
                style: TextStyle(
                  //color: Color(0xff2E7742),
                  fontSize: 18,
                  fontFamily: 'Quicksand',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
