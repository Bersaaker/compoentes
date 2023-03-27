import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible:
            false, //al tocar en cualquier lado desaparece la alerta
        barrierColor: Colors.black38,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.blueGrey.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: const Text('Titulo de la alerta'),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Contenido de la alerta'),
                FlutterLogo(
                  size: 50.0,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Aceptar')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancelar')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => _mostrarAlerta(context),
            child: const Text('Mostrar alerta')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_circle_left),
      ),
    );
  }
}
