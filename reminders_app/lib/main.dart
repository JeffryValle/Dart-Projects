

import 'dart:async';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}


class Myapp extends StatefulWidget {
  const Myapp({super.key});
  
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  String mensaje = '';

  void saludo(){
    mensaje = 'Jeffry Espinal Valle - 20212000761';
    Timer(Duration(seconds: 1), (){
      setState(() {
        mensaje = '';
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70,),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Welcome to ", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ), textAlign: TextAlign.center,),
                    Text("Reminders", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ), textAlign: TextAlign.center,),
                  ],
                ),
            ),
            SizedBox(height: 40,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.amber,
                    width: 55,
                    height: 55,
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              color: Colors.green,
                              size: 20,
                            ),
                            Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.green,
                              size: 20,
                              ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.flag,
                              color: Colors.green,
                              size: 20,
                              ),
                            Icon(
                              Icons.near_me_rounded,
                              color: Colors.green,
                              size: 20,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    
                    // color: Colors.blue,
                    width: 240,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4.0,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Quick Creation",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.5
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Simple type in your list, ask Siri, or add a reminder from your Calendar App.",
                          style: TextStyle(
                              fontSize: 11.5,
                              color: Colors.black45
                          ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.amber,
                    width: 55,
                    height: 55,
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.list_alt_sharp,
                              color: Colors.orange,
                              size: 40,
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                  Container(
                    
                    // color: Colors.blue,
                    width: 240,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4.0,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Grocery Shopping",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.5
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Create a Grocery List that automatically sorts items you add by category.",
                          style: TextStyle(
                              fontSize: 11.5,
                              color: Colors.black45
                          ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.green,
                    width: 55,
                    height: 55,
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.group,
                              color: Colors.amber.shade300,
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    
                    // color: Colors.blue,
                    width: 240,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4.0,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Easy Sharing",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.5
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Collaborate on a list, and even assign individual tasks.",
                          style: TextStyle(
                              fontSize: 11.5,
                              color: Colors.black45
                          ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.amber,
                    width: 55,
                    height: 55,
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.topic_rounded,
                              color: Colors.blue,
                              size: 20,
                            ),
                            Icon(
                              Icons.topic_rounded,
                              color: Colors.blue,
                              size: 20,
                              ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.topic_rounded,
                              color: Colors.blue,
                              size: 20,
                              ),
                            Icon(
                              Icons.topic_rounded,
                              color: Colors.blue,
                              size: 20,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    width: 240,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4.0,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Powerful Organization",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.5
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Create new lists to match your needs, categorize reminders with tags, and manage reminders around your workflow whit Smart Lists.",
                          style: TextStyle(
                              fontSize: 11.5,
                              color: Colors.black45
                          ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80,),
            Container(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                iconAlignment: IconAlignment.end,
                onPressed: (){
                  setState(() {
                    
                  });
                  saludo();
                }, 
                child: Text("Continue", 
                style: TextStyle(
                  color: Colors.white
                ),)),
            ),
            SizedBox(height: 10,),
            if(mensaje.isNotEmpty)
                Text(
                  mensaje,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                  )
                ),
          ],

        )
      ),
    );
  }
}

