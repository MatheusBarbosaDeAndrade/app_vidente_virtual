import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const VidenteVirtual());
}

class VidenteVirtual extends StatelessWidget {
  const VidenteVirtual({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vidente Virtual',
      home: Scaffold(
        backgroundColor: Color(0xff332B25),
        appBar: AppBar(
          backgroundColor: Colors.brown[800],
          title: const Text(
            'Vidente Virtual',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Vidente(),
      ),
    );
  }
}

class Vidente extends StatefulWidget {
  const Vidente({super.key});

  @override
  State<Vidente> createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {
  int imagemVidente = 1;

  void lerMente(){
    imagemVidente = Random().nextInt(5) + 2;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: TextButton(
          onPressed: (){
            setState((){
              lerMente();
            });
          },
          child: Image.asset('images/vidente$imagemVidente.png'),
        ),
      ),
    );
  }
}
