import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget{
  const SearchPage({Key?key}): super(key:key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Map<String,dynamic>> _inserach=[
    {"title":"Color Solution Wallpaper With Marble Design ,Royal Look"},
    {"title":"Imported Paper With Plastic Coated 3d Wallpaper"},
    {"title":"Rhombus 3D Living Room Wallpaper, from Visakhapatnam"},
    {"title":"Home Walls Modern 3d Scenery Wallpaper , For Living Room"},
    {"title":"Color Solution Wallpaper 3D Look Wall Sticker for Living Room "},
    {"title":"Home Decor Imported Paper 3d Bedroom Wallpaper"},
    {"title":"HD RAPID DESIGN 3D Decorative Wallpaper for Dinnig Room "},
    {"title":"Color Solution Wallpaper Floral 3D Look Wall Sticker for Living Room"},
    {"title":"Eurotex Textured 3D Block Wallpaper for Kitchen "},
    {"title":"Simple Pattern,Simple Color Wallpaper for Home and Office"},
    {"title":"Imported Light Grey 3D Wallpaper BY Rapid Design"},



  ];
  List<Map<String,dynamic>>_foundserach=[];
   @override
   void initState() {
    _foundserach=_inserach;
    super.initState();
  }
  runfilter(String enteredKeyword){
     List<Map<String,dynamic>> results=[];
     if(enteredKeyword.isEmpty){
       results=_inserach;
     }
     else{
       results=_inserach.where((users)=>users['title'].toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
     }
     setState(() {
       _foundserach=results;
     });

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:  TextField(onChanged: (value)=>runfilter(value),
    decoration: InputDecoration(hintText: "Search",suffixIcon: Icon(Icons.search))),
    ),
      body:Column(children: [
      Expanded(child: _foundserach.isNotEmpty?ListView.builder(itemCount: _foundserach.length,itemBuilder:(context,index)=>Card(
        margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),child: ListTile(leading: CircleAvatar(backgroundColor: Colors.transparent,),
        title: Text(_foundserach[index]['title']),
      ),
      ),
      )
          :Text("No Result Found")
      ),
    ]),
    );
  }
}