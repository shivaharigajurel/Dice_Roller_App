import 'dart:math';

import 'package:flutter/material.dart';
void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Poat Copy",
  home: HomePage(),

));


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

changeDice(){
setState(() {
   diceNumber = Random().nextInt(6)+1;
});

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Poat",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),),centerTitle: true,
        ),
    body: Column(children: [
      SizedBox(height: 30,),
      Image.asset("assets/$diceNumber.png",height: 250,width: 250,),
      SizedBox(height: 40,),
      MaterialButton(
        color: Color.fromARGB(255, 50, 11, 122),
        onPressed: changeDice,
        child: Center(
          child: Text("Roll",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
          ),),
        ),
        
        ),
      SizedBox(height: 180,),
      Text("Devloped By; Shivahari Gajurel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)
    ],),
    );
  }
}