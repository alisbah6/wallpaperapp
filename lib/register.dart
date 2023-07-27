import 'package:catalogapp/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'route.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegisterPage extends StatefulWidget{
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
FirebaseAuth _auth = FirebaseAuth.instance;
class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _passwordTextController=TextEditingController();
  TextEditingController _emailTextController=TextEditingController();

  double? _deviceHeight,_deviceweight;
  FirebaseService? _firebaseService;

  final GlobalKey<FormState> _formcheck = GlobalKey<FormState>();

  String? _name;
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
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: _deviceweight!* 0.05),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,mainAxisSize: MainAxisSize.max,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _titleWidget(),
                _registerForm(),
                _registerbutton(),
              ],
            ),

          ),
        ),
      ),
    );
  }
  Widget _titleWidget() {
    return Image.asset("assets/images/undraw_both_sides_hbv3 (1).png");
  }
  Widget _registerForm(){
    return Container(
      height: _deviceHeight!*0.25,
      key: _formcheck,
      child: Form(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.max,crossAxisAlignment: CrossAxisAlignment.center,
          children:[nameTextField(),
          emailTextField(),
          passwordTextField()],
      ),),
    );
  }
  Widget nameTextField(){
    return TextFormField(decoration: InputDecoration(hintText: "Name"),
    validator: (_value)=> _value!.length>0? null:"Please enter a name",
    onSaved: (_value){
      setState(() {
        _name=_value;
      });
    },);
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
  Widget _registerbutton(){
    return ElevatedButton(onPressed:(){
      FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value){Navigator.pushNamed(context, MyRoutes.loginRoute);});
    }, child:Text("Register",style: TextStyle(fontSize: 20),));
  }
  }

