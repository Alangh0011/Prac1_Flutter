import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int cont = 10;

  @override
  Widget build(BuildContext context) {
    //buildcontext sabe la informacion desendiente

    var fontsize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      //prepara el sitio para trabajar scaffold, fondo blanco utilizamos colors para cambiar eso
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Numero de Clicks', style: fontsize30),
          Text('$cont', style: fontsize30),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment
            .center, //centra los botones, o spaceEvenly esta perfecto para quitar los sizedbox
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_neg_1),
            onPressed: () => setState(() => cont--),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.trip_origin_rounded),
            onPressed: () {
              cont = 0;
              setState(
                  () {}); //funcion que redibuja el widget, lo actualiza si hay cambio
            },
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => setState(() =>
                cont++), //optimizacion,manda a llamar el setsatet, setstate internamente manda a llamar el cont
          ),
        ],
      ),
    ); //widget que queremos mostrar
  }
}
