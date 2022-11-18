import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2_flutter/controlador/controladorGeneral.dart';


//escribir StatefulWidget

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral control =Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(  
      child: Drawer(   //creacion de menu
        child: Column(  //Column: maneja children
          children: [
            DrawerHeader(    //parte superior del menu
              decoration: BoxDecoration(
                color: Colors.lightBlue, 
                border: Border.all(color: Colors.blue),
                
              ),
                child: UserAccountsDrawerHeader(//cabecera menu
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://st.depositphotos.com/3246725/4341/v/450/depositphotos_43415125-stock-illustration-women-with-shopping-bags.jpg"),
                      ),
                  accountName: Text("Rosa Linda Muñoz Martinez"), 
                  accountEmail: Text("rmunozl@uninorte.edu.co"))),
            Divider(),
            Expanded(
              child: ListView(children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Inicio"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    control.cambiarPosicion(0);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on_rounded),
                  title: Text("Comprar"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    control.cambiarPosicion(1);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopify_outlined),
                  title: Text("Mis Productos"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    control.cambiarPosicion(2);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Información Desarrollador"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    control.cambiarPosicion(3);
                    Navigator.pop(context);
                  },
                ),
              ],))
      ]),),
    );
  }
}