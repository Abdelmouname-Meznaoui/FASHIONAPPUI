import 'package:flutter/material.dart';
import 'home.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
void initState (){
    super.initState();
    Future.delayed(Duration(seconds:4),(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context)=>splash2() ));
 });



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:Center(
        child:Image.asset('assets/images/logo.png'),
      )
 );
  }
}



class splash2 extends StatefulWidget {
  const splash2({super.key});

  @override
  State<splash2> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  @override
  void initState (){
    super.initState();
    Future.delayed(Duration(seconds:3),(){
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>home() ));
    });



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        body:Stack(

            children: [
              Center(child: Image.asset('assets/images/logo.png')),
              Positioned(
                left:100,
                right:100,
                top: 470,
                bottom:400,
                child: Image.asset('assets/images/underlogo.png'),
              ),

            ],

        )
    );
  }
}

