import 'package:flutter/material.dart';
import 'package:mymodernflutteruis/Controllerui.dart';
import 'package:mymodernflutteruis/InnerShadows.dart';
import 'package:mymodernflutteruis/LoginPage.dart';
import 'package:mymodernflutteruis/LoginWidgetThree.dart';
import 'package:mymodernflutteruis/LoginWidgettwo.dart';
import 'package:mymodernflutteruis/Loginmodernui.dart';
import 'package:mymodernflutteruis/Second.dart';
import 'package:mymodernflutteruis/Tokyo.dart';
import 'package:mymodernflutteruis/Tokyolandscape.dart';
import 'package:mymodernflutteruis/contaier.dart';
import 'package:mymodernflutteruis/controllervalidatorfbui.dart';
import 'package:mymodernflutteruis/deleiveryapp.dart';
import 'package:mymodernflutteruis/deleiverylandscape.dart';
import 'package:mymodernflutteruis/onChangedui.dart';
import 'package:mymodernflutteruis/popularui.dart';
import 'package:mymodernflutteruis/validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Fluter ui's "),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return fbuiwidget();



  // return  OrientationBuilder(builder: (context, orientation)
  //  => orientation== Orientation.portrait?DeleiveyWidget():DeleivryLandscape());


      // return  OrientationBuilder(builder: (context, orientation) {return orientation==
      // Orientation.portrait?TokyoWidget():TokyoLandscapeWidget();
      // }
      // );

    


    
}


}