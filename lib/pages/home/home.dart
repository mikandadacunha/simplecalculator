import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double? primeiroValor, segundoValor, resultado;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Column( 
          
            mainAxisAlignment: MainAxisAlignment.center,
            children:
             [ TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value){
                primeiroValor = double.parse(value);
              },
        
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value){
                segundoValor = double.parse(value);
              },
        
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            FilledButton(onPressed: (){
              
                resultado = primeiroValor! + segundoValor!;
             

            }, child: 
            Text('+', style: 
            TextStyle(fontSize: 30) ,)),
            FilledButton(onPressed: (){
              
                resultado = primeiroValor! + segundoValor!;
             
            }, child: Text('*', style: 
            TextStyle(fontSize: 30) ,)),
            FilledButton(onPressed: (){
              
                resultado = primeiroValor! * segundoValor!;
              
            }, child: Text('/', style: TextStyle(fontSize: 30) ,)),
            FilledButton(onPressed: (){
              
                resultado = primeiroValor! / segundoValor!;
              
            }, child: Text('-', style:
            TextStyle(fontSize: 30) ,)),
             
              
              ],
            ),
              FilledButton(onPressed: (){
              setState(() {
                resultado = primeiroValor! / segundoValor!;
              });
            }, child: Text('=', style:
            TextStyle(fontSize: 30) ,)),

            SizedBox(height: 20,),
            Text('Resultado: $resultado', style: 
            TextStyle(fontSize: 25),)
          ],
          ),
        ),
      ),
    );
  }
}