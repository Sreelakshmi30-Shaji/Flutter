// ignore_for_file: avoid_print

import 'package:flutter/material.dart';      ///imports the necessary Flutter package for building the user interface.

main(){        ///entry point 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
   const MyApp({Key? key}) :super(key: key);

   @override
   Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.greenAccent),
      home: const HomeScreen(),
    );
   }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
  return  Scaffold(
  backgroundColor: Colors.cyan,
  // appBar: AppBar(
  //   title: const Text('My App'),
  // ),
 body: SafeArea(
 child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Expanded(
      flex: 3,
      child: Container(
        color: Colors.deepOrange,
      //width: 600 ,
      child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      const Text('Hello Flutter , Welcome !',
      textAlign:TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
               TextButton(
              onPressed: () {
               print('TextButton Clicked');
       },
        child: const Text('Click Me'),
         ),
         IconButton(
          onPressed: () {
            print('IconButton Clicked');
          },
          icon: const Icon(Icons.mic),
          ),
        ],
      ),
      
         ElevatedButton(onPressed: (){
          print('Elevated Button Clicked');
         },
          child: const Text('Click Me'),
          ),
        ],
       ),
      ),
    ),
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.green,width: 5),
        ),
        child: const Center(
          child: Text('Hello World!'),
        ),
        // color: Colors.green,
        ),
    ),
    Expanded(
      child: Container(
        color: Colors.orangeAccent,
      //width: 600 ,
      child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      const Text('Hello Flutter , Welcome !',
      textAlign:TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
               TextButton(
              onPressed: () {
               print('TextButton Clicked');
       },
        child: const Text('Click Me'),
         ),
         IconButton(
          onPressed: () {
            print('IconButton Clicked');
          },
          icon: const Icon(Icons.mic),
          ),
        ],
      ),
      
         ElevatedButton(onPressed: (){
          print('Elevated Button Clicked');
         },
          child: const Text('Click Me'),
          ),
        ],
       ),
      ),
    ),
 ],
 ),
   ),
  );
 }
}