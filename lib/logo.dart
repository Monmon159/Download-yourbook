import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class newpage extends StatefulWidget {
  const newpage({super.key});

  @override
  State<newpage> createState() => _newpageState();
}

class _newpageState extends State<newpage> {
  void initState() {
    // TODO: implement initState

    
    super.initState();
    Timer(Duration(seconds: 8),(() {
      Navigator.of(context).pushReplacementNamed('/login');
      
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
             Image(
  image: AssetImage('assets/booka.jpg'),
  alignment: Alignment.center,
  height: double.infinity,
  width: double.infinity,
  fit: BoxFit.fill,
),
          Center(child: Text('Welcome Reader !',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 50),)),
        ],
      )
      
    );
  }
 
}