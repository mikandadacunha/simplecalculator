import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: 
      Text('Simple Calculator')),
      body: Center( 
        child: Container( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(keyboardType: 
              TextInputType.number, 
              onChanged: (value){
                

              },)
            ],
          ),
          

      ),
      
      ),
    );


  }
}