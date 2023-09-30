import 'package:flutter/material.dart';
import 'package:iteso_app/icons.dart';

class ItesoInfoPage extends StatelessWidget {
  const ItesoInfoPage({super.key});
  final String _info = "Puedes pedir información en rectoría";
  final String _comida = "Puedes encontrar comida en sus cafeterías";
  final String _direccion = "Se encuentra ubicado en Periferico Sur 8585";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
              "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              title: Text("ITESO, universidad de Guadalajara"),
              subtitle: Text("San Pedro Tlaquepaque, Jal"),
              trailing: LikeButton(
                iconData: Icons.thumb_up,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconWithSnackbar(
                    iconData: Icons.food_bank,
                    title: "Comida",
                    snackBarMsg: _comida),
                IconWithSnackbar(
                  iconData: Icons.info,
                  title: "Info",
                  snackBarMsg: _info,
                ),
                IconWithSnackbar(
                  iconData: Icons.directions,
                  title: "Dirección",
                  snackBarMsg: _direccion,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Text(
                """El ITESO, Universidad Jesuita de Guadalajara es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita que integra a ocho universidades en México."""),
          ),
        ],
      ),
    );
  }
}
