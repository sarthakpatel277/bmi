import 'package:flutter/material.dart';

class calculator_brain{
 
  calculator_brain(this.height,this.weight);
 
  final int height;
   final int weight;
 
 
   
  
   
 
 
 String getscore()
 { 
   double _bmiscore=(weight*10000)/(height*height);
    return _bmiscore.toStringAsFixed(1);
 }
 double getscores()
 { 
       double _bmiscore=(weight*10000)/(height*height);
       return _bmiscore;
 }
 


 String  getfeedback()
 { 
  if(getscores()>=25)
   {
     return 'you must lose your weight';
   }

   else if(getscores()>=18)
   {
     return 'you are on the track ';
   }
   else 
   {
     return 'you should gain some weight';
   }
 }

 String getresult()
 {
   if(getscores()>=25)
   {
     String s= 'Overweight';
     return s;
   }

   else if(getscores()>=18)
   {
     String v=
      'Normal';
      return v;
   }
   else
   { String k='Underweight';
     return k;
   }
 }

 

 }

  
 