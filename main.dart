import 'package:flutter/material.dart';

import './home_page.dart';

void main() => runApp(MyApp());
//=> is a shorthand for executing functions which only have one expression

class MyApp extends StatefulWidget {
  /*here extends is a way to use inheritance i.e here our base class MyApp
    is based on the host class here which is StatefulWidget, here our class 
    has all the features of the base class and some new features*/
  /*here with the StatefulWidget the user interface changes whenever the 
    internal or the external data of the widget changes*/
  //for ex: external data is data provided to the widget via constructor
  @override
  /*override extracts a warning from the compiler if the annotated method 
    doesn't actually override anything*/
  State<StatefulWidget> createState() => _MyAppState();
  //create state is a method returns a state object

}

/*reason for having two classes is when data is passed through the original 
  class, its state is re-written or re created in order to store data and 
  keep the state persistent, we define another class*/

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    /*here widget is a class, build is a function, buildcontext is a class 
      and context is an object defined in material.dart*/
    return MaterialApp(
      /*material app helps in rendering the combination of widgets into 
        a working app*/
      home: HomePage(),
    );
  }
}
