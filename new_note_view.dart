// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Shownote extends StatelessWidget {
  final String text;

  Shownote(this.text); //defining a constructor
  /*a constructor is a part of the class structure and it is responsible for 
  allocating memory for objects*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      /*here we have used padding, Padding is used to create space around 
        an element's content, here it is the text we are further displaying */
      padding: const EdgeInsets.all(9.0),
      /*EdgeInsets specifies offsets in terms of visual edges, here in all
          directions */
      child: Card(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
