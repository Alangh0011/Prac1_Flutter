import 'package:flutter/material.dart';

//import 'package:my_app/screen/home_screen.dart';
//import 'package:my_app/screen/new_home_screen.dart';
import 'package:my_app/screen/optimizado.dart';

void main() {
  runApp(const MyApp()); //app que quiere ejecutar
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key //key es ppcional
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //buiild siempre regresa un widget
    //widget padre es materialapp
    return const MaterialApp(
        debugShowCheckedModeBanner: false, //para quitar lo de la esquina

        home: Optimizado());
    //home: CounterScreen());
    //home: HomeScreen());
  }
}
