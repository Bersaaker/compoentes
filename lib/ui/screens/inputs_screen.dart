import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearEntradaNombre(),
          _crearEntradaPassword(),
        ],
      ),
    );
  }

  Widget _crearEntradaNombre() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(
        color: Colors.blueGrey.shade800,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      //cursorWidth: 5,
      maxLines: null,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escriba su nombre por favor",
        labelText: "Nombre",
        //helperText: "nombre",
        prefixIcon: const Icon(Icons.person),
        //iconColor: Colors.blueGrey),
        //prefix: const CircularProgressIndicator(),
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }

  Widget _crearEntradaPassword() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(
        color: Colors.blueGrey.shade800,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      //cursorWidth: 5,
      maxLength: 8,
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escriba contraseña",
        labelText: "Password",
        suffixIcon: const Icon(Icons.key),
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }
}
