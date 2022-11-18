import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:reto2_flutter/clases/productos.dart';


class controladorGeneral extends GetxController{
  final _posicion = 0.obs; //creo variable reactiva con observable (obs) que cambia
  final prod = <Productos>[].obs;

  void cambiarPosicion (int x){ //creo metodo para cambiar posicion (metodo set, cambia el valor del objeto)
    _posicion.value = x;
  }

  int get posicion => _posicion.value; //metodo que cambia la posicion (metodo get, envia el valor del objeto)


  void onInit(){
    
    Text("Zapatos");

    prod.add(Productos(
      1, 
      "Camiseta Adidas", 
      "https://assets.adidas.com/images/h_2000,f_auto,q_auto,fl_lossy,c_fill,g_auto/5075a262a3bb46efbd63ac5b011c7821_9366/Camiseta_Squadra_21_Negro_GN5720_01_laydown.jpg", 
      139990, 
      0));
    prod.add(Productos(
      2, 
      "Camiseta Nike", 
      "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/3bf5c605-4935-45c3-b397-b61b0faf571a/playera-sportswear-jxmSbW.png", 
      110990,  
      0));
    prod.add(Productos(
      3, 
      "Camiseta Polo", 
      "https://colorblue.vteximg.com.br/arquivos/ids/318110-600-764/polo-222901-azul-2.jpg?v=638008401531600000.png", 
      68900, 
      0));
    prod.add(Productos(
      4, 
      "Sudadera Adidas", 
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/41c0fbc4fe524eda8a30a93600e0d0ea_9366/Pantalon_Essentials_3_Rayas_Negro_DQ3078_01_laydown.jpg", 
      231950, 
      0));
    prod.add(Productos(
      5, 
      "Sudadera Nike", 
      "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/7aa8830d-9121-4bdf-b368-ccae21032dac/pro-dri-fit-vent-max-pantalon-de-entrenamiento-B9mFb9.png", 
      163899, 
      0));
    prod.add(Productos(
      6, 
      "Sudadera Rypley", 
      "https://i.linio.com/p/d80f3b6b95b215642d0836a78910b412-catalog.jpg", 
      69999, 
      0));
    prod.add(Productos(
      8, 
      "Zapatos Adidas", 
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/d641f18ab0144d80b6a9abb10116a6ce_9366/Tenis_Breaknet_Negro_FX8708_01_standard.jpg", 
      894562, 
      0));
    prod.add(Productos(
      7, 
      "Zapatos Nike", 
      "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/1464bbcf-1f99-487b-af28-384b3ecc9759/air-force-1-high-original-zapatillas-dTT6wk.png", 
      410990, 
      0));
    prod.add(Productos(
      9, 
      "Zapatos skechers", 
      "https://image.skechers.com/img/productimages/medium/149023_BKMT.jpg", 
      256987, 
      0));
    prod.add(Productos(
      10, 
      "Apple Watch Series 8", 
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgo1jEs8OAhdmR74XSwaPk1jdTd2ko0x9u8w&usqp=CAU", 
      2789990, 
      0));
    
    prod.add(Productos(
      11, 
      "Iphone 14 Pro Max", 
      "https://www.cellulardepot.com.co/wp-content/uploads/2022/06/iphone-13-pro-4.jpg", 
      6789541, 
      0));
    prod.add(Productos(
      12, 
      "Computador de Mesa", 
      "https://www.compulago.net/wp-content/uploads/erp/productos/2323%2006333927/1621307495760.jpg", 
      7895632, 
      0));
          
    super.onInit();
  }


  void cambiarCantidad (int posi, int nuevaCantidad){
    prod[posi].cantidad = nuevaCantidad;
  }

  int totalaPagar (){
    int total = 0;
    for (var i = 0; i < prod.length; i++) {
      total = total + prod[i].cantidad * prod[i].precio;
    }
    return total;
  }

  void limpiarTodo (){
    for (var i = 0; i < prod.length; i++) {
      prod[i].cantidad = 0;
    }
    totalaPagar();
  }
  

}