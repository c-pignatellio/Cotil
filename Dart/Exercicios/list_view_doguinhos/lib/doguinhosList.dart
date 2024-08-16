// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:list_view_doguinhos/doguinho.dart';

class Doguinhos extends StatefulWidget {
  const Doguinhos({super.key});

  @override
  State<Doguinhos> createState() => _DoguinhosState();
}

class _DoguinhosState extends State<Doguinhos> {
  List<Doguinho> listaD = [
    Doguinho("Rex", "Vira-Lata", 13, "assets/images/download.jpg"),
    Doguinho("sla", "Vira-Lata2", 15,
        "assets/images/img6265e2bc142288.30361539.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Doguinhos",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          thickness: 2,
        ),
        itemCount: listaD.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              child: Image.asset(
                listaD[index].imagem,
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            title: Text(listaD[index].nome, textAlign: TextAlign.center,),
            subtitle: Text(listaD[index].raca, textAlign: TextAlign.center,),
            trailing: Text(listaD[index].idade.toString() +" Ano(s)"),
          );
        },
      ),
    );
  }
}
