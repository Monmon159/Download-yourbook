import 'package:flutter/material.dart';
import 'package:myweather/loginn.dart';
import 'package:myweather/home.dart';
import 'package:myweather/logo.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
void main() async{
  FlutterNativeSplash.removeAfter( initialization);
  runApp(const myapp());
}
Future initialization(BuildContext? context)async{
await Future.delayed(Duration(seconds: 5));
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
      ,
      routes: {
        '/login':(context) {
          return login();
        },
        '/home':(context) {
          return homepage();
        },
        
          '/new':(context){
            return newpage();
          
        }
      },
      initialRoute: '/new',
    );
  }
} 

