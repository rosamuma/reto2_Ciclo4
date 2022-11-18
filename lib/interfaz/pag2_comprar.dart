import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:reto2_flutter/controlador/controladorGeneral.dart';
//StatefulWidget
class pag2_comprar extends StatefulWidget {
  const pag2_comprar({super.key});

  @override
  State<pag2_comprar> createState() => _pag2_comprarState();
}

class _pag2_comprarState extends State<pag2_comprar> {
  controladorGeneral control = Get.find();    
  final oCcy = NumberFormat("#,##0", "es_COL");
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10), 
        child: Container(
          child: Obx(() => ListView.builder(
            itemCount: control.prod.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image(image: NetworkImage(control.prod[index].image)),
                title: Text(control.prod[index].nombre + 
                "  |  "+ 
                oCcy.format(control.prod[index].precio)),
                trailing: Text(control.prod[index].cantidad.toString()),
                subtitle: Row(
                  children: [
                    
                    VerticalDivider(),
                    IconButton(onPressed: () {
                      int nuevaCantidad = control.prod[index].cantidad - 1;
                      if (nuevaCantidad < 0){
                        nuevaCantidad = 0;
                      }
                      control.cambiarCantidad(index, nuevaCantidad);
                      control.prod.refresh();
                    }, 
                    icon: Icon(Icons.remove_circle_outline_rounded)
                    ),
                    VerticalDivider(),
                    IconButton(onPressed: () {
                      int nuevaCantidad = control.prod[index].cantidad + 1;
                      control.cambiarCantidad(index, nuevaCantidad);
                      control.prod.refresh();
                    }, 
                    icon: Icon(Icons.add_circle_outline)
                    ),

                  ]),
              );
            },
          ),

    ),));
  }
}