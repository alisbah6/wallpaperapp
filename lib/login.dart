import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'route.dart';
class LoginPage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Material(
      child: SingleChildScrollView(
      child:Column(
        children:[Image.asset("assets/images/login.png"),
          SizedBox(height: 10.0),
          Text("Welcome",style: TextStyle(fontSize: 25),),
          Text("Login",style: TextStyle(fontSize: 23) ,),
          SizedBox(height: 10.0),
        Padding(padding: const EdgeInsets.all(15.0),
        child:Column(
          children: [TextFormField( decoration: InputDecoration(hintText: "Enter username",labelText:"Username"),),
            TextFormField(
              obscureText: true,decoration: InputDecoration(hintText: "Enter password",labelText:"Password"),),
            SizedBox(height: 15.0,),
            ElevatedButton(child:Text("Login"),
              style: TextButton.styleFrom(minimumSize:Size(120, 40) )
              ,onPressed:() {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
              }, ),
            ElevatedButton (onPressed:()
            { Navigator.pushNamed(context, MyRoutes.registerRoute);
            }, child:Text("Sign in"),style: ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,))
          ],
        ))],
        ),
      ),);
  }
}