import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading:  IconButton(
          onPressed: () {},
          icon: Image.asset('assets/images/menuicon.png'),
         
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          )
        ],
        title:Text('Runway'),
        titleTextStyle:GoogleFonts.inter(
          fontWeight:FontWeight.bold ,
          fontSize: 18,
          letterSpacing:0,
          color: Colors.black,


         ),
          centerTitle:true,

        ) ,
      );








    }
}