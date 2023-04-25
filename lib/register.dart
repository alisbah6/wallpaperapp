import 'package:flutter/material.dart';
import 'route.dart';

class RegisterPage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Material(
      child:Column(
        children: [
          Image.asset("assets/images/undraw_both_sides_hbv3 (1).png"),
          Padding(padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
        TextFormField(decoration: InputDecoration(hintText:"Enter Username", labelText: "Username"),),
          TextFormField(decoration: InputDecoration(hintText:"Enter Mobile Number", labelText: "Mobile Number"),),
          TextFormField(decoration: InputDecoration(hintText:"Enter Email", labelText: "Email"),),
          TextFormField(decoration: InputDecoration(hintText:"Enter Password", labelText: "Password"),),
          TextFormField(decoration: InputDecoration(hintText:"Enter Password", labelText: "Confirm Password"),),
          SizedBox(height: 5.0,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, MyRoutes.loginRoute);
          }, child: Text("Register", style: TextStyle(fontSize: 20,), ))
        ],

      ))],
      )
       );
  }
}