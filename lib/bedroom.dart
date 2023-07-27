import 'package:catalogapp/best1.dart';
import 'package:flutter/gestures.dart';

import 'route.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'package:badges/badges.dart' as badges;

class BedroomPage extends StatefulWidget{
  @override
  State<BedroomPage> createState() => _BedroomPageState();
}

class _BedroomPageState extends State<BedroomPage> {
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
            child: Center(child: badges.Badge(badgeContent: Text(totalno.toString()), badgeStyle: badges.BadgeStyle(badgeColor: Colors.blue,),child:InkWell (onTap:(){Navigator.pushNamed(context, MyRoutes.cartRoutes);},child: Icon(Icons.shopping_bag_outlined),),),
            ),)
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Bedroom Wallpaper", style: TextStyle(fontSize: 25),),
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
                                icon: SizedBox(child: Image.asset("assets/images/best6.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Home Decor",urls:"assets/images/best6.png" , desc: "Imported Paper With Plastic Coated 3d Wallpaper, For Bedroom", price: "₹150")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/b1.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Color Solution",urls:"assets/images/b1.png" , desc: "Color Solution Wallpaper With Marble Design ,Royal Look", price: "₹350")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/b2.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Eurotex",urls:"assets/images/b2.png" , desc: "Eurotex Textured Vinyl PVC Coated 3D Bedroom Wallpaper", price: "₹480")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/b3.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Modern Days",urls:"assets/images/b3.png" , desc: "Modern Days Simple LIght Blue Floral Wallpaper ", price: "₹250")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/b4.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Rhombus",urls:"assets/images/b4.png" , desc: "Light Design Attractive White Wallpaper,Simple Elegant", price: "₹150")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/b5.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Home Walls",urls:"assets/images/b5.png" , desc: "Yellow With White Floral Design Bedroom Wallpaper ", price: "₹350")));},
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
                        Text("Home Decor Imported Paper 3d Bedroom Wallpaper",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹150/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 30,),
                        Text("Color Solution Wallpaper With Marble Design ,Royal Look " , style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹350/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Eurotex Textured Vinyl PVC Coated 3D Bedroom Wallpaper", style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹480/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Modern Days Simple Light BLue Floral Wallpaper",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹250/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 44,),
                        Text("Simple Stripes Light Design Attractive White Wallpaper",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹150/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 35,),
                        Text("Home Walls Yellow with white Floral Design Bedroom Wallpaper",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹150/per sq", style: TextStyle(fontSize: 20),),
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