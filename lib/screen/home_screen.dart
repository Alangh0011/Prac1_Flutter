import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //buildcontext sabe la informacion desendiente

    var fontsize30 = const TextStyle(fontSize: 30);
    int cont = 10;

    return Scaffold(
      //prepara el sitio para trabajar scaffold, fondo blanco utilizamos colors para cambiar eso
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Titulo'),
        elevation: 10.0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Numero de Clicks', style: fontsize30),
          Text('$cont', style: fontsize30),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_circle_sharp),
        onPressed: () {
          cont++;
        },
      ),
    ); //widget que queremos mostrar
  }
}
