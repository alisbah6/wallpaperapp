import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget{
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _value=0;
  int pay=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Payment"),),
      body:
      Padding(
        padding: const EdgeInsets.fromLTRB(8, 12, 8, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recommended",style: TextStyle(fontSize: 20),),
            Row(
              children: [
                Radio(value: 1, groupValue: _value, onChanged: (value){setState(() {_value=value!;});},),Text("Cash on Delivery"),
                Radio(value: 2, groupValue: _value, onChanged: (value){setState(() {_value=value!;});}),Text("UPI"),
                Radio(value: 3, groupValue: _value, onChanged: (value){setState(() {_value=value!;});}),Text("Google Pay"),
              ],
            ),
            Divider(height: 10,thickness: 2,),
            SizedBox(height: 8,),
            Text("Other Payment Methods",style: TextStyle(fontSize: 20),),
            Row(
              children: [
                Radio(value: 4, groupValue: pay, onChanged: (value){setState(() {
                  pay=value!;
                });}),Text("Cash on Delivery"),
              ],
            ),
            Row(
              children: [
                Radio(value: 5, groupValue: pay, onChanged: (value){setState(() {
                  pay=value!;
                });}),
                Text("Credit/Debit Card"),
              ],
            ),
            Row(
              children: [
                Radio(value: 6, groupValue: pay, onChanged: (value){setState(() {
                  pay=value!;
                });}),
                Text("Phone Pay/Google Pay/BHIM UPI"),
              ],
            ),
            Row(
              children: [
                Radio(value: 7, groupValue: pay, onChanged: (value){setState(() {
                  pay=value!;
                });}),
                Text("Payment/Wallet"),
              ],
            ),
            Row(
              children: [
                Radio(value: 8, groupValue: pay,onChanged: (value){setState(() {
                  pay=value!;
                });}),
                Text("Net Banking"),
              ],
            ),
            Row(
              children: [
                Radio(value: 9, groupValue: pay, onChanged: (value){setState(() {
                  pay=value!;
                });}),
                Text("EMI"),
              ],
            ),
            Divider(height: 10,thickness: 2,),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.card_giftcard),
                ),
                Text("Have A Gift Card",style: TextStyle(fontSize: 18),),
              ],
            ),
            Divider(height: 10,thickness: 5),
            SizedBox(height: 15,),
            Text("Product Details",style: TextStyle(fontSize: 18),),
            Divider(height: 10,thickness: 2),
            Row(
              children: [
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Quantity"),
                    SizedBox(height: 10,),
                    Text("Total Price"),
                    SizedBox(height: 10,),
                    Text("Discount"),
                    SizedBox(height: 10,),
                    Text("Convenience Fee"),
                    SizedBox(height: 10,),
                    Divider(height: 10,thickness: 5,),
                    SizedBox(height: 15,),
                    Text("Total Amount",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))
                  ],
                ),
                ),
                Flexible(child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("3"),
                    SizedBox(height: 10,),
                    Text("₹1050"),
                    SizedBox(height: 10,),
                    Text("-₹50"),
                    SizedBox(height: 10,),
                    Text("₹99"),
                    SizedBox(height: 10,),
                    Divider(height: 10,thickness: 5),
                    SizedBox(height: 15,),
                    Text("₹1000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,30,0,5),
              child: SizedBox(width:500,height:50,child: ElevatedButton(onPressed: (){},child: Text("Confirm Order"),),),
            )
          ],
        ),
      ),
    );
  }}