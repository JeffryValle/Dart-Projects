
import 'dart:async';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
 
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => HomePage();
}

class HomePage extends State<MyApp> {

  int counter = 0;
  String mensaje = '';


  void increment() {
    setState(() { counter++; });
    
  } 
  void decrement() {
    if (counter <= 0) {
      mensaje = "No se permiten valores negativos";
      nada();
      return ;
    }
    counter--;
  }
  void reset() => counter = 0;

  void nada() {
    Timer(Duration(seconds: 2), (){
      setState(() {
        mensaje = '';
      });
    });
  }

  final estilo = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w400
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Application", style: TextStyle(
            color: Colors.white,
            fontFamily: 'Raleway'
          ),),
          backgroundColor: Colors.blue,
          centerTitle: true,
          shadowColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hiciste Click estas veces", style: estilo.copyWith(
                color: Colors.black,
                fontSize: 20,
              )
              ),
              Text('$counter', style: TextStyle(
                fontSize: 20
              ),),
              if(mensaje.isNotEmpty)
                Text(
                  mensaje,
                  style: estilo.copyWith(
                    color: Colors.red,
                    fontSize: 16
                  ),
                )
              
            ],
          ),
        ),
        backgroundColor: Colors.white,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.add,
                color: Colors.white,
                ),
              
              onPressed: () {
                
                setState(() {
                  increment();
                });
                  
            
              },),
              
              SizedBox(height: 15),

              FloatingActionButton(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  ),
                onPressed: () {
                  
                  setState(() {
                    decrement();
                  });
                    
              
                },
              ),

              SizedBox(height: 15),
              
              FloatingActionButton(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.restart_alt_outlined,
                  color: Colors.white,
                  ),
                onPressed: () {
                  
                  setState(() {
                    reset();
                  });
                    
              
                },
              )
          ],
        ),
      ), // Proporciona la estructura de la aplicación
    );
  }
}