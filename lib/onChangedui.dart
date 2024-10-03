import 'package:flutter/material.dart';

class OnchangeduiWidget extends StatefulWidget {
  const OnchangeduiWidget({super.key});

  @override
  State<OnchangeduiWidget> createState() => _OnchangeduiWidgetState();
}

class _OnchangeduiWidgetState extends State<OnchangeduiWidget> {
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    email=TextEditingController()
    ..addListener(
      (){
        setState(() {
          
        });
      }
    );

    password=TextEditingController()..addListener((){
      setState(() {
        
      });
    });
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    
    super.dispose();
  }

  void passwordMethod(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Password entered  ${password.text}') ));

  }

  void emailMethod(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Email Entered :${email.text}')));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,

  body:   Center(

    child: Column(
      children: [
      const   SizedBox(
          height: 100,

        ),


       SizedBox(
          width: 300,
          child:TextField(
            controller: email ,
            decoration:  InputDecoration(
              label: Text('Email')
            ),
          ),
        ),
      const  SizedBox(height: 30,),

     SizedBox(
          width: 300,
          child:TextField(
            obscureText: true,
            obscuringCharacter: '*',
            controller: password ,
            decoration:  InputDecoration(
              label: Text('Password')
            ),
          ),
        ),

     const   SizedBox(
          height: 50,
        ),

        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: (){
              String emaill= email.text.toString();
              String paswordd= password.text;
              print('Email is $emaill, Password is $paswordd');
              emailMethod();
              passwordMethod();
              


            }, child: Text('Login'))),
            SizedBox(height: 20,),

              SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: (){
              clear();

            }, child: Text('Clear ')))
      ],
    ),
  ),
    );
  }
  void clear(){
    email.clear();
    password.clear();
  }
}