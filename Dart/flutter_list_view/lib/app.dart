// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_list_view/model/modelo.dart';

class PageStart extends StatefulWidget {
  const PageStart({super.key});

  @override
  State<PageStart> createState() => _PageStartState();
}

class _PageStartState extends State<PageStart> {
  List<Modelo> listaA = [
    Modelo("Vitor", 202247),
    Modelo("Beatriz", 202228),
    Modelo("Enzo", 202202),
    Modelo("Heloise", 202234),
    Modelo("JayJouki", 202287),
    Modelo("Guilhermino", 202020),
    Modelo("Lórena", 202021),
    Modelo("Lero", 202023),
    Modelo("Mari", 202024),
    Modelo("Daniela", 2020245),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ListView",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => Divider(
                thickness: 2,
              ),
              itemCount: listaA.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(listaA[index].nome[0]),
                  ),
                  title: Text(listaA[index].nome),
                  subtitle: Text(listaA[index].ra.toString()),
                  trailing: Text((index + 1).toString()),
                );
              },
            ),
            ElevatedButton(onPressed: () {
              
            }, child: Text("Voltar"))
          ],
        ),
      ),
    );
  }
}
