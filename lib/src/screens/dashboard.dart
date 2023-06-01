import 'package:cdc_ci_app/src/common_widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tableau de Bord'),
      ),
      drawer: const MainDrawer(),
      body: (Container()),
    );
  }
}
