import 'package:flutter/material.dart';
//StatefulWidget
class pag4_desarrollador extends StatefulWidget {
  const pag4_desarrollador({super.key});

  @override
  State<pag4_desarrollador> createState() => _pag4_desarrolladorState();
}

class _pag4_desarrolladorState extends State<pag4_desarrollador> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Rosa Linda"),
                subtitle: Text("Nombre"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person_pin_circle),
                title: Text("Muñoz Martinez"),
                subtitle: Text("Apellidos"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("rmunozl@uninorte.edu.co"),
                subtitle: Text("Email"),
              ),
            ),
          ],
        ),),
    );
  }
}