import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'route.dart';
class best1page extends StatefulWidget{
  final String name;
  final String urls;
  final String desc;
  final String price;
  const best1page({super.key, required this.name,required this.urls, required this.desc,required this.price});
  @override
  State<best1page> createState() => _best1pageState();
}

class _best1pageState extends State<best1page> {
  int qty=0;
  int add=0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      appBar: AppBar(title: Text(widget.name),
    actions:<Widget> [
      IconButton(onPressed: (){}, icon:Icon(Icons.share)),
      IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border)),
      Padding(
    padding: const EdgeInsets.all(13.0),
    child: Center(child: badges.Badge(badgeContent: Text(add.toString()),badgeStyle: badges.BadgeStyle(badgeColor: Colors.blue,),child:InkWell (onTap:(){Navigator.pushNamed(context, MyRoutes.cartRoutes);},child: Icon(Icons.shopping_bag_outlined),),),
    ),)
    ],),
      body:ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
              child: SizedBox(child: Image.asset(widget.urls,fit: BoxFit.fill,),height: 400,width: 500,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.name, style: TextStyle(fontSize: 25),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(widget.desc, style: TextStyle(fontSize: 19),)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.price,style:TextStyle(fontSize: 22),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18,18, 18,5),
            child: ElevatedButton(onPressed: () {setState(() {add=qty+0;});}, child: Text("Add to Cart")),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
            child: ElevatedButton(onPressed: () {},child: Text("Whislist"),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Apply Coupons",style: TextStyle(decoration: TextDecoration.underline),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Quantity",style: TextStyle(fontSize: 18),),
          ),
          Row(
            children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ElevatedButton(onPressed: () {setState(() {qty=qty+1;});},child: Text("+",style: TextStyle(fontSize: 20),),),
               ),
              Text(qty.toString()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {setState(() {if(qty==0){qty=0;} else{qty=qty-1;};});},child: Text("-",style: TextStyle(fontSize: 20),)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8,0, 2),
            child: Text("Prodict Quality",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,0,2,3),
            child: Text("Fine work with good paper quality",style: TextStyle(fontSize:14 ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Customer Reviews",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(enabledBorder:OutlineInputBorder(borderSide:BorderSide(width:3,color: Colors.black ) )),keyboardType: TextInputType.multiline,maxLines: 5),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {},child: Text("Submit"),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {},child: Text("Cancel"),),
              ),
            ],
          ),
        ],
      )
    );
  }
}