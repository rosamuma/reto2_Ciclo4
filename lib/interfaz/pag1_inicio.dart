import 'package:flutter/material.dart';
//StatefulWidget
class pag1_inicio extends StatefulWidget {
  const pag1_inicio({super.key});

  @override
  State<pag1_inicio> createState() => _pag1_inicioState();
}

class _pag1_inicioState extends State<pag1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
          image: NetworkImage(
            "https://static.vecteezy.com/system/resources/previews/002/600/000/non_2x/shopping-cart-with-coin-money-line-and-fill-style-icon-free-vector.jpg", scale: 3)
            )),
    );
  }
}