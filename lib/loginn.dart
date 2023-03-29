import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formkey=GlobalKey<FormState>();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
   
  @override
  Widget build(BuildContext context) {
    MediaQueryData query=MediaQuery.of(context);
    return Scaffold(
      body: Form(
      key: _formkey,
        child: Center(
          child: Stack(
            children: [
                Image(
  image: AssetImage('assets/booka.jpg'),
  alignment: Alignment.center,
  height: double.infinity,
  width: double.infinity,
  fit: BoxFit.fill,
),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical:4),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('login',style: TextStyle(
                  fontSize: 50,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
                SizedBox(
                  width: query.size.width,
                  child:  TextFormField(
                      validator: (value) {
                        if(value==null||value.isEmpty==true){
                          return 'enter  email';
                        }else if(!value.contains('@gmail.com')){
                          return 'enter correct email';
                        }else{
                          return null;
                          } 
                      },
                      controller: email,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                        labelText:'email'
                      ),
                    ),
                  ),
                 SizedBox(height: 15,),
                SizedBox(
                  width: query.size.width,
                  child: TextFormField(
                    validator: (value) {
                        if(value==null||value.isEmpty==true){
                          return 'enter  password';
                        }else if(value.length<6){
                          return 'week password';
                        }else{
                          return null;
                          } 
                      },
                    controller: password,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),
                      labelText: 'password'
                    ),
                  ),
                ),
                 SizedBox(height: 50,),
                SizedBox(
                  height: 50,
                  width: 150,
                
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent
                    )
                    ,onPressed: (){
                     
                    if(_formkey.currentState!.validate()){
                      setState(() {
                         Navigator.of(context).pushReplacementNamed('/home');
                      });
                   
                    }
                  }, child: Text('login',style: TextStyle(color: Colors.black,fontSize: 18),)),
                ),
                
            ]),
              ),]
          ),
        ),
      ),
    );
  }
}