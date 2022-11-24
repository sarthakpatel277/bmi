import 'package:bmi_calcutor/constant.dart';
import 'package:flutter/material.dart';
import 'inputpage.dart';



class screen2 extends StatelessWidget {
  

 screen2(this.feedback,this.result,this.score);
 
   final String result;
  final String feedback;
  final String score;
  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Your Result',
          style: num),
          
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35,vertical: 60),
            decoration: BoxDecoration(
            color: colour,
           borderRadius: BorderRadius.circular(10),),
            child: Column(children: [
            Text(result,
            style: font1, ),
            SizedBox(height: 20,),
            Text(score,style: font2,),
            SizedBox(height: 20,),
            Text(feedback,style:font3)
          ])
          ,),

         GestureDetector(
           onTap: (){
            Navigator.pop(context);
           },
           child: Container(
            color: Colors.red,
            width: double.infinity,
            height: 50,
            child: Center(child: Text('Re-calcuate')),
            
         
                 ),
         )
        ]),
      
    );
  }
}