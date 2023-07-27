import 'package:flutter/material.dart';

class settingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child:
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 80, 0,0),
        child: Column(
          children: [
            Text("Settings" , style: TextStyle(fontSize: 25),),
            Image.asset("assets/images/settings.png"),
            ListTile(title:Text("Orders ",) ,onTap:() {},),
            ListTile(title:Text("Payments ",) ,onTap:() {},),
            ListTile(title: Text("Earn & Redeem"),onTap: () {},),
            ListTile(title: Text("Manage Account"),onTap: () {},),
            ListTile(title: Text("Wishlist"),onTap: () {},),
            ListTile(title: Text("About us"),onTap: (){},),
            ListTile(title: Text("Term of use"), onTap: (){},),
            ListTile(title: Text("Privacy"), onTap: (){},),
          ],
      )),
    );
  }
}