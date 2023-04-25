import 'route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpaper Catalog App"),
        actions:<Widget> [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,))
        ],
      ),
      body:
        SingleChildScrollView(
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextFormField(decoration: InputDecoration(hintText: "What's on your mind",labelText:"Search",icon: new Icon(Icons.search)),),
            ),
            Text("Best Selling Wallpaper", style: TextStyle(fontSize: 19),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Expanded(
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(0,4.0,0,3.0),
                   child: Image.asset("assets/images/best1.png",fit: BoxFit.cover),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(0,3.0,0,0),
                   child: Image.asset("assets/images/best2.png", fit:BoxFit.cover ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(0,3.0,0,0),
                   child: Image.asset("assets/images/best3.png"),
                 ),
               ],
             ),),
              Flexible(child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  children: [
                    Text("Imported Paper With Plastic Coated 3d Wallpaper, For HOME"),
                    ElevatedButton(onPressed: () {}, child: Text("Add to Cart")),
                    SizedBox(height:90.0,),
                    Text("Rhombus can be chosen 3D  Home Wallpaper,For anywhere  at Rs 150/square feet  in Visakhapatnam"),
                    ElevatedButton(onPressed: () {}, child: Text("Add to Cart")),
                    SizedBox(height:65.0,),
                    Text("Home Walls Modern 3d Wallpaper, For HOME"),
                    ElevatedButton(onPressed: () {}, child: Text("Add to Cart")),
                    SizedBox(height:40.0,),

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
            DrawerHeader(child: Text("Welcome,",style: TextStyle(fontSize: 30.0,),),decoration: BoxDecoration(color: Colors.red),),
            ListTile(title: Text("Living Room",style: TextStyle(fontSize: 18.0),),
            onTap:() {Navigator.pushNamed(context, MyRoutes.registerRoute);},),
            ListTile(title: Text("Bedroom",style: TextStyle(fontSize: 18.0),),
              onTap:() {Navigator.pushNamed(context, MyRoutes.registerRoute);},),
            ListTile(title: Text("Kitchen",style: TextStyle(fontSize: 18.0),),
              onTap:() {Navigator.pushNamed(context, MyRoutes.registerRoute);},),
            ListTile(title: Text("Dinning Room",style: TextStyle(fontSize: 18.0),),
              onTap:() {Navigator.pushNamed(context, MyRoutes.registerRoute);},),
            Container(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,70.0,0,0),
                      child: Column(
                        children: <Widget>[
                          Divider(),
                          ListTile(
                              leading: Icon(Icons.settings),
                              title: Text("Settings")),
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