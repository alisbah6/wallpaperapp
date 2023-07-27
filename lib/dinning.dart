import 'package:catalogapp/best1.dart';
import 'package:flutter/gestures.dart';

import 'route.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'package:badges/badges.dart' as badges;

class DiningRoomPage extends StatefulWidget{
  @override
  State<DiningRoomPage> createState() => _DiningRoomPageState();
}

class _DiningRoomPageState extends State<DiningRoomPage> {
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
                child: Text("Dining Room Wallpaper", style: TextStyle(fontSize: 25),),
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
                                icon: SizedBox(child: Image.asset("assets/images/best7.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Rapid Design",urls:"assets/images/best7.png" , desc: "HD RAPID DESIGN 3D Large Self Adhesive Decorative Wallpaper for Dinnig Room", price: "₹150")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ), GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/d2.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Home Decor",urls:"assets/images/d2.png" , desc: "Dard Brown Pattern,Royal Looking Wallpaper", price: "₹350")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ), GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/d3.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Viral Wallpaper",urls:"assets/images/d3.png" , desc: "Ancient View Looking Black and White Wallpaper", price: "₹450")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ), GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/d4.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Modern Days",urls:"assets/images/d4.png" , desc: "Black and White Brick Style Dining Room Wallpaper", price: "₹200")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ), GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/d5.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Rapid Design",urls:"assets/images/d5.png" , desc: "Imported Light Grey 3D  Wallpaper with Exclusive Design", price: "₹450")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ), GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/d6.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Modern Days",urls:"assets/images/d6.png" , desc: "Simple Design Light Colour Wallpaper For light Colour Theme House", price: "₹250")));},
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
                        Text("HD RAPID DESIGN 3D Large Self Adhesive Decorative Wallpaper",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹150/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 50,),
                        Text("Home Decor Dark Brown Patten Dining Room Wallpaper" , style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹350/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Ancient View Looking Black And White Wallpaper", style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹450/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Modern Days Black And White Brick Style Wallpaper ",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹200/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Imported Light Grey 3D Wallpaper BY Rapid Design",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹450/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Simple Design , Light Color Dining Room Wallpaper  ",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹250/per sq", style: TextStyle(fontSize: 20),),
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