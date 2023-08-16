import 'package:flutter/material.dart';
import 'route.dart';
class AddressPage extends StatefulWidget{
  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController _flat=TextEditingController();
  TextEditingController _street=TextEditingController();
  TextEditingController _pincode=TextEditingController();
  TextEditingController _number=TextEditingController();
  bool? isChecked=false;
  bool? isChecked1=false;
  bool? isChecked2=false;

  int? num=0;

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: (Text("Address")),
      ),
      body: SingleChildScrollView(
        child:Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text("Flat/Building/House No./Apartment No.",style: TextStyle(fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextField(controller:_flat,decoration: InputDecoration(enabledBorder:OutlineInputBorder(borderSide:BorderSide(width:1,color: Colors.black ) ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text("Street/Landmark",style: TextStyle(fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextField(controller:_street,decoration: InputDecoration(enabledBorder:OutlineInputBorder(borderSide:BorderSide(width:1,color: Colors.black ) ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("Pincode",style: TextStyle(fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(controller:_pincode,decoration: InputDecoration(enabledBorder:OutlineInputBorder(borderSide:BorderSide(width:1,color: Colors.black ) ))
                      ,validator:(_number){
                bool _ans=_number!.length<6&&_number!.contains(RegExp(r"^[1-9]{1}[0-9]{2}\\s{0, 1}[0-9]{3}$"));
                return _ans?null:"Please enter a valid pincode";
                })
                  ,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("Phone Number",style: TextStyle(fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(controller:_number,decoration: InputDecoration(enabledBorder:OutlineInputBorder(borderSide:BorderSide(width:1,color: Colors.black )))
                  ,validator:(_number){
                    bool _ans=_number!.length<10&&_number!.contains(RegExp(r"^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"));
                    return _ans?null:"Please enter a valid phone number";
                }),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
                  child: Text("Save Address",style: TextStyle(fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Checkbox(activeColor:Colors.orange,value: isChecked , onChanged:(newBool){
                        setState((){isChecked=newBool;});
                      }),
                      Text("Home"),
                      SizedBox(height: 10,),
                      Checkbox(activeColor:Colors.orange,value: isChecked1 , onChanged:(newBool){
                        setState((){isChecked1=newBool;});
                      }),
                      Text("Office"),
                      SizedBox(height: 10,),
                      Checkbox(activeColor:Colors.orange,value: isChecked2 , onChanged:(newBool){
                        setState((){isChecked2=newBool;});
                      }),
                      Text("Others"),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 200, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(3, 28, 8,28),
                        child: ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context,MyRoutes.paymentRoutes);
                        }, child: Text("Confirm Address",style: TextStyle(fontSize: 20),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 28, 2, 28),
                        child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, MyRoutes.cartRoutes);}, child: Text("Cancel",style: TextStyle(fontSize: 20),),style: ElevatedButton.styleFrom(primary: Colors.green),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),);
  }
}