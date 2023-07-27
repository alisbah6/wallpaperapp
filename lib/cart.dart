import 'package:catalogapp/route.dart';
import 'package:flutter/material.dart';


class cartPage extends StatefulWidget{
  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("Shopping Bag"),
      ),
      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(child: Image.asset("assets/images/b1.png",fit: BoxFit.fill),height: 170,),
                      )),
                      Flexible(child:Column(
                      children: [
                          Text("Color Solution Wallpaper With Marble Design ,Royal Look ",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Quantity : 2",style: TextStyle(fontSize: 16),),
                        ),
                        ElevatedButton(onPressed: () {}, child:Text("Remove"),style:ElevatedButton.styleFrom(backgroundColor:Colors.red ))
                      ],
                      ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(child: Image.asset("assets/images/d2.png",fit: BoxFit.fill),height: 170,),
                      )),
                      Flexible(child:Column(
                        children: [
                          Text("Home Decor Dark Brown Patten Dining Room Wallpaper",style: TextStyle(fontSize: 16),),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Quantity 1",style: TextStyle(fontSize: 16),),
                          ),
                          ElevatedButton(onPressed: () {}, child:Text("Remove"),style:ElevatedButton.styleFrom(backgroundColor:Colors.red ),)
                        ],
                      ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,330,0,2),
                  child: Container(
                    child:ElevatedButton.icon(
                      label: Text('Place Order',style: TextStyle(fontSize: 20),),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {Navigator.pushNamed(context,MyRoutes.addressRoutes);},),
                  width: 380,
                    height: 50,
                  ),
                )
              ],
            ),
          ),
    );
  }
}