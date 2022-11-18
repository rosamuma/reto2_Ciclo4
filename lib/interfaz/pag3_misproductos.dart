import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:reto2_flutter/controlador/controladorGeneral.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
//StatefulWidget
class pag3_misproductos extends StatefulWidget {
  const pag3_misproductos({super.key});

  @override
  State<pag3_misproductos> createState() => _pag3_misproductosState();
}

class _pag3_misproductosState extends State<pag3_misproductos> {
  controladorGeneral control = Get.find();
  final oCcy = NumberFormat("#,##0", "es_COL");
  @override
  Widget build(BuildContext context) {
    return Obx(() =>  Padding(
      padding: EdgeInsets.all(5), 
      child: Container(child: 
      Column(children: [
          Expanded(child: 
            ListView.builder(
              itemCount: control.prod.length,
              itemBuilder: (BuildContext context, int index) {
                return control.prod[index].cantidad == 0
                ? Text("")
                : ListTile(
                  leading: Image(image: NetworkImage(control.prod[index].image),),
                  title: Text(control.prod[index].nombre),
                  subtitle: Text(
                    "Precio: " + oCcy.format(control.prod[index].precio) + "   |   " + 
                    "Cantidad: " + control.prod[index].cantidad.toString()) ,
                    trailing: Text(
                      oCcy.format((control.prod[index].cantidad * control.prod[index].precio)),
                ));
              },
            ),

            
          ),
          
          Divider(),
          Text("Total a Pagar: " + oCcy.format(control.totalaPagar()), style: TextStyle(fontSize: 20),),
          Divider(),
          ElevatedButton.icon(
            onPressed:() {
              Alert(
                type: AlertType.success,
                context: context, 
                title: "FELICIDADES!!!", 
                desc: "Compra realizada satisfactoriamente",
                buttons: [
                  DialogButton(
                    child: Text("CERRAR"), 
                    onPressed: (){
                      control.limpiarTodo();
                      Navigator.pop(context);
                      control.cambiarPosicion(0);
                  })
                  ]).show();
            }, 
            icon: Icon(Icons.save_as_outlined), 
            label: Text("Comprar")),
            Divider(),

        ],
      ),),));
  }
}