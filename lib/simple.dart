import 'package:catalogapp/best1.dart';
import 'package:flutter/gestures.dart';

import 'route.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'package:badges/badges.dart' as badges;

class SimplePage extends StatefulWidget{
  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
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
                child: Text("Simple Wallpaper", style: TextStyle(fontSize: 25),),
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
                                icon: SizedBox(child: Image.asset("assets/images/s1.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Home Decor",urls:"assets/images/s1.png" , desc: "Simple White Color Wallpaper for Home,Office", price: "₹150")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/s2.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Modern Days",urls:"assets/images/s2.png" , desc: "Light Brown With White Strips Wallpaper,Elegant Looking", price: "₹180")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/s3.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Modern Days",urls:"assets/images/s3.png" , desc: "Dark Color Wallpaper From Modern Days,For Dark Theme Houses", price: "₹120")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/s4.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Rapid Design",urls:"assets/images/s4.png" , desc: "Simple Pattern,Simple Color,Elegent and Attractive Wallpaper ", price: "₹210")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/s5.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Import Paper",urls:"assets/images/s5.png" , desc: "PLain Blue Wallpaper For House Walls and Offices", price: "₹190")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/s6.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Rhombus",urls:"assets/images/s6.png" , desc: "Grey and White Patch Pattern For Home Walls And Office ", price: "₹220")));},
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
                        Text("Simple White Color Wallpaper", style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹150/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 55,),
                        Text("Light Brown With White Straps Wallpaper ",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹180/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 60,),
                        Text("Dark Color Wallpaper From Modern Days  " , style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹120/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 60,),
                        Text("Simple Pattern,Simple Color Wallpaper", style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹210/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 60,),
                        Text("Plain Blue House,office Wallpaper",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹190/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 60,),
                        Text("Simple Grey and White Patch Pattern Wallpaper ",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹220/per sq", style: TextStyle(fontSize: 20),),
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