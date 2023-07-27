import 'package:catalogapp/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'route.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}
FirebaseAuth _auth = FirebaseAuth.instance;
class _LoginPageState extends State<LoginPage> {
  TextEditingController _passwordTextController=TextEditingController();
  TextEditingController _emailTextController=TextEditingController();
  double? _deviceHeight,_deviceweight;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  FirebaseService?_firebaseService;
  String? _email;
  String? _password;
  @override
  void initState() {
    super.initState();
    _firebaseService=GetIt.instance.get<FirebaseService>();
  }


  @override
  Widget build (BuildContext context) {
    _deviceHeight=MediaQuery.of(context).size.height;
    _deviceweight=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _deviceweight!* 0.05),
          child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,mainAxisSize: MainAxisSize.max,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _titleWidget(),
            _loginForm(),
            _loginbutton(),
            _registerlink(),
          ],),),
        ),
      ),
    );
  }
  Widget _titleWidget() {
    return Image.asset("assets/images/login.png");
  }
  Widget _loginForm(){
    return Container(
      height: _deviceHeight!* 0.18,child: Form(
      key: _formkey,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.max,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          emailTextField(),
          passwordTextField(),
        ],
      ),),
    );
  }
  Widget _registerlink(){
    return GestureDetector(
      onTap: () =>Navigator.pushNamed(context,MyRoutes.registerRoute),
      child: Text("Create a new account",style: TextStyle(decoration: TextDecoration.underline),),
    );
  }
  Widget emailTextField(){
    return TextFormField(controller:_emailTextController,decoration: InputDecoration(hintText: "Email"),
    onSaved: (_value){
      setState(() {
        _email=_value;
      });
    },
      validator: (_value){
      bool _result=_value!.contains(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));
      return _result?null:"Please enter valid email" ;
      },
    );
  }
  Widget passwordTextField(){
    return TextFormField(controller:_passwordTextController,obscureText:true,decoration: InputDecoration(hintText: "Password"),
      onSaved: (_value){
        setState(() {
          _password=_value;
        });
      },
      validator: (_value)=> _value!.length>6?null:"Please enter a valid password length"
    );
  }
  Widget _loginbutton(){
    return ElevatedButton(onPressed:_loginUser, child:Text("Login",style: TextStyle(fontSize: 20),));
  }
  void _loginUser()async{
    if(_formkey.currentState!.validate()){
      _formkey.currentState!.save();
      FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value){Navigator.pushNamed(context, MyRoutes.homeRoute);});

    }

  }
}