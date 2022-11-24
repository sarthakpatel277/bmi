import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Montainer extends StatelessWidget {
  Montainer(@required this.c,@optionalTypeArgs this.icon);
  
  final Color c;
  final Widget icon;
 

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child:icon,
      margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
         color: c,
         borderRadius: BorderRadius.circular(10)
    ),
   );
  }
}