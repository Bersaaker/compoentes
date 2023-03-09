import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Trivium'),
            subtitle: Text('The Phalanx'),
          ),
          Divider(
            thickness: 1.5,
            color: Colors.blueGrey,
          ),
          ListTile(
            title: Text('Onslaught'),
            subtitle: Text('6 6 Fucking 6'),
          ),
          Divider(
            thickness: 1.5,
            color: Colors.blueGrey,
          ),
          ListTile(
            title: Text('Annihilator'),
            subtitle: Text('No Way Out'),
          ),
        ],
      ),
    );
  }
}
