import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2_flutter/controlador/controladorGeneral.dart';
import 'package:reto2_flutter/interfaz/home.dart';

void main() {
  Get.put(controladorGeneral());
  runApp(const MyApp());
}


