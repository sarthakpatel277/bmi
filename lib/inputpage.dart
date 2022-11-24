import 'package:bmi_calcutor/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import ' montainer.dart';
import 'iconmf.dart';
import 'screen2.dart';
import 'constant.dart';
import 'calculator_brain.dart';
import 'package:circle_button/circle_button.dart';


 enum Xender{
    male,female
  }

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);
 
  
  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  CircleButton Button(Icon i,int j){
     return CircleButton(
    onTap: () {
      setState(() {
        if(j==1)
        {
          w++;
        }
         if(j==2)
        {
          w--;
        }
         if(j==3)
        {
          v++;
        }
         if(j==4)
        {
          v--;
        }
      });
    },

    tooltip: 'Circle Button',
    width: 40.0,
    height: 40.0,
    borderColor: Colors.white,
    borderWidth: 1.0,
    borderStyle: BorderStyle.solid,
    backgroundColor: Colors.grey[800],
    child: i
  );
   }
  Color m =inactivecolour;
  Color f = inactivecolour;
  int  height=120;
  int w=60;
  int v=22;

 
  void gender(Xender) {
    if (Xender.male) {
      if (m == colour) {
        m = inactivecolour;
      } else {
        m = colour;
      }
      f=inactivecolour;
    }
    else if(Xender.female)
    {
      if (f == colour) {
        f = inactivecolour;
      } else {
        f = colour;
      }
      m=inactivecolour;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Caculator'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                gender(Xender.male);
                              });
                            },
                            child: Montainer(
                                m, iconmf(FontAwesomeIcons.mars, 'Male')))),
                    Expanded(
                        flex: 1,
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                gender(Xender.female);
                              });
                            },
                            child: Montainer(
                                f, iconmf(FontAwesomeIcons.venus, 'Female'))))
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                     margin: EdgeInsets.all(15),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       
                       children: [
                            Text('HEIGHT',
                            style: s),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline:TextBaseline.alphabetic,
                              children: [
                                Text(height.toString(),
                                style:num),
                                Text('cm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                                ),),
                                

                              ],),
                              Slider(value:height.toDouble(),max: 220,min: 120,activeColor: Colors.red,inactiveColor: Colors.white,
                               onChanged:(double news)
                               {
                                 setState(() 
                                 {
                                    height=news.round();
                                 });
                               }

                               
                               )

                       ]),
                    decoration: BoxDecoration(
                      color: colour,
                      borderRadius:BorderRadius.circular(10)
                      
                    ),
                  )
                      ),
             
             
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Montainer(
                            colour,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('weight',
                                style: s),
                                Text(w.toString(),style: num,),
  //                               Row(
  //                                 mainAxisAlignment: MainAxisAlignment.center,
  //                                 children: [
  //  Button(Icon(FontAwesomeIcons.plus),1),

  // SizedBox(width: 10),

  // Button(Icon(FontAwesomeIcons.minus),2)


                                    
                                    
  //                                 ],
  //                               ),
                       TextField(
                    
                       ),
                               
                              ],
                            ))),
                    Expanded(
                        child: Montainer(
                            colour,  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('AGE',
                                style: s),
                                Text(v.toString(),style: num),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    
         Button(Icon(FontAwesomeIcons.plus),3),
        SizedBox(width: 10),
          Button(Icon(FontAwesomeIcons.minus),4),
  
                                  ],
                                ),
                               
                              ],
                            
                            
                      )  )),
                  
                  
                  ],
                ),
              ),
               GestureDetector(
                 onTap: (){
                   setState(() {
                      calculator_brain c= calculator_brain(height, w);
                     Navigator.push(context, MaterialPageRoute(
                       builder: (context){return screen2(
                         c.getfeedback(),c.getresult(),c.getscore()
                       );}));
                     
                    

                   });
                 },
                child: Container(
                  child: Center(child: Text('Calculate',
                  style: TextStyle(fontSize: 20),)),
                  
                  color: Colors.red[500],
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: bottombuttonheight,
                ),
              )
            ],
          ),
        ));
  }
}
