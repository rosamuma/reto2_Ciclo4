import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2_flutter/controlador/controladorGeneral.dart';
import 'package:reto2_flutter/interfaz/menu.dart';
import 'package:reto2_flutter/interfaz/pag1_inicio.dart';
import 'package:reto2_flutter/interfaz/pag2_comprar.dart';
import 'package:reto2_flutter/interfaz/pag3_misproductos.dart';
import 'package:reto2_flutter/interfaz/pag4_desarrollador.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'reto2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Carro de Compras'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
//fuera de las clases
List paginas = [
  pag1_inicio(), 
  pag2_comprar(), 
  pag3_misproductos(), 
  pag4_desarrollador()];

class _MyHomePageState extends State<MyHomePage> {
  controladorGeneral control = Get.find();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Obx(() => paginas[control.posicion]), //apuntador
      drawer: menu(),//llamado carpeta menu
    );
  }
}