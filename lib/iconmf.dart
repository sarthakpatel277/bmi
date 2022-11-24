import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class iconmf extends StatelessWidget {
  iconmf(this.morf,this.mf);

  final IconData morf;
  final String mf;

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children: [
    
    Icon(morf,
    size: 80,),
    SizedBox(height: 10),
    Text(mf,
    style:TextStyle(color:Colors.white, 
     fontSize: 22

    ) ,),


    ],
    );
  }
}

