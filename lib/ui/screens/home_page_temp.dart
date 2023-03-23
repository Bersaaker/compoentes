import 'package:componentes/providers/menu_providers.dart';
import 'package:componentes/ui/screens/alerts_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/icons_mapping.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de componentes'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  /*recuperacion de dtaos de un archivo json
  //print(menuProvider.opciones);
  menuProvider.loadData().then((opciones){
    print('_lista: ');
    print (opciones);
  });
  return ListView(
        children: _listaItems(),
      );*/
  return FutureBuilder(
    future: menuProvider.loadData(), // Indicando lo que queremos esperar
    initialData: const [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> sanpshot) {
      //print('buldier: ');
      //print(sanpshot.data);
      return ListView(
        children: _listaItems(sanpshot.data as List<dynamic>, context),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];
  IconMapping iconMap = const IconMapping();

  data.forEach((opt) {
    final title = ListTile(
      title: Text(opt['texto']),
      leading: iconMap.getIcon(opt['icon']),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Colors.blue,
      ),
      subtitle: Text(opt['texto2']),
      onTap: () {
        //final route = MaterialPageRoute(builder: (context) {
        //return const AlertsScreen();
        //});
        Navigator.pushNamed(context, opt['ruta']);
        // Navigator.push(context, route);
      },
    );
    opciones
      ..add(title)
      ..add(const Divider());
  });
  return opciones;
  // return const [
  //   ListTile(
  //     title: Text('Trivium'),
  //     subtitle: Text('The Phalanx'),
  //   ),
  //   Divider(
  //     thickness: 1.5,
  //     color: Colors.blueGrey,
  //   ),
  //   ListTile(
  //     title: Text('Onslaught'),
  //     subtitle: Text('6 6 Fucking 6'),
  //   ),
  //   Divider(
  //     thickness: 1.5,
  //     color: Colors.blueGrey,
  //   ),
  //   ListTile(
  //     title: Text('Annihilator'),
  //     subtitle: Text('No Way Out'),
  //   ),
  // ];
}
