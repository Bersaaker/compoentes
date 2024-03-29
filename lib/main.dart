import 'package:componentes/ui/screens/alerts_screen.dart';
import 'package:componentes/ui/screens/home_page_temp.dart';
import 'package:componentes/ui/screens/inputs_screen.dart';
import 'package:componentes/utils/app.theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Componentes',
      debugShowCheckedModeBanner: false,
      //home: HomePageTemp(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePageTemp(),
        'alert': (BuildContext context) => const AlertsScreen(),
        'inputs': (BuildContext context) => const InputsScreen(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => const AlertsScreen());
      },
      theme: AppTheme.darkTheme,
    );
  }
}
