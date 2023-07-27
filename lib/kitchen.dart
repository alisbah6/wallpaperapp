import 'package:catalogapp/best1.dart';
import 'package:flutter/gestures.dart';

import 'route.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'package:badges/badges.dart' as badges;

class KitchenPage extends StatefulWidget{
  @override
  State<KitchenPage> createState() => _KitchenPageState();
}

class _KitchenPageState extends State<KitchenPage> {
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
                child: Text("KItchen Wallpaper", style: TextStyle(fontSize: 25),),
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
                                icon: SizedBox(child: Image.asset("assets/images/best8.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Eurotex",urls:"assets/images/best8.png" , desc: "Eurotex Textured Vinyl PVC Coated 3D Block Wallpaper for Kitchen", price: "₹480")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/k1.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Home Walls",urls:"assets/images/k1.png" , desc: "Floral Light Color Wallpaper For Light Themed House", price: "₹250")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ), GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/k2.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Modern Days",urls:"assets/images/k2.png" , desc: "Brick Style Multi Colored Kitchen Wallpaper ", price: "₹300")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ), GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/k3.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Viral Wallpaper",urls:"assets/images/k3.png" , desc: "Box Style Different Print in one,Colorful and Suitable for all themes Wallpaper", price: "₹250")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ), GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/k4.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Imported Paper",urls:"assets/images/k4.png" , desc: "Imported Paper Dark Blue Floral Looking 3d Wallpaper, For Kitchen", price: "₹200")));},
                              ),
                              width: 190,
                              height: 190,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: IconButton(
                                icon: SizedBox(child: Image.asset("assets/images/k5.png",fit: BoxFit.fill),height: 170,width: 170,),
                                iconSize: 100,
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>best1page(name: "Rhombus",urls:"assets/images/k5.png" , desc: "Golden And White Pattern Wallpaper for Light Themed House", price: "₹350")));},
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
                        Text("Eurotex Textured Vinyl PVC Coated 3D Block Wallpaper for Kitchen  ", style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹480/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 50,),
                        Text("Home Walls, Floral Light Color Wallpaper For Kitchen",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹250/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Brick Style Multi Colored Kitchen Wallpaper By Modern Days",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹300/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),
                        SizedBox(height: 40,),
                        Text("Viral Wallpaper Box Style Different Print in One Wallpaper",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹250/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),SizedBox(height: 40,),
                        Text("Impoted Paper Dark Blue Floral Looking 3D Kitchen Wallpaper",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹200/per sq", style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(onPressed: () {setState(() {totalno=totalno+1;});}, child: Text("Add to Cart")),
                        ),SizedBox(height: 40,),
                        Text("Rhombus Golden And White Pattern Kitchen Wallpaper ",style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("₹350/per sq", style: TextStyle(fontSize: 20),),
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