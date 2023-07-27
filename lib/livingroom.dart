import 'package:catalogapp/best1.dart';
import 'package:flutter/gestures.dart';

import 'route.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'package:badges/badges.dart' as badges;

class LivingRoomPage extends StatefulWidget{
  @override
  State<LivingRoomPage> createState() => _LivingRoomPageState();
}

class _LivingRoomPageState extends State<LivingRoomPage> {
  int totalno=0;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpaper Catalog App"),
        actions:<Widget> [
          IconButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SearchPage())), icon: const Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Center(child: badges.Badge(badgeContent: Text(totalno.toString()),badgeStyle: badges.BadgeStyle(badgeColor: Colors.blue,),child:InkWell (onTap:(){Navigator.pushNamed(context, MyRoutes.cartRoutes);},child: Icon(Icons.shopping_bag_outlined),),),
            ),)
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Living Room Wallpaper", style: TextStyle(fontSize: 25),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/bbest1.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Imported Paper",urls:"assets/images/bbest1.png" , desc: "Imported Paper With Plastic Coated 3d Wallpaper, For Living Room", price: "₹250")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/best2.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Rhombus",urls:"assets/images/best2.png" , desc: "Rhombus 3D For Living Room Wallpaper,From Vikakhapatnam", price: "₹150")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/best3.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Home Walls",urls:"assets/images/best3.png" , desc: "Home Walls Modern 3D Wallpaper with Lavishing Design,For Living Room", price: "₹250")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/best4.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Fine Wallpaper",urls:"assets/images/best4.png" , desc: "Living Room Simple Designer Wallpaper for Simple And Elegant Home Decoration", price: "₹80")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/best5.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Imported Paper",urls:"assets/images/best5.png" , desc: "Color Solution 3D Lock Wall Sticker For , For Living Room", price: "₹350")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/best11.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Viral Wallpaper",urls:"assets/images/best11.png" , desc: "A Viral Living Room Wallpaper For Home Decor ", price: "₹200")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                        ]
                    ),),
                  Flexible(child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Imported Paper With Plastic Coated 3d Wallpaper", style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹250/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Rhombus 3D Living Room Wallpaper, from Visakhapatnam",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹150/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Home Walls Modern 3d Scenery Wallpaper , For Living Room" , style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹250/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Simple,Attractive Silver Golden Wavy Design Wallpaper", style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹80/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Color Solution Wallpaper 3D Look Wall Sticker for Living Room " , style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹350/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Grey Design Pattern Viral Wallpaper From Viral Wallpaper",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹200/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ]),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Welcome",style: TextStyle(fontSize: 30.0,),),decoration: BoxDecoration(color: Colors.blueGrey),),
            ListTile(title: Text("Simple Colors",style: TextStyle(fontSize: 18.0),),
              onTap:() {Navigator.pushNamed(context, MyRoutes.simpleRoutes);},),
            ListTile(title: Text("Living Room",style: TextStyle(fontSize: 18.0),),
              onTap:() {Navigator.pushNamed(context, MyRoutes.livingRoutes);},),
            ListTile(title: Text("Bedroom",style: TextStyle(fontSize: 18.0),),
              onTap:() {Navigator.pushNamed(context, MyRoutes.bedroomRoutes);},),
            ListTile(title: Text("Kitchen",style: TextStyle(fontSize: 18.0),),
              onTap:() {Navigator.pushNamed(context, MyRoutes.kitchenRoutes);},),
            ListTile(title: Text("Dinning Room",style: TextStyle(fontSize: 18.0),),
              onTap:() {Navigator.pushNamed(context, MyRoutes.diningRoutes);},),
            Container(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,190.0,0,0),
                      child: Column(
                        children: <Widget>[
                          Divider(),
                          ListTile(
                              leading: Icon(Icons.settings),
                              title: Text("Settings"), onTap:(){
                            Navigator.pushNamed(context, MyRoutes.settingPage);
                          }),
                          ListTile(
                            leading: Icon(Icons.logout_outlined),
                            title: Text("Log Out"),onTap: (){Navigator.pushNamed(context, MyRoutes.loginRoute);
                          },),
                          ListTile(
                            leading: Icon(Icons.help),
                            title: Text("Help"),
                          )
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}