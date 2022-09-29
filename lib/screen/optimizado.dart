import 'package:flutter/material.dart';

class Optimizado extends StatefulWidget {
  const Optimizado({Key? key}) : super(key: key);

  @override
  State<Optimizado> createState() => _OptimizadoState();
}

class _OptimizadoState extends State<Optimizado> {
  int cont = 10;

  void increase() {
    cont++;
    setState(() {});
  }

  void decrease() {
    cont--;
    setState(() {});
  }

  void reset() {
    cont = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    ); //widget que queremos mostrar
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions(
      {Key? key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.resetFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .spaceEvenly, //centra los botones, o spaceEvenly esta perfecto para quitar los sizedbox
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_neg_1),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.trip_origin_rounded),
          onPressed: () => resetFn(), //flecha es un return
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () =>
              increaseFn(), //optimizacion,manda a llamar el setsatet, setstate internamente manda a llamar el cont
        ),
      ],
    );
  }
}
