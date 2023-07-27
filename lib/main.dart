import 'package:catalogapp/bedroom.dart';
import 'package:catalogapp/cart.dart';
import 'package:catalogapp/dinning.dart';
import 'package:catalogapp/firebase_service.dart';
import 'package:catalogapp/kitchen.dart';
import 'package:catalogapp/livingroom.dart';
import 'package:catalogapp/settings.dart';
import 'package:catalogapp/simple.dart';
import 'package:flutter/material.dart';
import 'address.dart';
import 'home.dart';
import 'login.dart';
import 'register.dart';
import 'route.dart';
import 'payment.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  GetIt.instance.registerSingleton<FirebaseService>(FirebaseService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=> HomePage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.registerRoute:(context) => RegisterPage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.cartRoutes:(context)=>cartPage(),
        MyRoutes.livingRoutes:(context)=>LivingRoomPage(),
        MyRoutes.settingPage:(context)=>settingsPage(),
        MyRoutes.bedroomRoutes:(context)=>BedroomPage(),
        MyRoutes.kitchenRoutes:(context)=>KitchenPage(),
        MyRoutes.diningRoutes:(context)=>DiningRoomPage(),
        MyRoutes.simpleRoutes:(context)=>SimplePage(),
        MyRoutes.addressRoutes:(context)=>AddressPage(),
        MyRoutes.paymentRoutes:(context)=>PaymentPage(),
      },
    );
  }
}